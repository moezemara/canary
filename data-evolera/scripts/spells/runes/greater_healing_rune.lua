-- Greater Healing Rune | 40-45% max HP
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)

function onGetFormulaValues(player, level, magicLevel)
	local min = math.floor((player:getMaxHealth() / 100) * 40)
	local max = math.floor((player:getMaxHealth() / 100) * 45)
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end

rune:name("Greater Healing Rune")
rune:runeId(3171)
rune:id(571)
rune:group("healing")
rune:level(250)
rune:magicLevel(2)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(0)
rune:groupCooldown(0)
rune:register()
