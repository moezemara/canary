local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

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
spell:id(511)
spell:name("Super Flame Strike")
spell:words("exori super flam")
spell:level(150000)
spell:mana(20000)
spell:isPremium(true)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:range(7)
spell:needTarget(true)
spell:blockWalls(true)
spell:vocation("sorcerer;true", "master sorcerer;true")
spell:register()
