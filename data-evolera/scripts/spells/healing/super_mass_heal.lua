local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, maglevel)
    local c = level / 5 + maglevel
    return c * 10 + 3800, c * 10 + 8000
end
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    return combat:execute(creature, var)
end

spell:group("healing")
spell:id(563)
spell:name("Super Mass Heal")
spell:words("exura gran mas super res")
spell:level(120000)
spell:mana(20000)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:isAggressive(false)
spell:cooldown(1 * 500)
spell:groupCooldown(1 * 500)
spell:needLearn(false)
spell:vocation("druid;true", "elder druid;true")
spell:register()
