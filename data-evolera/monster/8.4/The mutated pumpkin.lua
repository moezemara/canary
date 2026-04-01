local mType = Game.createMonsterType("The mutated pumpkin")
local monster = {}

monster.description = "a the mutated pumpkin"
monster.experience = 3400000
monster.outfit = {
	lookType = 292,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 750000
monster.maxHealth = 750000
monster.race = "venom"
monster.corpse = 8960
monster.speed = 500
monster.manaCost = 290

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 95, attack = 50},
}

monster.defenses = {
	defense = 8,
	armor = 6,
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I had the Halloween Hare for breakfast"},
		{text = "Your soul will be mine...wait, wrong line"},
		{text = "Trick or treat? I saw death!"},
		{text = "Fear the spirit of Halloween!"},
		{text = "Wait until I get you!"},
}

monster.loot = {
	{id = 2683, chance = 60000, maxCount = 10},
	{id = 2096, chance = 18000},
	{id = 6492, chance = 10000},
	{id = 6526, chance = 10000},
	{id = 2688, chance = 15000, maxCount = 80},
	{id = 6571, chance = 80000},
	{id = 6574, chance = 10000},
	{id = 8859, chance = 20000},
	{id = 9007, chance = 50000},
	{id = 9020, chance = 15000},
}

mType:register(monster)
