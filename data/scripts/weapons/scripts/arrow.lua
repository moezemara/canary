local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ARROW)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_CHAIN_EFFECT, CONST_ME_ORANGE_ENERGY_SPARK)
combat:setFormula(COMBAT_FORMULA_SKILL, 0, 0, 1, 0)
combat:setParameter(COMBAT_PARAM_CASTSOUND, SOUND_EFFECT_TYPE_DIST_ATK_BOW)
combat:setParameter(COMBAT_PARAM_IMPACTSOUND, SOUND_EFFECT_TYPE_DIST_ATK_BOW_SHOT)

function onGetArrowChainValue(creature)
	return 2, 4, false -- (maxTargets, chainDistance, backtracking)
end

function canArrowChain(creature, target)
	if target:isNpc() then
		return false
	end
	if creature == target then
		return false
	end
	if target:getTile():hasFlag(TILESTATE_PROTECTIONZONE) then
		return false
	end
	return true
end

combat:setCallback(CALLBACK_PARAM_CHAINVALUE, "onGetArrowChainValue")
combat:setCallback(CALLBACK_PARAM_CHAINPICKER, "canArrowChain")

local arrow = Weapon(WEAPON_AMMO)

function arrow.onUseWeapon(player, variant)
	return combat:execute(player, variant)
end

arrow:id(3447)
arrow:attack(25)
arrow:action("removecount")
arrow:ammoType("arrow")
arrow:shootType(CONST_ANI_ARROW)
arrow:maxHitChance(91)
arrow:register()
