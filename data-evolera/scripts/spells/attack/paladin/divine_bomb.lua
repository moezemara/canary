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
    {1, 1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1, 1},
    {1, 1, 0, 0, 0, 1, 1},
    {1, 1, 0, 2, 0, 1, 1},
    {1, 1, 0, 0, 0, 1, 1},
    {1, 1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1, 1},
}

local combat_1 = Combat()
combat_1:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat_1:setParameter(COMBAT_PARAM_EFFECT, 39)
combat_1:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 30)
combat_1:setArea(createCombatArea(area_1))
function onGetFormulaValues_1(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 40 + 3600), -(c * 40 + 1650)
end
combat_1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_1")

local combat_2 = Combat()
combat_2:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat_2:setParameter(COMBAT_PARAM_EFFECT, 39)
combat_2:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 30)
combat_2:setArea(createCombatArea(area_2))
function onGetFormulaValues_2(player, level, maglevel)
    local c = level / 5 + maglevel
    return -(c * 45 + 4000), -(c * 45 + 1750)
end
combat_2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues_2")

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    addEvent(function() combat_1:execute(creature, var) end, 0)
    addEvent(function() combat_2:execute(creature, var) end, 250)
    return true
end

spell:group("attack", "focus")
spell:id(531)
spell:name("Divine Bomb")
spell:words("exevo super san")
spell:level(50000)
spell:mana(500)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:cooldown(1 * 1000)
spell:groupCooldown(1 * 1000)
spell:needLearn(false)
spell:vocation("paladin;true", "royal paladin;true")
spell:register()
