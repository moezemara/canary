Context
This is a war-themed OpenTibia Canary server where levels reach into the millions within months. PvP is the core feature. This plan covers four interconnected systems built on top of the confirmed quadratic exp formula, with all bonuses unified into a transparent per-player multiplier display.
Confirmed Exp Formula
cpp// player.cpp — quadratic
uint64_t Player::getExpForLevel(const uint32_t level) {
    if (level <= 1) { return 0; }
    const uint64_t lv = level - 1ULL;
    return (100ULL * lv * lv) / 3ULL;
}
// Level-up cost at level L = (200L - 100) / 3 ≈ 200L/3  (grows linearly)
```

---

## Files to Create / Modify

| Action | File | Purpose |
|--------|------|---------|
| **CREATE** | `data/libs/systems/exp_bonus.lua` | Shared bonus framework + `!exprate` breakdown helper |
| **CREATE** | `data/scripts/creaturescripts/player/pvp_experience.lua` | PvP kill exp reward |
| **CREATE** | `data/scripts/globalevents/guild_leaderboard.lua` | Weekly guild kill ranking + personal snapshot |
| **CREATE** | `data/scripts/globalevents/server_reference_level.lua` | Updates top-10 average level every 30 min |
| **CREATE** | `data/scripts/talkactions/player/exprate.lua` | `!exprate` / `!bonuses` command |
| **CREATE** | `data/migrations/XXXX_guild_kill_stats.sql` | DB migration for guild kill tracking |
| **MODIFY** | `data/scripts/creaturescripts/player/login.lua` | Register PvPExperience event + load guild bonus from DB |
| **MODIFY** | `data/events/scripts/player.lua` | Inject catch-up multiplier + unified bonus framework into `onGainExperience` |

---

---

## System 1: Unified Exp Multiplier Framework

### Design Philosophy
Every bonus feeds into one transparent per-player breakdown. The final formula for monster exp:
```
finalExp = baseMonsterExp × baseRate × staminaMult × (1 + additiveSum)
Where additiveSum = sum of all additive bonuses (guild, catch-up, store boost, etc.)
PvP exp uses the same stamina and guild bonuses but its own level-difference multiplier instead of catch-up.
Bonus Storage
All variable bonuses stored in player KV under "exp-bonus" scope:
luaplayer:kv():scoped("exp-bonus"):set("guild",   0.10)   -- written by guild leaderboard event
player:kv():scoped("exp-bonus"):set("catchup", 6.21)   -- written by catch-up system (updated live)
Stamina (getFinalBonusStamina()), store XP boost (getXpBoostPercent()), and base rate (getFinalBaseRateExperience()) are read live each time (they already have their own storage in C++).
data/libs/systems/exp_bonus.lua (new shared library)
luaExpBonus = {}

-- Returns full breakdown table + effective total multiplier
function ExpBonus.getBreakdown(player)
    local staminaMult  = player:getFinalBonusStamina()
    local baseRate     = player:getFinalBaseRateExperience()
    local staminaMins  = player:getStamina()

    local staminaLabel
    if staminaMins > 2340 and player:isPremium() then
        staminaLabel = string.format("green/premium, %dh%dm left",
            math.floor(staminaMins/60), staminaMins % 60)
    elseif staminaMins <= 840 then
        staminaLabel = string.format("orange/low, %dh%dm left",
            math.floor(staminaMins/60), staminaMins % 60)
    else
        staminaLabel = string.format("normal, %dh%dm left",
            math.floor(staminaMins/60), staminaMins % 60)
    end

    local bonuses = {
        { name="Base Rate",  value=baseRate,    type="multiplier", desc=string.format("%.0fx",      baseRate) },
        { name="Stamina",    value=staminaMult, type="multiplier", desc=string.format("%.1fx (%s)", staminaMult, staminaLabel) },
    }

    -- Additive KV bonuses
    local kvBonusKeys = {
        { key="guild",   label="Guild Rank Bonus"       },
        { key="catchup", label="New Player Catch-Up"    },
    }
    local kvScope = player:kv():scoped("exp-bonus")
    for _, entry in ipairs(kvBonusKeys) do
        local val = kvScope:get(entry.key) or 0
        if val > 0 then
            bonuses[#bonuses+1] = {
                name  = entry.label,
                value = val,
                type  = "additive",
                desc  = string.format("+%.1f%%", val * 100),
            }
        end
    end

    -- Store / Daily XP Boost (live)
    local xpBoostPct  = player:getXpBoostPercent() or 0
    local xpBoostTime = player:getXpBoostTime()    or 0
    if xpBoostTime > 0 and xpBoostPct > 0 then
        bonuses[#bonuses+1] = {
            name  = "XP Boost",
            value = xpBoostPct / 100,
            type  = "additive",
            desc  = string.format("+%d%% (%dm remaining)", xpBoostPct, math.floor(xpBoostTime/60)),
        }
    end

    -- Compute effective total
    local additiveSum = 0
    for _, b in ipairs(bonuses) do
        if b.type == "additive" then additiveSum = additiveSum + b.value end
    end
    local effectiveTotal = baseRate * staminaMult * (1 + additiveSum)

    return bonuses, effectiveTotal
end

-- Returns only the additive sum (used in onGainExperience hot path)
function ExpBonus.getAdditiveSum(player)
    local sum = 0
    local kvScope = player:kv():scoped("exp-bonus")
    for _, key in ipairs({"guild", "catchup"}) do
        sum = sum + (kvScope:get(key) or 0)
    end
    local xpBoostPct  = player:getXpBoostPercent() or 0
    local xpBoostTime = player:getXpBoostTime()    or 0
    if xpBoostTime > 0 then
        sum = sum + (xpBoostPct / 100)
    end
    return sum
end
Updated onGainExperience (data/events/scripts/player.lua)
Replace the final return line:
lua-- OLD (current line ~601):
return (exp * (1 + xpBoostPercent / 100 + lowLevelBonusExp / 100)) * staminaBonusXp * baseRateExp

-- NEW:
-- xpBoostPercent and lowLevelBonusExp are now subsumed by ExpBonus.getAdditiveSum()
-- Catch-up multiplier applies only to monster kills
if target and target:isMonster() then
    local catchUpMult = CatchUp.getMultiplier(self)  -- updates KV for display, returns mult
    exp = math.floor(exp * catchUpMult)
end
local additiveSum = ExpBonus.getAdditiveSum(self)
return (exp * (1 + additiveSum)) * staminaBonusXp * baseRateExp

useStaminaXpBoost(self) and useConcoctionTime(self) remain untouched — they're side-effect calls, not multipliers.

!exprate Talkaction (data/scripts/talkactions/player/exprate.lua)
lualocal expRateTA = TalkAction("!exprate", "!bonuses", "!xprate")

function expRateTA.onSay(player, words, param)
    local bonuses, effectiveTotal = ExpBonus.getBreakdown(player)
    local lines = { "--- Your EXP Multipliers ---" }
    for _, b in ipairs(bonuses) do
        lines[#lines+1] = string.format("  %-24s %s", b.name..":", b.desc)
    end
    lines[#lines+1] = string.rep("-", 34)
    lines[#lines+1] = string.format("  %-24s %.1fx", "Effective Total:", effectiveTotal)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table.concat(lines, "\n"))
    return false
end

expRateTA:register()
```

**Example output (top-1 guild, green stamina, new player, store boost):**
```
--- Your EXP Multipliers ---
  Base Rate:               1000x
  Stamina:                 1.5x (green/premium, 41h 20m left)
  Guild Rank Bonus:        +20.0% (diminished to +14.1% for 30 members)
  New Player Catch-Up:     +298.1% (level 10K vs reference 100K)
  XP Boost:                +50% (90m remaining)
──────────────────────────────────
  Effective Total:         6,621.0x

System 2: New Player Catch-Up (Monster Exp Only)
Reference Level (GlobalEvent every 30 min)
lua-- data/scripts/globalevents/server_reference_level.lua
local players = Game.getPlayers()
table.sort(players, function(a,b) return a:getLevel() > b:getLevel() end)
local sample = math.min(10, #players)
local sum = 0
for i = 1, sample do sum = sum + players[i]:getLevel() end
local avg = sample > 0 and math.floor(sum / sample) or 1
kv.scoped("server"):set("reference_level", avg)
Catch-Up Multiplier — Always Dynamic, No Threshold
luaCatchUp = {}

-- Config
local CATCH_UP_EXP = 0.3  -- exponent; tune to adjust steepness

function CatchUp.getMultiplier(player)
    local referenceLevel = kv.scoped("server"):get("reference_level") or 1
    local playerLevel    = player:getLevel()

    if playerLevel >= referenceLevel then
        player:kv():scoped("exp-bonus"):set("catchup", 0)
        return 1.0
    end

    -- Always-on smooth curve: multiplier = (reference / playerLevel)^exp
    local mult = math.pow(referenceLevel / playerLevel, CATCH_UP_EXP)

    -- Store the additive portion for display breakdown (mult - 1.0 = the "bonus")
    player:kv():scoped("exp-bonus"):set("catchup", mult - 1.0)

    return mult
end
Calibrated values (reference level = 1,000,000, exponent = 0.3):
Player LevelCatch-Up MultAdditive Bonus163.1×+6,210%1,0007.9×+694%10,0004.0×+298%100,0002.0×+100%300,0001.44×+44%500,0001.23×+23%700,0001.11×+11%900,0001.03×+3%≥ 1,000,0001.0×+0%
The bonus fades continuously — never abruptly stops, never penalises players above reference.

System 3: Guild Kill Leaderboard + Personal Weekly Snapshot
No Minimum Victim Level
The minimum victim level gate is removed entirely. The formula self-regulates naturally:

Killing a level 1 victim: pool ≈ 33 exp × 0.1× level floor = ~3 exp — not worth farming
Pool scales linearly with victim level, so there is zero incentive to attack low-level players
The 0.1× level multiplier floor already serves as the natural deterrent for killing down

This means any player can be a valid PvP target. No artificial threshold that would become unrealistic as reference levels grow into the millions.
Kill Tracking (in pvp_experience.lua, per qualifying kill)
lualocal attackerGuild = attacker:getGuild()
if attackerGuild then
    local weekKey = string.format("gkills.w%d.g%d", math.floor(os.time() / 604800), attackerGuild:getId())
    kv.set(weekKey, (kv.get(weekKey) or 0) + 1)
end

Uses global kv (confirmed at kv_functions.cpp:18). No DB write per kill — KV is fast, in-memory, and persists to DB periodically.

For leaderboard ranking, kill counts are also stored to DB for reliable SQL ordering:
sql-- guild_kill_stats table (see migrations)
INSERT INTO guild_kill_stats (guild_id, week, kills) VALUES (?, ?, 1)
ON DUPLICATE KEY UPDATE kills = kills + 1;
Guild Rank Bonuses — Top 10 with Ranges
RankRaw Bonus1st+20%2nd+15%3rd+10%4th–6th+7%7th–10th+4%
Anti-Monopoly: Size Penalty Starts at 15, Hard Cap at 30
lualocal MAX_GUILD_SIZE  = 30
local OPTIMAL_SIZE    = 15   -- full bonus at/below this size
local DIMINISH_FACTOR = 0.5  -- exponent for penalty above optimal

local function getEffectiveBonus(rawBonus, guild)
    local size = guild:getMemberCount()
    local factor = math.max(1.0, math.pow(size / OPTIMAL_SIZE, DIMINISH_FACTOR))
    return rawBonus / factor
end
Effective bonuses at different guild sizes (1st place, raw +20%):
Guild SizeFactorEffective 1st Bonus≤ 151.000+20.0%201.155+17.3%251.291+15.5%30 (max)1.414+14.1%
Weekly Snapshot: Personal Per-Player Bonus
GlobalEvent runs every Sunday at 00:00:

Query top 10 guilds by kills this week
For each ranked guild, compute each member's effective bonus (with size diminishment)
Write to DB column exp_bonus_guild on all guild members (including offline)
For online members, also set KV immediately

lua-- data/scripts/globalevents/guild_leaderboard.lua
local rankBonuses = { 0.20, 0.15, 0.10, 0.07, 0.07, 0.07, 0.04, 0.04, 0.04, 0.04 }
local currentWeek = math.floor(os.time() / 604800)

local result = db.storeQuery(string.format(
    "SELECT guild_id, kills FROM guild_kill_stats WHERE week = %d ORDER BY kills DESC LIMIT 10",
    currentWeek
))

-- Reset all guilds to 0 first (anyone not in top 10 loses bonus)
db.asyncQuery("UPDATE players SET exp_bonus_guild = 0")

local rank = 1
while result and rank <= 10 do
    local guildId  = Result.getNumber(result, "guild_id")
    local guild    = Guild(guildId)
    local rawBonus = rankBonuses[rank]
    local effBonus = guild and getEffectiveBonus(rawBonus, guild) or rawBonus

    -- Write to all members in DB (covers offline players)
    db.asyncQuery(string.format(
        "UPDATE players SET exp_bonus_guild = %.4f WHERE guild_id = %d",
        effBonus, guildId
    ))

    -- Immediately update online members' KV
    if guild then
        for _, member in ipairs(guild:getMembersOnline()) do
            member:kv():scoped("exp-bonus"):set("guild", effBonus)
        end
    end

    rank = rank + 1
    if not Result.next(result) then break end
end
if result then Result.free(result) end

Game.broadcastMessage(
    "Guild War Leaderboard has reset! Top guilds earn EXP bonuses for the week. Type !exprate to see yours.",
    MESSAGE_EVENT_ADVANCE
)
On player login (in login.lua):
lualocal guildBonus = db.storeQuery("SELECT exp_bonus_guild FROM players WHERE id = " .. player:getGuid())
local bonus = 0
if guildBonus then
    bonus = Result.getFloat(guildBonus, "exp_bonus_guild")
    Result.free(guildBonus)
end
player:kv():scoped("exp-bonus"):set("guild", bonus)
Key rules:

✅ In top guild at week start → personal bonus stored → keeps it if they leave mid-week
✅ Joins guild mid-week → no bonus (weren't there at snapshot time)
✅ Next Sunday → old bonuses cleared, new snapshot stored for new ranks

Hard Guild Size Cap (Lua enforcement)
lua-- Add to guild invite acceptance logic (talkaction or NPC)
if guild:getMemberCount() >= MAX_GUILD_SIZE then
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
        string.format("This guild is full (%d/%d members). Max guild size is %d.",
            guild:getMemberCount(), MAX_GUILD_SIZE, MAX_GUILD_SIZE))
    return false
end

System 4: PvP Kill Experience
Base Pool — Fully Dynamic, No Cap
lualocal levelUpCost = Game.getExperienceForLevel(victimLevel + 1) - Game.getExperienceForLevel(victimLevel)
local basePool    = levelUpCost * POOL_FRACTION   -- no cap, scales naturally with the formula
POOL_FRACTION = 0.10 — 10% of victim's level-up cost.
Victim LevelLevel-Up CostBase Pool1006,6336631,00066,6336,66310,000666,63366,663100,0006,666,633666,6631,000,00066,666,6336,666,6635,000,000333,333,30033,333,330
Level Difference Multiplier
lualocal ratio    = victimLevel / attackerLevel
local levelMult = math.max(0.1, math.min(3.0, ratio ^ 1.5))
AttackerVictimMultiplier502003.0× (capped)1002002.83×1502001.54×2002001.00×4002000.35×1,0002000.10× (floored)500,0001,000,0002.83×800,0001,000,0001.40×1,500,0001,000,0000.54×
Damage Contribution
luacontributionRatio = attackerDamage / totalPlayerDamage
-- Must be ≥ 5% to be eligible (no leeching)
-- Only player attackers counted (monsters/summons excluded)
No Minimum Victim Level
No gate on victim level — formula self-regulates. Killing low-level players yields negligible exp.
War Bonus
lualocal warMult = isInWar(attacker, victim) and 1.5 or 1.0
-- isInWar() is the confirmed global function (global_functions.cpp:51)
Guild Leaderboard Bonus (on PvP too)
lualocal guildBonus = 1.0 + (attacker:kv():scoped("exp-bonus"):get("guild") or 0)
Stamina Drain Per Kill
lualocal newStamina = math.max(0, attacker:getStamina() - STAMINA_DRAIN_PER_KILL)
attacker:setStamina(newStamina)
-- STAMINA_DRAIN_PER_KILL = 5 minutes
-- 36 kills: stamina drops from green (2520) to normal (2340)
-- 176 kills: stamina drops from normal to orange (840) — exp halved
Final PvP Formula
lualocal finalExp = math.floor(
    basePool
    * contributionRatio
    * levelMult
    * warMult
    * guildBonus
    * attacker:getFinalBaseRateExperience()
    * attacker:getFinalBonusStamina()
)
attacker:addExperience(finalExp, SHOW_EXP_TEXT)
-- setStamina drain after
-- guild kill count increment after
```

### Anti-Abuse
| Check | Logic |
|---|---|
| Min damage contribution | `ratio < 5%` → skip that attacker |
| Same IP | `attacker:getIp() == victim:getIp()` → skip |
| Same account | `attacker:getAccountId() == victim:getAccountId()` → skip |

> No minimum victim level needed — the formula's own scaling makes farming low-level players produce negligible rewards (level 1 victim → ~3 exp max).

---

## Kill Reward Simulation Cases
*(server_rate = 1.0 unless noted; stamina = 1.0× unless noted; single attacker = 100% contribution unless noted)*

| # | Scenario | Attacker | Victim | Pool | LvlMult | WarMult | GuildBonus | Stamina | Rate | **Final Exp** |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | Equal levels, solo, no war | 200 | 200 | 1,330 | 1.000 | 1.0 | 1.00 | 1.0 | 1 | **1,330** |
| 2 | Low kills high (100 vs 500) | 100 | 500 | 3,330 | 3.000 | 1.0 | 1.00 | 1.0 | 1 | **9,990** |
| 3 | High kills low (500 vs 100) | 500 | 100 | 663 | 0.100 | 1.0 | 1.00 | 1.0 | 1 | **66** |
| 4 | Equal, war, 1st guild, green stamina | 200 | 200 | 1,330 | 1.000 | 1.5 | 1.20 | 1.5 | 1 | **3,591** |
| 5a | 3-player war kill: A 50% dmg, lvl 1K | 1,000 | 1,000 | 6,663 | 1.000 | 1.5 | 1.00 | 1.0 | 1 | **4,997** |
| 5b | Same kill: B 30% dmg | 1,000 | 1,000 | 6,663 | 1.000 | 1.5 | 1.00 | 1.0 | 1 | **2,998** |
| 5c | Same kill: C 20% dmg | 1,000 | 1,000 | 6,663 | 1.000 | 1.5 | 1.00 | 1.0 | 1 | **1,998** |
| 6 | Mid-level, rate×1000, green, 1st guild | 10,000 | 10,000 | 66,663 | 1.000 | 1.5 | 1.20 | 1.5 | 1,000 | **179,990,910** |
| 7 | 500K kills 1M, solo | 500,000 | 1,000,000 | 6,666,663 | 2.828 | 1.0 | 1.00 | 1.0 | 1 | **18,856,171** |
| 8 | 500K kills 1M, war + 1st guild + green | 500,000 | 1,000,000 | 6,666,663 | 2.828 | 1.5 | 1.20 | 1.5 | 1 | **50,911,662** |
| 9 | Top kills lowbie: 1M kills 100K | 1,000,000 | 100,000 | 666,663 | 0.100 | 1.0 | 1.00 | 1.0 | 1 | **66,666** |
| 10 | Equal levels, depleted stamina | 200 | 200 | 1,330 | 1.000 | 1.0 | 1.00 | 0.5 | 1 | **665** |
| 11a | 2-player war: A 70%, 50K vs 100K | 50,000 | 100,000 | 666,663 | 2.828 | 1.5 | 1.00 | 1.0 | 1 | **1,979,888** |
| 11b | Same kill: B 30% | 50,000 | 100,000 | 666,663 | 2.828 | 1.5 | 1.00 | 1.0 | 1 | **848,523** |
| 12 | 1M vs 1M, war, rate×10K, 1st guild, green | 1,000,000 | 1,000,000 | 6,666,663 | 1.000 | 1.5 | 1.20 | 1.5 | 10,000 | **179,999,909,100** |
| 13 | Underdog: 1K kills 1M, war, rate×1K, 1st guild, green | 1,000 | 1,000,000 | 6,666,663 | 3.000 | 1.5 | 1.20 | 1.5 | 1,000 | **53,999,972,730** |

### Stamina Depletion Simulation (200 kills, A=1000, V=1000, solo, no war, rate=1)
```
Base exp per kill (pre-stamina): 6,663
Kills 1–36   (green 1.5×):  9,994 exp each  | sub-total: 359,818
Kills 37–176 (normal 1.0×): 6,663 exp each  | sub-total: 932,820
Kills 177+   (orange 0.5×): 3,331 exp each  | diminished from here on

Total after 200 kills: ~1,372,639 exp
Stamina: starts 2520 → green until kill 36 (2340) → orange after kill 176 (840)

Database Migrations
data/migrations/XXXX_guild_kill_stats.sql
sql-- Guild weekly kill tracking for leaderboard ranking
CREATE TABLE IF NOT EXISTS `guild_kill_stats` (
    `guild_id`  INT UNSIGNED NOT NULL,
    `week`      INT UNSIGNED NOT NULL,
    `kills`     INT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (`guild_id`, `week`),
    INDEX `idx_week_kills` (`week`, `kills` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Personal guild exp bonus per player (set at weekly snapshot)
ALTER TABLE `players`
    ADD COLUMN `exp_bonus_guild` FLOAT NOT NULL DEFAULT 0;

Config Summary
pvp_experience.lua
lualocal PvPExpConfig = {
    POOL_FRACTION           = 0.10,   -- 10% of victim's level-up cost (fully dynamic, no cap)
    LEVEL_DIFF_EXPONENT     = 1.5,    -- level gap curve steepness
    MAX_LEVEL_MULT          = 3.0,    -- cap: max bonus for killing up
    MIN_LEVEL_MULT          = 0.1,    -- floor: min penalty for killing down
    WAR_BONUS_MULT          = 1.5,    -- +50% in guild war
    MIN_DAMAGE_CONTRIBUTION = 0.05,   -- 5% min damage share to qualify
    STAMINA_DRAIN_PER_KILL  = 5,      -- minutes drained per PvP kill
    SHOW_EXP_TEXT           = true,   -- show floating exp text
    INELIGIBLE_KILLER_SKULLS= {},     -- empty = no skull restrictions
}
guild_leaderboard.lua
lualocal GuildConfig = {
    RANK_BONUSES    = { 0.20, 0.15, 0.10, 0.07, 0.07, 0.07, 0.04, 0.04, 0.04, 0.04 },
    OPTIMAL_SIZE    = 15,    -- full bonus at/below this
    DIMINISH_FACTOR = 0.5,   -- penalty exponent above optimal
    MAX_GUILD_SIZE  = 30,    -- hard cap enforced in Lua
}
catch_up (inline in server_reference_level.lua or shared lib)
lualocal CatchUpConfig = {
    CATCH_UP_EXP   = 0.3,   -- exponent; higher = steeper bonus for new players
    REFERENCE_SAMPLE = 10,  -- average top-N players' levels
}

API References (All Verified)
APISourceNotesGame.getExperienceForLevel(n)game_functions.cpp:48Uses confirmed quadratic formulacreature:getDamageMap()creature_functions.cpp:78{[id]={total,ticks}}player:getKillers(false)player_functionsCreature[] arrayisInWar(cid, target)global_functions.cpp:51Global function, not a methodplayer:addExperience(exp, text)player_functionsTriggers onGainExperienceplayer:getStamina() / setStamina()player_functionsIn minutes; max 2520player:getFinalBaseRateExperience()player.lua:333Stages + event schedulerplayer:getFinalBonusStamina()player.lua:3490.5 / 1.0 / 1.5player:getXpBoostPercent()player_functions.cpp:298Store/daily boost %player:getXpBoostTime()player_functions.cpp:298Remaining secondsplayer:getAccountId()player_functions.cpp:54nil if 0player:getIp()player_functionsNumeric IPplayer:kv():scoped("exp-bonus"):set/getKV storePersists across restartskv.scoped("server"):set/getkv_functions.cpp:18Global KV — accessed as kv (not GlobalKV)guild:getMembersOnline()guild_functionsOnline members only

Login Registration (data/scripts/creaturescripts/player/login.lua)
lua-- After existing registerEvent calls (line 162):
player:registerEvent("PvPExperience")

-- Load personal guild bonus from DB snapshot:
local res = db.storeQuery("SELECT exp_bonus_guild FROM players WHERE id = " .. player:getGuid())
if res then
    player:kv():scoped("exp-bonus"):set("guild", Result.getFloat(res, "exp_bonus_guild"))
    Result.free(res)
end

Verification Plan
Unified Display

!exprate with no bonuses → base rate + stamina only
!exprate in top-1 guild → shows +20% (diminished by size)
!exprate as new player → shows large catch-up %
!exprate with store boost active → shows XP boost line
Effective total matches manual formula

PvP Exp Cases (match simulation table above)

Cases 1–3: Equal/up/down kills match expected values ±1 exp (floor rounding)
Case 4: War + guild + stamina stack correctly
Cases 5a–5c: 3-player split sums to full pool (50+30+20=100%)
Cases 7–8: Million-level values match
Case 9: Top kills lowbie → very low exp (0.10× floor, small pool) — natural deterrent confirmed
Kill a level 1 character → pool ≈ 33 × 0.10 = ~3 exp (confirm negligible)
Case 10: Orange stamina halves the reward
Same IP kill → 0 exp; same account → 0 exp

Catch-Up System

Player at level 1, reference 1M → mult ≈ 63×
Player at level 100K, reference 1M → mult ≈ 2.0×
Player at level 1M, reference 1M → mult = 1.0×, KV bonus set to 0
Reference updates every 30 min as top players grow

Guild Leaderboard

Guild A has most kills at week reset → all members get +20% (diminished by size)
Member leaves guild mid-week → still has bonus until next Sunday
New member joins mid-week → does NOT get bonus
Guild size 30 → effective bonus = raw/1.414
Guild size 15 → full bonus (no penalty)
Join guild over 30 members → rejected

Stamina as Natural Cap

Kill 36 times → stamina falls below 2340 → exp drops from 1.5× to 1.0×
Kill 176 total times → stamina ≤ 840 → exp drops to 0.5×
Log off overnight → stamina recovers → full rate next session