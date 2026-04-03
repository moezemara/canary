-- Intense Mana Rune | 44-45% max mana
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_BLUE)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	creature:addMana(math.ceil(math.random((creature:getMaxMana() / 100) * 44, (creature:getMaxMana() / 100) * 45)))
	return combat:execute(creature, variant)
end

rune:name("Intense Mana Rune")
rune:runeId(3185)
rune:id(581)
rune:group("healing")
rune:level(700)
rune:magicLevel(7)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
