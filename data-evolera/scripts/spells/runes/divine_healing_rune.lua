-- Divine Healing Rune | 62-64% max HP
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)

function onGetFormulaValues(player, level, magicLevel)
	local min = math.floor((player:getMaxHealth() / 100) * 62)
	local max = math.floor((player:getMaxHealth() / 100) * 64)
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end

rune:name("Divine Healing Rune")
rune:runeId(3154)
rune:id(575)
rune:group("healing")
rune:level(1000)
rune:magicLevel(1)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(0)
rune:groupCooldown(0)
rune:register()
