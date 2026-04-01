local mType = Game.createMonsterType("quara mantassin scout")
local monster = {}

monster.description = "a quara mantassin scout"
monster.experience = 100
monster.outfit = {
	lookType = 72,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 220
monster.maxHealth = 220
monster.race = "blood"
monster.corpse = 6064
monster.speed = 270
monster.manaCost = 480

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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, skill = 60, attack = 55},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "invisible", interval = 1000, chance = 30, duration = 5000},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Zuerk Pachak!"},
		{text = "Shrrrr"},
}

monster.loot = {
	{id = 2670, chance = 20000, maxCount = 5},
	{id = 5895, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2377, chance = 1818},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5895, chance = 3333},
			{id = 2229, chance = 4000},
			{id = 2165, chance = 1250},
			{id = 2146, chance = 1400},
		}
	},
}

mType:register(monster)
