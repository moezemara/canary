-- Lesser Mana Rune | 16-25% max mana
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	creature:addMana(math.ceil(math.random((creature:getMaxMana() / 100) * 16, (creature:getMaxMana() / 100) * 25)))
	return combat:execute(creature, variant)
end

rune:name("Lesser Mana Rune")
rune:runeId(3184)
rune:id(576)
rune:group("healing")
rune:level(50)
rune:magicLevel(0)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
