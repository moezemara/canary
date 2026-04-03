local area_1 = {
    {0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 1, 1, 2, 1, 1, 0},
    {0, 0, 0, 1, 0, 0, 0},
    {0, 0, 0, 1, 0, 0, 0},
}
local area_2 = {
    {0, 0, 0, 0, 0, 0, 0},
    {0, 0, 1, 0, 1, 0, 0},
    {0, 1, 1, 0, 1, 1, 0},
    {0, 0, 0, 2, 0, 0, 0},
    {0, 1, 1, 0, 1, 1, 0},
    {0, 0, 1, 0, 1, 0, 0},
}

local combat_1 = Combat()
combat_1:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat_1:setParameter(COMBAT_PARAM_EFFECT, 47)
combat_1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 37)
combat_1:setArea(createCombatArea(area_1))
function onGetFormulaValues_1(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 45 + 3600), -(c * 45 + 1650)
end
combat_1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_1")

local combat_2 = Combat()
combat_2:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat_2:setParameter(COMBAT_PARAM_EFFECT, 47)
combat_2:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 37)
combat_2:setArea(createCombatArea(area_2))
function onGetFormulaValues_2(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 30 + 4000), -(c * 30 + 2500)
end
combat_2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_2")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    addEvent(function() combat_1:execute(creature, var) end, 0)
    addEvent(function() combat_2:execute(creature, var) end, 400)
    return true
end

spell:group("attack", "focus")
spell:id(503)
spell:name("Energy Bomb")
spell:words("exevo energy")
spell:level(40000)
spell:mana(2000)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer;true", "master sorcerer;true", "druid;true", "elder druid;true")
spell:register()
