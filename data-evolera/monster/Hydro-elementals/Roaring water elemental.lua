local mType = Game.createMonsterType("Roaring Water Elemental")
local monster = {}

monster.description = "a Roaring Water Elemental"
monster.experience = 1300
monster.outfit = {
	lookType = 11,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1750
monster.maxHealth = 1750
monster.race = "undead"
monster.corpse = 8965
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 15,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 75, attack = 75},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 15, radius = 2, target = 1, minDamage = -240, maxDamage = -320, effect = CONST_ME_BLUEBUBBLE, shootEffect = CONST_ANI_ICE},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
