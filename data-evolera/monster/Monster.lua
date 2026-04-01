local mType = Game.createMonsterType("Monster")
local monster = {}

monster.description = "Spawns"
monster.experience = 0
monster.outfit = {
	lookType = 309,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 795
monster.maxHealth = 795
monster.race = "blood"
monster.corpse = 12507
monster.speed = 100
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 1, attack = 0},
}

monster.defenses = {
	defense = 18,
	armor = 25,
		{name = "outfit", interval = 180, chance = 10},
		{name = "outfit", interval = 280, chance = 10},
		{name = "outfit", interval = 320, chance = 10},
		{name = "outfit", interval = 422, chance = 10},
		{name = "outfit", interval = 299, chance = 10},
		{name = "outfit", interval = 315, chance = 10},
		{name = "outfit", interval = 368, chance = 10},
		{name = "outfit", interval = 510, chance = 10},
		{name = "outfit", interval = 100, chance = 10},
		{name = "outfit", interval = 508, chance = 10},
		{name = "outfit", interval = 740, chance = 10},
		{name = "outfit", interval = 370, chance = 10},
		{name = "outfit", interval = 600, chance = 10},
		{name = "outfit", interval = 333, chance = 10},
		{name = "outfit", interval = 450, chance = 10},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
