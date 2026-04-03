-- Mana Rune | 27-30% max mana
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SOUND_BLUE)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	creature:addMana(math.ceil(math.random((creature:getMaxMana() / 100) * 27, (creature:getMaxMana() / 100) * 30)))
	return combat:execute(creature, variant)
end

rune:name("Mana Rune")
rune:runeId(3183)
rune:id(577)
rune:group("healing")
rune:level(150)
rune:magicLevel(1)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
