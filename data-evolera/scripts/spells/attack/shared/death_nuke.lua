local area_1 = {
    {0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0},
    {0, 0, 1, 1, 1, 0, 0},
    {0, 0, 1, 2, 1, 0, 0},
    {0, 0, 1, 1, 1, 0, 0},
    {0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0},
}
local area_2 = {
    {0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 1, 0, 1, 0, 0},
    {0, 1, 0, 2, 0, 1, 0},
    {0, 0, 1, 0, 1, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0},
}
local area_3 = {
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 1, 0, 1, 0, 0},
    {0, 1, 0, 0, 0, 1, 0},
    {1, 0, 0, 2, 0, 0, 1},
    {0, 1, 0, 0, 0, 1, 0},
    {0, 0, 1, 0, 1, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
}

local combat_1 = Combat()
combat_1:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat_1:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat_1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 10)
combat_1:setArea(createCombatArea(area_1))
function onGetFormulaValues_1(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 20 + 2500), -(c * 20 + 1500)
end
combat_1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_1")

local combat_2 = Combat()
combat_2:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat_2:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat_2:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 31)
combat_2:setArea(createCombatArea(area_2))
function onGetFormulaValues_2(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 20 + 2500), -(c * 20 + 1500)
end
combat_2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_2")

local combat_3 = Combat()
combat_3:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat_3:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat_3:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 31)
combat_3:setArea(createCombatArea(area_3))
function onGetFormulaValues_3(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 20 + 2500), -(c * 20 + 1500)
end
combat_3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_3")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    addEvent(function() combat_1:execute(creature, var) end, 0)
    addEvent(function() combat_2:execute(creature, var) end, 250)
    addEvent(function() combat_3:execute(creature, var) end, 500)
    return true
end

spell:group("attack", "focus")
spell:id(500)
spell:name("Death Nuke")
spell:words("exevo gran mas mort")
spell:level(250)
spell:mana(500)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer;true", "master sorcerer;true", "druid;true", "elder druid;true")
spell:register()
