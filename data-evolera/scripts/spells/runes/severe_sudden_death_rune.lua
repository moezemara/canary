-- Severe Sudden Death Rune | tier 3 (high scaling)
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)

function onGetFormulaValuesSevereSuddenDeath(player, level, magicLevel)
	local min = -44.2 * (level + 3 * magicLevel) - 2800
	local max = -44.3 * (level + 3 * magicLevel) + 3900
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValuesSevereSuddenDeath")

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	if creature:getTile():hasFlag(TILESTATE_PROTECTIONZONE) then
		creature:sendCancelMessage("You can't use this rune in a protection zone.")
		return false
	end
	return combat:execute(creature, variant)
end

rune:name("Severe Sudden Death Rune")
rune:runeId(3151)
rune:id(585)
rune:group("attack")
rune:level(1000)
rune:magicLevel(1)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(true)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
