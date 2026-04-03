-- Greater Mana Rune | 32-34% max mana
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_TELEPORT)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	creature:addMana(math.ceil(math.random((creature:getMaxMana() / 100) * 32, (creature:getMaxMana() / 100) * 34)))
	return combat:execute(creature, variant)
end

rune:name("Greater Mana Rune")
rune:runeId(3187)
rune:id(578)
rune:group("healing")
rune:level(250)
rune:magicLevel(2)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
