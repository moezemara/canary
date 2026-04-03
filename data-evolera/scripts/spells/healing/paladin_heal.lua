local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local spell = Spell("instant")
function spell.onCastSpell(creature, var)
    local player = Player(creature:getId())
    if not player then return false end
    local heal = math.floor(creature:getMaxHealth() / 100 * math.random(30, 65))
    creature:addHealth(heal)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
    return true
end

spell:group("healing")
spell:id(560)
spell:name("Paladin Heal")
spell:words("exura hyper vita")
spell:level(100)
spell:mana(300)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:isAggressive(false)
spell:cooldown(1 * 500)
spell:groupCooldown(1 * 500)
spell:needLearn(false)
spell:vocation("royal paladin;true")
spell:register()
