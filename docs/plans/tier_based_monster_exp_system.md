Plan: Tier-Based Monster EXP System
Context
Current system: monster exp = hardcoded XML value × catch-up × effective rate. This doesn't scale with server progression; monsters feel arbitrary; catch-up is a blunt multiplier.

Goal: Tier-based dynamic formula mirroring PvP. Hunting stays viable at all player levels but PvP remains the primary progression path. Bot farming limited by a PvP-linked Hunting Stamina bar.

Core rule: Only tiered monsters (those with an expTier flag) are affected. Every other monster remains completely unchanged — exp, difficulty, loot, respawn, everything.

System 1 — Monster Tier Registry & EXP Formula
File: data/libs/systems/monster_tiers.lua (CREATE)
Global state
MonsterTiers = {}
Config table (internal)
CONFIG = {
    BASE_LEVELS  = 10,      -- Top player killing top-tier monster = 10 levels per kill
    COST_FACTOR  = 200/3,   -- Linear exp cost approx (same constant as PvP formula)
    MIN_DMG_PCT  = 0.10,    -- Player must deal >= 10% of monster max HP to qualify
}
Justification for BASE_LEVELS = 10:

Top player (level = referenceLevel) vs top-tier monster (expTier = 1.0): ratio = 1.0
levelsGained = 1.0 × 10 = 10 levels/kill — a meaningful but not overwhelming reward
At full green stamina (effectiveRate = 1.5): finalLevels ≈ 15/kill for top-tier content
A player at 50% of reference on top-tier: ratio = 2.0 → 20 levels/kill
A player at 1% of reference on tier-0.01: ratio = 1.0 → 10 levels (just graduated to tier)
A level-1000 player in a 20M world on tier-0.01 (200k effective): ratio = 200 → 2,000 levels/kill — massive early catch-up that decays as they level
Registry table (internal)
local registry = {}  -- [lowercase_monster_name] = expTier fraction (0.0–1.0)
Populated at the bottom of the file. Example spread for a 20M reference world:

Monster Name	expTier	Effective Level (20M ref)	Designed For
cave rat	0.003	60,000	New players
wolf	0.005	100,000	New players
cyclops	0.015	300,000	Early grind
dragon	0.05	1,000,000	Low-mid
hydra	0.10	2,000,000	Mid
medusa	0.25	5,000,000	Mid-high
demon	0.50	10,000,000	High
apocalypse	0.75	15,000,000	Near-top
[top monster]	1.00	20,000,000	Top
Functions
MonsterTiers.isTiered(monsterName)

Input:  monsterName (string)
Output: boolean
Logic:  return registry[monsterName:lower()] ~= nil
MonsterTiers.getTier(monsterName)

Input:  monsterName (string)
Output: expTier fraction or nil
Logic:  return registry[monsterName:lower()]
MonsterTiers.getLevelsGained(monsterName, playerLevel, referenceLevel)

Input:  monsterName (string), playerLevel (integer), referenceLevel (integer)
Output: levels gained (float, may be < 1 if player is far above tier)
Logic:
    tier = registry[monsterName:lower()]
    if not tier or tier <= 0 then return 0 end
    tierLevel = tier × referenceLevel
    ratio = tierLevel / math.max(1, playerLevel)
    return ratio × CONFIG.BASE_LEVELS
MonsterTiers.hasMinContribution(monster, player)

Input:  monster (Creature object), player (Player object)
Output: boolean — true if player qualifies for exp
Logic:
    maxHp = monster:getMaxHealth()
    if maxHp <= 0 then return true end  -- safe fallback
    minRequired = maxHp × CONFIG.MIN_DMG_PCT

    damageMap = monster:getDamageMap()
    if not damageMap then return true end  -- safe fallback

    playerDmg = 0
    for creatureId, dmgData in pairs(damageMap) do
        if creatureId == player:getId() then
            playerDmg = (dmgData.total or 0)
            break
        end
    end

    return playerDmg >= minRequired

Note: If getDamageMap() is not available on monster objects, fall back to tracking damage
via monster:setStorage(tostring(playerId), dmgTotal) updated in an onHealthChange creaturescript.
MonsterTiers.getConfig()

Returns CONFIG table (for external access by display/debug tools)
System 2 — Hunting Stamina Bar
File: data/libs/systems/hunting_stamina.lua (CREATE)
Constants (internal)
MAX_POINTS       = 10000   -- Full bar
IDLE_RATE        = 100     -- Points recovered per hour while logged in and idle
                           -- 5000 → 10000 in 50 hours ≈ 2 days idle ✓
DRAIN_BASE       = 0.1     -- Base drain per monster kill at 100% reference ratio
PVP_GRANT_BASE   = 100     -- Hunt stamina per unit of PvP ratio (ratio=1 → 100pts)
MAX_PVP_GRANT    = 1000    -- Cap per single PvP kill (prevents one kill refilling entire bar)
KV_SCOPE         = "hunt-stamina"
KV_POINTS        = "points"
KV_LAST_TICK     = "last_idle_tick"
Drain calibration:

At reference ratio = 1.0 (player AT reference level): drain = 0.1/kill
At 10,000 kills/hour: drain = 1,000 pts/hr → pool lasts 10 hours ✓
At reference ratio = 0.5 (half reference): drain = 0.05/kill → pool lasts 20 hours
At reference ratio = 0.01 (1% of reference): drain = 0.001/kill → pool lasts 1,000 hours (never runs out)
A new player joining a 20M world is functionally immune to hunt stamina drain
PvP grant calibration:

Equal-level PvP kill (ratio=1): +100 pts → funds 1,000 kills = 6 min at 10k/hr
ratio=5 kill: +500 pts → funds 5,000 kills = 30 min of full-rate hunting
ratio=10 kill: +1,000 pts (cap) → funds 10,000 kills = 1 hour
Our tested kill (ratio≈6.5): +650 pts → ~39 min of full-rate hunting
Idle recovery calibration:

100 pts/hr
Top player with 0 hunt stamina: ~100 hours to fill from idle (4.2 days)
From 5,000 to full (10,000): 50 hours ≈ 2 days idle ✓
Functions
HuntStamina.get(player)

Input:  player (Player object)
Output: current points (float, 0 – MAX_POINTS)
Logic:
    kv = player:kv():scoped(KV_SCOPE)
    points = kv:get(KV_POINTS)

    if points == nil then
        -- First access: initialize to full bar
        kv:set(KV_POINTS, MAX_POINTS)
        kv:set(KV_LAST_TICK, os.time())
        return MAX_POINTS
    end

    -- Lazy idle recovery: compute recovery since last call
    lastTick = kv:get(KV_LAST_TICK) or os.time()
    elapsed  = os.time() - lastTick          -- elapsed seconds
    recovery = elapsed × (IDLE_RATE / 3600)  -- convert hourly rate to seconds

    if recovery >= 0.01 then
        points = math.min(MAX_POINTS, points + recovery)
        kv:set(KV_POINTS, points)
        kv:set(KV_LAST_TICK, os.time())
    end

    return points
HuntStamina.getEfficiency(player)

Input:  player (Player object)
Output: efficiency multiplier (0.25 – 1.00)
Logic:
    points = HuntStamina.get(player)

    if points >= 5000 then return 1.00
    elseif points >= 2000 then return 0.75
    elseif points >= 500  then return 0.50
    else                       return 0.25
    end
HuntStamina.onMonsterKill(player, referenceLevel)

Input:  player (Player object), referenceLevel (integer)
Output: none (side effect: drains hunt stamina)
Logic:
    kv    = player:kv():scoped(KV_SCOPE)
    ratio = player:getLevel() / math.max(1, referenceLevel)
    ratio = math.min(1.0, ratio)     -- cap at 1.0 (at or above reference = max drain)
    drain = math.max(0.0001, DRAIN_BASE × ratio)

    points = HuntStamina.get(player)  -- also applies idle recovery
    points = math.max(0, points - drain)
    kv:set(KV_POINTS, points)
HuntStamina.onPvPKill(attacker, ratio)

Input:  attacker (Player object), ratio (victimLevel / attackerLevel)
Output: none (side effect: restores hunt stamina)
Logic:
    kv     = attacker:kv():scoped(KV_SCOPE)
    grant  = math.min(MAX_PVP_GRANT, ratio × PVP_GRANT_BASE)
    points = HuntStamina.get(attacker)
    points = math.min(MAX_POINTS, points + grant)
    kv:set(KV_POINTS, points)
Note: No onPvPDeath — dying in PvP gives no hunt stamina recovery.

HuntStamina.getDisplayInfo(player)

Input:  player (Player object)
Output: table { points, max, efficiency, hoursToFull }
Logic:
    points     = HuntStamina.get(player)
    efficiency = HuntStamina.getEfficiency(player)
    remaining  = MAX_POINTS - points
    hoursToFull = remaining / IDLE_RATE  -- hours of idle to refill

    return { points = points, max = MAX_POINTS,
             efficiency = efficiency, hoursToFull = hoursToFull }
System 3 — Integration into onGainExperience
File: data/events/scripts/player.lua (MODIFY)
Location: Inside Player:onGainExperience(target, exp, rawExp), immediately after the player-target early return (line 534), before the soul regeneration block.

Full logic block to insert (replaces nothing — inserts at line 537):

-- ═══════════════════════════════════════════════════════════════
-- TIERED MONSTER OVERRIDE
-- If this monster has an expTier flag, the entire vanilla pipeline
-- is bypassed. The formula below replaces all exp calculation.
-- Non-tiered monsters fall through to the original code unchanged.
-- ═══════════════════════════════════════════════════════════════
if target:isMonster() and MonsterTiers.isTiered(target:getName()) then

    -- 1. Side effects: consume regular stamina and XP boost time (same as vanilla)
    useStaminaXpBoost(self)
    if configManager.getBoolean(configKeys.STAMINA_SYSTEM) then
        useStamina(self, true)
        self:setStaminaXpBoost(self:getFinalBonusStamina() * 100)
    end

    -- 2. Minimum damage contribution check (10% of monster max HP)
    if not MonsterTiers.hasMinContribution(target, self) then
        return 0
    end

    -- 3. Get server reference level
    local referenceLevel = kv.scoped("server"):get("reference_level") or 1

    -- 4. Drain hunt stamina (scaled by player/ref ratio)
    HuntStamina.onMonsterKill(self, referenceLevel)

    -- 5. Core formula
    local playerLevel   = self:getLevel()
    local levelsGained  = MonsterTiers.getLevelsGained(target:getName(), playerLevel, referenceLevel)
    local effectiveRate = ExpBonus.getEffectiveRate(self)   -- stamina × base rate × guild × xp boost
    local huntRate      = HuntStamina.getEfficiency(self)

    -- 6. Convert levels to raw exp (linear cost approx — same as PvP)
    --    finalExp = levelsGained × COST_FACTOR × playerLevel × effectiveRate × huntRate
    local finalExp = math.floor(levelsGained * (200/3) * playerLevel * effectiveRate * huntRate)

    return math.max(0, finalExp)
end
-- ═══════════════════════════════════════════════════════════════
-- END TIERED MONSTER OVERRIDE — original code below is untouched
-- ═══════════════════════════════════════════════════════════════
Everything after this block is the original, unmodified code:

Soul regeneration (line 540)
Stamina bonus XP (line 552) — already handled in block above, but harmless duplicate
Boosted creature ×2 (line 564)
Prey system (line 569)
VIP bonus (line 577)
Soul War taint (line 585)
CatchUp + effectiveRate final return (line 597) — only reached by non-tiered monsters
Result: Non-tiered monsters hit every single original line of code with zero changes.

System 4 — PvP Kill Grants Hunt Stamina
File: data/scripts/creaturescripts/player/pvp_experience.lua (MODIFY)
Location: Inside the second for loop (per-attacker block), after attacker:addExperience(finalExp, ...).

The ratio variable is already computed at line 132 as victimLevel / attackerLevel.

Add immediately after the addExperience call:

-- Grant hunt stamina proportional to PvP kill quality (same ratio as exp formula)
HuntStamina.onPvPKill(attacker, ratio)
That's the only change to this file.

System 5 — Load Order
File: data/libs/systems/load.lua (MODIFY)
Add two lines before exp_bonus.lua:

dofile(CORE_DIRECTORY .. "/libs/systems/monster_tiers.lua")
dofile(CORE_DIRECTORY .. "/libs/systems/hunting_stamina.lua")
dofile(CORE_DIRECTORY .. "/libs/systems/exp_bonus.lua")
-- ... rest unchanged ...
Both new files must load before exp_bonus.lua since exp_bonus.lua may reference them in future (and onGainExperience depends on all three).

System 6 — Tiered Monster Sentinel EXP
Approach for setting monster.experience = 1 for tiered monsters
All monsters added to the MonsterTiers registry must have their XML/Lua experience set to 1. This is required because if monster.experience = 0, the engine never fires onGainExperience. The value 1 is a sentinel — it will be entirely discarded and replaced by the formula.

Two options:

Option A (recommended): At the bottom of monster_tiers.lua, iterate over the registry and set each monster type's experience to 1 at server startup:

-- Set sentinel exp for all tiered monsters at startup
-- Must run after all monster types are registered (during a globalEvent or via dofile order)
local function applySentinelExp()
    for name, _ in pairs(registry) do
        local mtype = Game.getMonsterType(name)
        if mtype then
            mtype:experience(1)
        end
    end
end
-- Called from a GlobalEvent onStartup, or the registry file is loaded after monster types
Option B: Manually edit each tiered monster's Lua definition file to set monster.experience = 1. Tedious but explicit. Use Option A to avoid maintaining two lists.

GlobalEvent registration for Option A: Add a onStartup globalEvent in monster_tiers.lua that runs after all monster types are loaded.

System 7 — !exprate Command Update
File: data/scripts/talkactions/player/exprate.lua (MODIFY)
Add hunt stamina display at the end of the !exprate output:

function expRateTA.onSay(player, words, param)
    local bonuses, effectiveTotal = ExpBonus.getBreakdown(player)
    local hunt = HuntStamina.getDisplayInfo(player)

    local lines = { "--- Your EXP Multipliers ---" }
    for _, b in ipairs(bonuses) do
        lines[#lines + 1] = string.format("  %-24s %s", b.name .. ":", b.desc)
    end
    lines[#lines + 1] = string.rep("-", 34)
    lines[#lines + 1] = string.format("  %-24s %.1fx", "Effective Total:", effectiveTotal)
    lines[#lines + 1] = ""
    lines[#lines + 1] = string.format("  Hunt Stamina:  %d / %d  (efficiency: %.0f%%)",
        math.floor(hunt.points), hunt.max, hunt.efficiency * 100)
    lines[#lines + 1] = string.format("  Idle refill:   ~%.0f hours to full from current",
        hunt.hoursToFull)

    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table.concat(lines, "\n"))
    return false
end
Phase 2 — Difficulty Scaling (future, after Phase 1 is live)
Only for tiered monsters with expTier ≥ 0.10. Beginner zones (< 0.10) are never scaled. Non-tiered monsters are never scaled.

C++ change needed: monster_type_functions.cpp — expose mtype:maxHealth(value) as setter by mirroring the exact pattern of luaMonsterTypeExperience() (~10 lines).

New file: data/scripts/creaturescripts/monster/tier_scaling.lua

Register onSpawn for all creatures
On spawn: check if monster is tiered (call MonsterTiers.isTiered)
If yes and expTier ≥ 0.10:
baselineRef    = reference at server launch (stored in KV once on startup)
currentRef     = kv.scoped("server"):get("reference_level")
hpMultiplier   = min(currentRef / baselineRef, 0.75)  -- 75% buffer cap
newMaxHp       = baseMonsterHp × hpMultiplier
mtype:maxHealth(newMaxHp)
monster:setHealth(newMaxHp)
File Summary
File	Action	Phase
data/libs/systems/monster_tiers.lua	CREATE — tier registry, formula, contribution check	1
data/libs/systems/hunting_stamina.lua	CREATE — stamina bar, drain, PvP grant, display	1
data/libs/systems/load.lua	MODIFY — add 2 new dofile lines before exp_bonus.lua	1
data/events/scripts/player.lua	MODIFY — insert tiered block at line 537, ~20 lines	1
data/scripts/creaturescripts/player/pvp_experience.lua	MODIFY — 1 line: call HuntStamina.onPvPKill	1
data/scripts/talkactions/player/exprate.lua	MODIFY — add hunt stamina section to display	1
src/lua/functions/creatures/monster/monster_type_functions.cpp	MODIFY — expose maxHealth setter	2
data/scripts/creaturescripts/monster/tier_scaling.lua	CREATE — HP scaling on spawn	2
Verification Checklist
Test	Expected Result
Kill a non-tiered monster	Zero change. Original exp pipeline fires, original levels gained
Kill a tiered monster at ratio=1 (player = tier level), full green stamina, full hunt stamina	~15 levels (10 × 1.5 effective rate)
Kill same monster at ratio=5	~75 levels
Kill same monster at ratio=2 but with 25% hunt stamina efficiency	~7.5 levels
Kill 100,000 tiered monsters as a top-level player (10 hours at 10k/hr) without PvP	Hunt stamina at 0, efficiency 25%
Execute 1 PvP kill with ratio=5 after previous	Hunt stamina +500, efficiency rises
Idle for 50 hours after draining from 5,000	Hunt stamina at 10,000 (full)
Execute !exprate	Shows normal bonuses + hunt stamina section at bottom
New player (level 1,000) in 20M world kills tier-0.01 monster (200k eff. level)	ratio=200 → ~3,000 levels (200 × 10 × 1.5)
Same new player after leveling to 100,000	ratio=2 → ~30 levels. Natural decay ✓
Player deals 5% damage to monster (below 10% threshold)	Returns 0 exp — no levels gained
Boss monster (expTier=nil)	Completely unaffected — original formula