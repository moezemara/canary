local condition = Condition(CONDITION_INVISIBLE)
condition:setParameter(CONDITION_PARAM_TICKS, 8 * 1000)

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    creature:addCondition(condition)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end

spell:group("support")
spell:id(567)
spell:name("Utamo Ghost")
spell:words("utamo ghost")
spell:level(100000)
spell:manaPercent(50)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:isAggressive(false)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("paladin;true", "royal paladin;true")
spell:register()
