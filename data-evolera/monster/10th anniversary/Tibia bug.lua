local mType = Game.createMonsterType("Tibia Bug")
local monster = {}

monster.description = "a tibia bug"
monster.experience = 50
monster.outfit = {
	lookType = 45,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 270
monster.maxHealth = 270
monster.race = "venom"
monster.corpse = 5990
monster.speed = 240
monster.manaCost = 250

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, skill = 43, attack = 20},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 13, length = 4, spread = 0, minDamage = -5, maxDamage = -35, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 15,
	armor = 10,
		{name = "invisible", interval = 1000, chance = 17, duration = 2000},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "drunk", condition = true},
}

monster.summons = {
		{name = "tibia bug", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "My father was a year 2k bug."},
		{text = "Psst, I'll make you rich."},
		{text = "You are bugged ... by me!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 11},
	{id = 6570, chance = 5538},
	{id = 6571, chance = 1538},
}

mType:register(monster)
