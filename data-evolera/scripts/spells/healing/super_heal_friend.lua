local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGetFormulaValues(player, level, maglevel)
    local c = level / 5 + maglevel
    return c * 10 + 5000, c * 10 + 14000
end
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    return combat:execute(creature, var)
end

spell:group("healing")
spell:id(562)
spell:name("Super Heal Friend")
spell:words("exura super sio")
spell:level(120000)
spell:manaPercent(5)
spell:isPremium(true)
spell:isAggressive(false)
spell:cooldown(1 * 500)
spell:groupCooldown(1 * 500)
spell:needLearn(false)
spell:needTarget(true)
spell:vocation("druid;true", "elder druid;true")
spell:register()
