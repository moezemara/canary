local spells = TalkAction("!spells")

function spells.onSay(player, words, param)
	local t = {}
	for _, spell in ipairs(player:getInstantSpells()) do
		if spell.level ~= 0 then
			if spell.manapercent > 0 then
				spell.mana = spell.manapercent .. "%"
			end
			table.insert(t, spell)
		end
	end

	table.sort(t, function(a, b) return a.level < b.level end)

	local text = ""
	local prevLevel = -1
	for i, spell in ipairs(t) do
		local line = ""
		if prevLevel ~= spell.level then
			if i ~= 1 then
				line = "\n"
			end
			line = line .. "Spells for Level " .. spell.level .. "\n"
			prevLevel = spell.level
		end
		text = text .. line .. "  " .. spell.words .. " - " .. spell.name .. " : " .. spell.mana .. "\n"
	end

	player:showTextDialog(34266, text)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Remember!!! To check your buffs, write another command: !buffs")
	return true
end

spells:setDescription("[Usage]: !spells - show all your available spells")
spells:groupType("normal")
spells:register()
