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
	MONSTER_KILL  = 5,
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
-- Item IDs (customize to your server's actual IDs)
local SHP = 7618  -- Strong Health Potion
local SMP = 7620  -- Strong Mana Potion
local UHP = 7588  -- Ultimate Health Potion
local UMP = 7591  -- Ultimate Mana Potion
local GHP = 7590  -- Great Health Potion

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
--              HTML GENERATION
-- ═══════════════════════════════════════════

local function shortReward(r)
	local parts = {}
	if r.gold  and r.gold  > 0 then
		parts[#parts+1] = r.gold >= 1000 and (math.floor(r.gold/1000) .. "k gp") or (r.gold .. " gp")
	end
	if r.coins and r.coins > 0 then parts[#parts+1] = r.coins .. " TC"  end
	if r.items then
		for _, it in ipairs(r.items) do parts[#parts+1] = it.count .. "x" end
	end
	if #parts == 0 then return "—" end
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

function BattlePass.generateHtml(player)
	local kv       = BattlePass.getKv(player)
	BattlePass.ensureSeason(kv)
	local xp        = kv:get("xp") or 0
	local curTier   = BattlePass.getCurrentTier(xp)
	local hasPrem   = kv:get("has_premium") or false
	local totalXp   = BattlePass.TOTAL_TIERS * BattlePass.XP_PER_TIER
	local xpPct     = math.min(math.floor(xp / totalXp * 100), 100)
	local daysLeft  = BattlePass.getDaysRemaining()
	local nextXp    = (curTier < BattlePass.TOTAL_TIERS) and ((curTier + 1) * BattlePass.XP_PER_TIER - xp) or 0

	local premBadge = hasPrem
		and '<span style="background:#9b59b6;color:#fff;padding:4px 14px;border-radius:20px;font-size:12px;font-weight:bold;">&#11088; PREMIUM</span>'
		or  '<span style="background:#333;color:#888;padding:4px 14px;border-radius:20px;font-size:12px;">FREE TRACK</span>'

	-- Header + XP bar
	local html = string.format([[<div style="background:#0d1117;color:#e6edf3;font-family:sans-serif;padding:20px;min-width:840px;">
<table width="100%%"><tr>
<td><span style="color:#f0c040;font-size:22px;font-weight:bold;">&#9876; WAR PASS &middot; SEASON %d</span><br/>
<span style="color:#8b949e;font-size:12px;">%d days remaining &nbsp;&bull;&nbsp; %s &bull; %s XP &nbsp;&bull;&nbsp; Tier %d &sol; %d</span></td>
<td align="right" valign="middle">%s</td></tr></table>
<div style="height:1px;background:#30363d;margin:12px 0;"></div>
<table width="100%%"><tr><td style="background:#21262d;border-radius:6px;height:14px;padding:0;">
<table width="100%%"><tr>
<td width="%d%%" style="background:linear-gradient(90deg,#e94560,#f0c040);border-radius:6px;height:14px;padding:0;font-size:1px;">&nbsp;</td>
<td style="height:14px;padding:0;font-size:1px;">&nbsp;</td>
</tr></table></td></tr></table>
<div style="color:#8b949e;font-size:11px;margin-top:5px;">
Monster kill <span style="color:#f0c040;">+%d XP</span> &nbsp;&bull;&nbsp;
PvP kill <span style="color:#e94560;">+%d XP</span> &nbsp;&bull;&nbsp;
Daily login <span style="color:#7ee787;">+%d XP</span> &nbsp;&bull;&nbsp;
5 min playtime <span style="color:#79c0ff;">+%d XP</span>
%s
</div>
<div style="height:1px;background:#30363d;margin:12px 0;"></div>
<table>]],
		BattlePass.SEASON,
		daysLeft,
		string.format("%d/%d XP", xp, totalXp),
		nextXp > 0 and (nextXp .. " to next tier") or "MAX TIER",
		curTier, BattlePass.TOTAL_TIERS,
		premBadge,
		xpPct,
		BattlePass.XP.MONSTER_KILL,
		BattlePass.XP.PVP_KILL,
		BattlePass.XP.DAILY_LOGIN,
		BattlePass.XP.PLAYTIME_5MIN,
		nextXp > 0 and "" or '<span style="color:#f0c040;font-weight:bold;">&nbsp;&bull;&nbsp; &#128081; Season Complete!</span>'
	)

	-- Tier grid (10 per row)
	for i = 1, BattlePass.TOTAL_TIERS do
		if (i - 1) % 10 == 0 then html = html .. "<tr>" end
		html = html .. tierCard(kv, i, curTier, hasPrem)
		if i % 10 == 0 then html = html .. "</tr>" end
	end

	-- Footer
	html = html .. [[</table>
<div style="height:1px;background:#30363d;margin:12px 0;"></div>
<div style="color:#8b949e;font-size:12px;text-align:center;">
Select a tier in the list below and click <b style="color:#e6edf3;">Claim Reward</b> &mdash;
or type <span style="color:#f0c040;font-weight:bold;">/bpclaim [tier]</span> directly in chat
</div></div>]]

	return html
end

function BattlePass.openWindow(player)
	local html = BattlePass.generateHtml(player)
	player:sendExtendedOpcode(BattlePass.OPCODE_OPEN, html)
end
