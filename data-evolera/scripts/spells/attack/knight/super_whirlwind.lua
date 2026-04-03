local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 3)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 25)

function onGetFormulaValues(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 50 + 4500), -(c * 50 + 2500)
end
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    return combat:execute(creature, var)
end

spell:group("attack")
spell:id(558)
spell:name("Super Whirlwind")
spell:words("exori super hur")
spell:level(150000)
spell:mana(5000)
spell:isPremium(true)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:range(7)
spell:needTarget(true)
spell:blockWalls(true)
spell:needWeapon(true)
spell:vocation("knight;true", "elite knight;true")
spell:register()
