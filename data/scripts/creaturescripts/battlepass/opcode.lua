-- Handles extended opcodes sent from the OTClient War Pass UI.
-- Opcode 101: client requests to claim a tier.
local battlePassOpcode = CreatureEvent("BattlePassExtendedOpcode")

function battlePassOpcode.onExtendedOpcode(player, opcode, buffer)
	if opcode ~= BattlePass.OPCODE_CLAIM then
		return true
	end

	local tier = tonumber(buffer)
	if not tier then
		return true
	end

	local ok, msg = BattlePass.claimTier(player, tier)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[War Pass] " .. msg)

	-- Refresh UI
	if player:isUsingOtClient() then
		BattlePass.openWindow(player)
	end
	return true
end

battlePassOpcode:register()
