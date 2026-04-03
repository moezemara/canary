-- exprate.lua
-- Commands: !exprate, !bonuses, !xprate
-- Shows the player a full breakdown of their current exp multipliers.
--
-- Example output:
--   --- Your EXP Multipliers ---
--     Base Rate:               1000x
--     Stamina:                 1.5x (green/premium, 41h 20m left)
--     Guild Rank Bonus:        +20.0%
--     New Player Catch-Up:     +298.1%
--     XP Boost:                +50% (90m remaining)
--   ----------------------------------
--     Effective Total:         6621.0x

local expRateTA = TalkAction("!exprate", "!bonuses", "!xprate")

function expRateTA.onSay(player, words, param)
	local bonuses, effectiveTotal = ExpBonus.getBreakdown(player)

	local lines = { "--- Your EXP Multipliers ---" }
	for _, b in ipairs(bonuses) do
		lines[#lines + 1] = string.format("  %-24s %s", b.name .. ":", b.desc)
	end
	lines[#lines + 1] = string.rep("-", 34)
	lines[#lines + 1] = string.format("  %-24s %.1fx", "Effective Total:", effectiveTotal)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table.concat(lines, "\n"))
	return false
end

expRateTA:groupType("normal")
expRateTA:separator(" ")
expRateTA:register()
