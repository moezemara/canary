local mType = Game.createMonsterType("Deadeye Devious")
local monster = {}

monster.description = "deadeye devious"
monster.experience = 500
monster.outfit = {
	lookType = 151,
	lookHead = 115,
	lookBody = 76,
	lookLegs = 35,
	lookFeet = 117,
	lookAddons = 2,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2000
monster.maxHealth = 2000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -250, maxDamage = -550},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 4000, chance = 60, minDamage = -200, maxDamage = -250, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 50,
	armor = 35,
		{name = "combat", type = COMBAT_HEALING, interval = 6000, chance = 65, minDamage = 200, maxDamage = 250},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Let's kill 'em"},
		{text = "Arrrgh!"},
		{text = "You'll never take me alive!"},
}

monster.loot = {
	{id = 6102, chance = 100000},
	{id = 2148, chance = 100000, maxCount = 65},
	{id = 2476, chance = 1200},
	{id = 2463, chance = 4000},
	{id = 2320, chance = 100000, maxCount = 2},
	{id = 5926, chance = 4000},
	{id = 2666, chance = 100000},
}

mType:register(monster)
