local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLICE)

function onGetFormulaValues(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 35 + 1000), -(c * 35 + 3000)
end
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    return combat:execute(creature, var)
end

spell:group("attack")
spell:id(521)
spell:name("Great Ice Strike")
spell:words("exori super frigo")
spell:level(150000)
spell:mana(20000)
spell:isPremium(true)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:range(7)
spell:needTarget(true)
spell:blockWalls(true)
spell:vocation("druid;true", "elder druid;true")
spell:register()
