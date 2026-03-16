-- /bpclaim <tier>  — claim a specific tier reward.
-- Triggered by the OTClient War Pass UI or typed directly in chat.
local bpClaim = TalkAction("/bpclaim")

function bpClaim.onSay(player, words, param)
	local tier = tonumber(param and param:trim())
	if not tier then
		player:sendCancelMessage("Usage: /bpclaim <tier number>")
		return true
	end

	local ok, msg = BattlePass.claimTier(player, tier)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[War Pass] " .. msg)

	-- Refresh the UI if the player has it open
	if ok and player:isUsingOtClient() then
		BattlePass.openWindow(player)
	end
	return true
end

bpClaim:separator(" ")
bpClaim:groupType("normal")
bpClaim:register()
