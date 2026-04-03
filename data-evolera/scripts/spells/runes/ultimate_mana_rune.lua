-- Ultimate Mana Rune | 65-67% max mana
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	creature:addMana(math.ceil(math.random((creature:getMaxMana() / 100) * 65, (creature:getMaxMana() / 100) * 67)))
	return combat:execute(creature, variant)
end

rune:name("Ultimate Mana Rune")
rune:runeId(3194)
rune:id(582)
rune:group("healing")
rune:level(1000)
rune:magicLevel(1)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
