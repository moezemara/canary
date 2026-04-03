-- Intense Healing Rune | 50-55% max HP
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLCLOUDS)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)

function onGetFormulaValues(player, level, magicLevel)
	local min = math.floor((player:getMaxHealth() / 100) * 50)
	local max = math.floor((player:getMaxHealth() / 100) * 55)
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end

rune:name("Intense Healing Rune")
rune:runeId(3169)
rune:id(573)
rune:group("healing")
rune:level(550)
rune:magicLevel(5)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(0)
rune:groupCooldown(0)
rune:register()
