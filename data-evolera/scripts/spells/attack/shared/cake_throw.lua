local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 51)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 41)

function onGetFormulaValues(player, level, maglevel)
    return -1, -2
end
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    return combat:execute(creature, var)
end

spell:group("attack")
spell:id(507)
spell:name("Cake Throw")
spell:words("exori cake")
spell:level(1)
spell:mana(1)
spell:isPremium(false)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:range(4)
spell:needTarget(true)
spell:blockWalls(true)
spell:vocation("sorcerer;true", "master sorcerer;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true", "knight;true", "elite knight;true")
spell:register()
