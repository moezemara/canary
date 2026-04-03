local area_1 = {
    {1, 1, 0, 0, 0, 1, 1},
    {0, 1, 1, 1, 1, 1, 0},
    {0, 0, 1, 1, 1, 0, 0},
    {0, 0, 1, 2, 1, 0, 0},
    {0, 0, 1, 1, 1, 0, 0},
    {0, 1, 1, 1, 1, 1, 0},
    {1, 1, 0, 1, 0, 1, 1},
}
local area_2 = {
    {1, 1, 0, 0, 0, 1, 1},
    {0, 1, 1, 1, 1, 1, 0},
    {0, 0, 1, 1, 1, 0, 0},
    {0, 0, 1, 2, 1, 0, 0},
    {0, 0, 1, 1, 1, 0, 0},
    {0, 1, 1, 1, 1, 1, 0},
    {1, 1, 0, 1, 0, 1, 1},
}

local combat_1 = Combat()
combat_1:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat_1:setParameter(COMBAT_PARAM_EFFECT, 36)
combat_1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 33)
combat_1:setArea(createCombatArea(area_1))
function onGetFormulaValues_1(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 75 + 5000), -(c * 70 + 2750)
end
combat_1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_1")

local combat_2 = Combat()
combat_2:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat_2:setParameter(COMBAT_PARAM_EFFECT, 15)
combat_2:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 3)
combat_2:setArea(createCombatArea(area_2))
function onGetFormulaValues_2(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 37 + 1800), -(c * 42 + 1250)
end
combat_2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_2")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    addEvent(function() combat_1:execute(creature, var) end, 0)
    addEvent(function() combat_2:execute(creature, var) end, 500)
    return true
end

spell:group("attack", "focus")
spell:id(516)
spell:name("Mega Fire Wave")
spell:words("exevo mega mas flam")
spell:level(420000)
spell:mana(9500)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer;true", "master sorcerer;true")
spell:register()
