local CRYSTAL_COIN = 3043
local BLESS_COST = 10

local bless = TalkAction("!bless")

function bless.onSay(player, words, param)
	local donthavefilter = function(p, b)
		return not p:hasBlessing(b)
	end

	local missingBless = player:getBlessings(nil, donthavefilter)
	local hasToF = Blessings.Config.HasToF and player:hasBlessing(1) or true

	if #missingBless == 0 and hasToF then
		player:sendCancelMessage("You are already fully blessed.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	if player:getItemCount(CRYSTAL_COIN) < BLESS_COST then
		player:sendCancelMessage(string.format("You need %d crystal coins to get blessed.", BLESS_COST))
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	player:removeItem(CRYSTAL_COIN, BLESS_COST)

	for _, blessData in ipairs(missingBless) do
		player:addBlessing(blessData.id, 1)
	end

	if not hasToF then
		player:addBlessing(1, 1)
	end

	player:sendCancelMessage(string.format("You received all missing blessings for %d crystal coins.", BLESS_COST))
	player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
	return true
end

bless:setDescription("[Usage]: !bless - buy all missing blessings for 10 crystal coins")
bless:groupType("normal")
bless:register()
