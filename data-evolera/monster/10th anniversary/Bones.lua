local mType = Game.createMonsterType("Bones")
local monster = {}

monster.description = "Bones"
monster.experience = 3750
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 9500
monster.maxHealth = 9500
monster.race = "undead"
monster.corpse = 6306
monster.speed = 300
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
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 120, attack = 130},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 13, radius = 1, target = 1, minDamage = -400, maxDamage = -600},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 34, range = 1, radius = 1, target = 1, minDamage = -180, maxDamage = -500, shootEffect = CONST_ANI_DEATH},
}

monster.defenses = {
	defense = 55,
	armor = 50,
		{name = "combat", type = COMBAT_HEALING, interval = 5000, chance = 25, minDamage = 60, maxDamage = 100},
}

monster.immunities = {
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Your new name is breakfast."},
		{text = "Keep that dog away!"},
		{text = "Out Fluffy! Out! Bad dog!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 50000, maxCount = 90},
	{id = 5741, chance = 50000},
	{id = 6500, chance = 1538},
	{id = 6570, chance = 5538, maxCount = 3},
	{id = 6571, chance = 1538},
	{id = 2472, chance = 2000},
	{id = 6300, chance = 4000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5944, chance = 10000},
			{id = 4851, chance = 800},
			{id = 2207, chance = 10000},
			{id = 7430, chance = 50000},
			{id = 2413, chance = 4000},
		}
	},
}

mType:register(monster)
