-- Sudden Death Rune | tier 1 (low scaling)
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)

function onGetFormulaValuesSuddenDeath(player, level, magicLevel)
	local min = -9.2 * (level + 3 * magicLevel) - 500
	local max = -9.3 * (level + 3 * magicLevel) + 500
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValuesSuddenDeath")

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	if creature:getTile():hasFlag(TILESTATE_PROTECTIONZONE) then
		creature:sendCancelMessage("You can't use this rune in a protection zone.")
		return false
	end
	return combat:execute(creature, variant)
end

rune:name("Sudden Death Rune")
rune:runeId(3150)
rune:id(583)
rune:group("attack")
rune:level(200)
rune:magicLevel(1)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(true)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
