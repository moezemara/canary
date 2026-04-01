local mType = Game.createMonsterType("Lord of the Elements")
local monster = {}

monster.description = "lord of the elements"
monster.experience = 8000
monster.outfit = {
	lookType = 290,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 10000
monster.maxHealth = 10000
monster.race = "undead"
monster.corpse = 9009
monster.speed = 370
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 110, attack = 115},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 100, maxDamage = 195},
		{name = "outfit", interval = 1500, chance = 40, duration = 3000},
		{name = "outfit", interval = 1500, chance = 40, duration = 3000},
		{name = "outfit", interval = 1500, chance = 40, duration = 3000},
		{name = "outfit", interval = 1500, chance = 40, duration = 3000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 30},
		{type = COMBAT_ENERGYDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "holy", condition = true},
		{type = "earth", condition = true},
		{type = "physical", condition = true},
		{type = "fire", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Blistering Fire fire elemental", chance = 50, interval = 4000, max = 1},
		{name = "Jagged Earth Elemental", chance = 50, interval = 4000, max = 1},
		{name = "Roaring Water Elemental", chance = 50, interval = 4000, max = 1},
		{name = "Overcharged Energy Elemental", chance = 50, interval = 4000, max = 1},
}

monster.loot = {
	{id = 2152, chance = 40000, maxCount = 7},
}

mType:register(monster)
