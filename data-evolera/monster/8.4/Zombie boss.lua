local mType = Game.createMonsterType("zombie Boss")
local monster = {}

monster.description = "a zombie boss"
monster.experience = 280000
monster.outfit = {
	lookType = 311,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8000
monster.maxHealth = 8000
monster.race = "undead"
monster.corpse = 9875
monster.speed = 280
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
		{name = "melee", interval = 2000, minDamage = -500, maxDamage = -1020},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 13, range = 1, minDamage = -2000, maxDamage = -5500},
}

monster.defenses = {
	defense = 10,
	armor = 15,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -40},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "energy", condition = true},
		{type = "ice", condition = true},
		{type = "earth", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Mst.... klll...."},
		{text = "Whrrrr... ssss.... mmm.... grrrrl"},
		{text = "Dnnnt... cmmm... clsrrr...."},
		{text = "Httt.... hmnnsss..."},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 52},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2381, chance = 2857},
			{id = 2398, chance = 10000},
			{id = 2457, chance = 5000},
			{id = 2056, chance = 20000},
			{id = 7620, chance = 4000},
			{id = 9808, chance = 3000},
			{id = 2205, chance = 2000},
		}
	},
}

mType:register(monster)
