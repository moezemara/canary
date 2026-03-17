BattlePass = {}

-- ═══════════════════════════════════════════
--              SEASON CONFIG
-- ═══════════════════════════════════════════
BattlePass.SEASON              = 1
-- Unix timestamp for season start. Run os.time() in-game to get current timestamp.
-- Season 1 example: March 17 2026 UTC = 1773619200
BattlePass.SEASON_START        = 1773619200
BattlePass.SEASON_DURATION_DAYS = 30
BattlePass.XP_PER_TIER         = 500
BattlePass.TOTAL_TIERS         = 50

-- XP rewards per action
BattlePass.XP = {
	MONSTER_KILL  = 100,
	PVP_KILL      = 50,
	DAILY_LOGIN   = 200,
	PLAYTIME_5MIN = 5,   -- granted every 5 minutes online
}

-- Extended opcodes
BattlePass.OPCODE_OPEN  = 100  -- server → client: open UI
BattlePass.OPCODE_CLAIM = 101  -- client → server: claim tier

-- ═══════════════════════════════════════════
--              TIER REWARDS
-- ═══════════════════════════════════════════
-- Item IDs (from data/items/items.xml)
local SHP = 236    -- Strong Health Potion
local SMP = 237    -- Strong Mana Potion
local UHP = 7643   -- Ultimate Health Potion
local UMP = 23373  -- Ultimate Mana Potion
local GHP = 239    -- Great Health Potion

-- Build all 50 tiers programmatically with milestones at 10, 25, 50
BattlePass.TIERS = {}
for i = 1, 50 do
	local free = { gold = 0, items = {}, coins = 0 }
	local prem = { gold = 0, items = {}, coins = 0 }

	if i == 50 then
		-- Grand finale — Season Veteran reward
		free.gold  = 100000
		free.items = { { id = UHP, count = 100 } }
		prem.gold  = 500000
		prem.items = { { id = UHP, count = 300 }, { id = UMP, count = 300 } }
		prem.coins = 2000
	elseif i == 25 then
		-- Mid-season milestone
		free.gold  = 30000
		free.items = { { id = UHP, count = 50 } }
		prem.gold  = 100000
		prem.items = { { id = UHP, count = 100 } }
		prem.coins = 500
	elseif i % 10 == 0 then
		-- Every-10 milestone
		free.gold  = i * 400
		prem.gold  = i * 2000
		prem.coins = i * 10
	elseif i % 5 == 0 then
		-- Every-5 sub-milestone
		free.gold  = i * 150
		prem.gold  = i * 700
	elseif i % 4 == 0 then
		-- Mana potion tiers
		free.items = { { id = SMP, count = math.min(10 + i * 2, 100) } }
		prem.items = { { id = UMP, count = math.min(5  + i,     50)  } }
		prem.gold  = i * 150
	elseif i % 2 == 0 then
		-- Health potion tiers
		free.items = { { id = SHP, count = math.min(10 + i * 2, 100) } }
		prem.items = { { id = UHP, count = math.min(5  + i,     50)  } }
		prem.gold  = i * 150
	else
		-- Gold tiers
		free.gold = i * 120
		prem.gold = i * 600
	end

	BattlePass.TIERS[i] = { free = free, premium = prem }
end

-- ═══════════════════════════════════════════
--              CORE FUNCTIONS
-- ═══════════════════════════════════════════

function BattlePass.getKv(player)
	return player:kv():scoped("battlepass")
end

function BattlePass.getCurrentTier(xp)
	return math.min(math.floor(xp / BattlePass.XP_PER_TIER), BattlePass.TOTAL_TIERS)
end

function BattlePass.getDaysRemaining()
	local seasonEnd = BattlePass.SEASON_START + (BattlePass.SEASON_DURATION_DAYS * 86400)
	return math.max(0, math.ceil((seasonEnd - os.time()) / 86400))
end

local function resetForNewSeason(kv)
	kv:set("season",     BattlePass.SEASON)
	kv:set("xp",         0)
	kv:set("kills_today", 0)
	kv:set("login_today", "")
	kv:set("has_premium", false)
	for i = 1, BattlePass.TOTAL_TIERS do
		kv:set("fc_" .. i, false)
		kv:set("pc_" .. i, false)
	end
end

function BattlePass.ensureSeason(kv)
	if (kv:get("season") or 0) ~= BattlePass.SEASON then
		resetForNewSeason(kv)
	end
end

function BattlePass.grantXP(player, amount)
	local kv = BattlePass.getKv(player)
	BattlePass.ensureSeason(kv)
	local newXp = (kv:get("xp") or 0) + amount
	kv:set("xp", newXp)
	return newXp
end

local function grantReward(player, reward)
	if reward.gold  and reward.gold  > 0 then player:addMoney(reward.gold)           end
	if reward.coins and reward.coins > 0 then player:addTibiaCoins(reward.coins)     end
	if reward.items then
		for _, entry in ipairs(reward.items) do
			player:addItem(entry.id, entry.count)
		end
	end
end

function BattlePass.claimTier(player, tier)
	local kv      = BattlePass.getKv(player)
	BattlePass.ensureSeason(kv)
	local xp         = kv:get("xp") or 0
	local curTier    = BattlePass.getCurrentTier(xp)
	local tierData   = BattlePass.TIERS[tier]

	if not tierData then
		return false, "Invalid tier."
	end
	if tier > curTier then
		return false, string.format("You haven't reached tier %d yet. (%d/%d XP)", tier, xp, tier * BattlePass.XP_PER_TIER)
	end

	local freeClaimed = kv:get("fc_" .. tier) or false
	local premClaimed = kv:get("pc_" .. tier) or false
	local hasPremium  = kv:get("has_premium") or false
	local gained      = {}

	if not freeClaimed then
		grantReward(player, tierData.free)
		kv:set("fc_" .. tier, true)
		gained[#gained + 1] = "[Free]"
	end

	if hasPremium and not premClaimed then
		grantReward(player, tierData.premium)
		kv:set("pc_" .. tier, true)
		gained[#gained + 1] = "[Premium]"
	end

	if #gained == 0 then
		return false, string.format("Tier %d rewards already claimed.", tier)
	end

	return true, string.format("Claimed tier %d: %s", tier, table.concat(gained, " + "))
end

-- ═══════════════════════════════════════════
--         CLIENT DATA GENERATION
-- ═══════════════════════════════════════════
--  Format: xp|hasPrem|daysLeft|<100-char bitmask>|freeIds|premIds|freeTxts|premTxts
--  Bitmask: fc1 pc1 fc2 pc2 … fc50 pc50  ('0'/'1' per char)
--  freeIds/premIds: comma-separated item IDs (one per tier)
--  freeTxts/premTxts: tilde-separated reward strings (one per tier)

-- kept for legacy HTML path (unused now) but also used below
local function shortReward(r)
	local parts = {}
	if r.gold  and r.gold  > 0 then
		parts[#parts+1] = r.gold >= 1000 and (math.floor(r.gold/1000) .. "k gp") or (r.gold .. " gp")
	end
	if r.coins and r.coins > 0 then parts[#parts+1] = r.coins .. " TC"  end
	if r.items then
		for _, it in ipairs(r.items) do parts[#parts+1] = it.count .. "x" end
	end
	if #parts == 0 then return "-" end
	return table.concat(parts, " + ")
end

local function tierCard(kv, i, curTier, hasPremium)
	local td        = BattlePass.TIERS[i]
	local fclaimed  = kv:get("fc_" .. i) or false
	local pclaimed  = kv:get("pc_" .. i) or false
	local milestone = (i == 50) or (i == 25) or (i % 10 == 0)

	-- Determine visual status
	local bg, border, badge, badgeColor
	if i > curTier then
		bg = "#161b22"; border = "#30363d"
		badge = "LOCKED"; badgeColor = "#555"
	elseif fclaimed and (not hasPremium or pclaimed) then
		bg = "#0d2818"; border = "#2ea043"
		badge = "&#10003; DONE"; badgeColor = "#238636"
	elseif fclaimed and hasPremium and not pclaimed then
		bg = "#1a1040"; border = "#9b59b6"
		badge = "CLAIM PREM"; badgeColor = "#9b59b6"
	else
		bg = "#1a2336"; border = "#e94560"
		badge = "CLAIM"; badgeColor = "#e94560"
	end

	local nameColor = (i > curTier) and "#555" or "#e6edf3"
	local milkMark  = milestone and
		'<div style="color:#f0c040;font-size:8px;line-height:10px;">&#9733;</div>' or
		'<div style="font-size:8px;line-height:10px;">&nbsp;</div>'

	local freeText  = (i > curTier) and '<span style="color:#555">?</span>' or
		('<span style="color:#7ee787">' .. shortReward(td.free) .. '</span>')

	local premText
	if not hasPremium then
		premText = '<span style="color:#555">&#128274;</span>'
	elseif i > curTier then
		premText = '<span style="color:#555">?</span>'
	else
		premText = '<span style="color:#c8a0e8">' .. shortReward(td.premium) .. '</span>'
	end

	return string.format(
		'<td style="padding:3px;">' ..
		'<div style="background:%s;border:2px solid %s;border-radius:8px;width:70px;height:96px;text-align:center;padding:5px 3px;font-size:10px;overflow:hidden;">' ..
		'%s' ..
		'<div style="color:%s;font-weight:bold;font-size:17px;line-height:19px;">%d</div>' ..
		'<div style="font-size:9px;line-height:12px;overflow:hidden;">%s</div>' ..
		'<div style="font-size:9px;line-height:12px;overflow:hidden;">%s</div>' ..
		'<div style="background:%s;color:#fff;border-radius:4px;padding:2px 1px;margin-top:3px;font-size:9px;font-weight:bold;">%s</div>' ..
		'</div></td>',
		bg, border, milkMark, nameColor, i, freeText, premText, badgeColor, badge
	)
end

-- Returns "id:count" for the primary display item of a reward.
-- Item rewards show their stack count directly.
-- Gold rewards use the appropriate coin denomination so the count stays readable:
--   < 100 gp  → gold coins   (3031)  count = gp
--   < 10000 gp → platinum coins (3035) count = gp / 100
--   >= 10000 gp → crystal coins  (3043) count = gp / 10000
local GOLD_COIN     = 3031
local PLATINUM_COIN = 3035
local CRYSTAL_COIN  = 3043

local function primaryItemStr(reward)
	if reward.items and reward.items[1] then
		return reward.items[1].id .. ":" .. reward.items[1].count
	end
	if reward.gold and reward.gold > 0 then
		local g = reward.gold
		if g >= 10000 then
			return CRYSTAL_COIN  .. ":" .. math.floor(g / 10000)
		elseif g >= 100 then
			return PLATINUM_COIN .. ":" .. math.floor(g / 100)
		else
			return GOLD_COIN     .. ":" .. g
		end
	end
	return "3031:1"
end

function BattlePass.generateData(player)
	local kv      = BattlePass.getKv(player)
	BattlePass.ensureSeason(kv)
	local xp      = kv:get("xp") or 0
	local hasPrem = kv:get("has_premium") or false
	local days    = BattlePass.getDaysRemaining()

	-- Build 100-char bitmask: fc1 pc1 fc2 pc2 … fc50 pc50
	local bits = {}
	for i = 1, BattlePass.TOTAL_TIERS do
		bits[#bits+1] = (kv:get("fc_" .. i) or false) and "1" or "0"
		bits[#bits+1] = (kv:get("pc_" .. i) or false) and "1" or "0"
	end

	-- Build item ID and reward text lists (one per tier)
	local freeIds  = {}
	local premIds  = {}
	local freeTxts = {}
	local premTxts = {}
	for i = 1, BattlePass.TOTAL_TIERS do
		local td = BattlePass.TIERS[i]
		freeIds[#freeIds+1]   = primaryItemStr(td.free)
		premIds[#premIds+1]   = primaryItemStr(td.premium)
		freeTxts[#freeTxts+1] = shortReward(td.free)
		premTxts[#premTxts+1] = shortReward(td.premium)
	end

	return string.format("%d|%s|%d|%s|%s|%s|%s|%s",
		xp,
		hasPrem and "1" or "0",
		days,
		table.concat(bits),
		table.concat(freeIds,  ","),
		table.concat(premIds,  ","),
		table.concat(freeTxts, "~"),
		table.concat(premTxts, "~")
	)
end

function BattlePass.isOtClient(player)
	local clientOs = player:getClient().os
	return clientOs >= 10  -- CLIENTOS_OTCLIENT_LINUX
end

function BattlePass.openWindow(player)
	local data = BattlePass.generateData(player)
	local msg = NetworkMessage()
	msg:addByte(0x32)
	msg:addByte(BattlePass.OPCODE_OPEN)
	msg:addString(data)
	msg:sendToPlayer(player)
end
