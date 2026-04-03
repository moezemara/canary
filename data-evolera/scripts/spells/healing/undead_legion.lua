local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onTargetTile_undeadLegion(creature, position)
    local tile = Tile(position)
    if not tile then return end
    local topCreature = tile:getTopCreature()
    if topCreature and topCreature:isMonster() and topCreature:getHealth() <= 0 then
        topCreature:remove()
        local skeleton = Game.createMonster("Skeleton", position)
        if skeleton then
            creature:convinceCreature(skeleton)
        end
        position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
    end
end

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    return combat:execute(creature, var)
end

spell:group("support")
spell:id(566)
spell:name("Undead Legion")
spell:words("exana mas mort")
spell:level(30)
spell:mana(500)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:isAggressive(false)
spell:cooldown(1 * 500)
spell:groupCooldown(1 * 500)
spell:needLearn(false)
spell:vocation("druid;true", "elder druid;true")
spell:register()
