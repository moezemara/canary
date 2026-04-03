-- Superior Mana Rune | 40-42% max mana
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local rune = Spell("rune")

function rune.onCastSpell(creature, variant, isHotkey)
	creature:addMana(math.ceil(math.random((creature:getMaxMana() / 100) * 40, (creature:getMaxMana() / 100) * 42)))
	return combat:execute(creature, variant)
end

rune:name("Superior Mana Rune")
rune:runeId(3186)
rune:id(580)
rune:group("healing")
rune:level(550)
rune:magicLevel(5)
rune:allowFarUse(true)
rune:needTarget(true)
rune:isBlocking(true)
rune:isAggressive(false)
rune:cooldown(750)
rune:groupCooldown(750)
rune:register()
