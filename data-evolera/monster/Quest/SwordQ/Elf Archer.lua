local mType = Game.createMonsterType("Elf Archer")
local monster = {}

monster.description = "a elf archer"
monster.experience = 75
monster.outfit = {
	lookType = 64,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2100000000
monster.maxHealth = 2100000000
monster.race = "blood"
monster.corpse = 6012
monster.speed = 325
monster.manaCost = 360

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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 3,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 18},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 100, chance = 100, range = 2, minDamage = -70000000, maxDamage = -80000000, shootEffect = CONST_ANI_ARROW},
}

monster.defenses = {
	defense = 18,
	armor = 7,
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Tha'shi Ab'Dendriel!"},
		{text = "Feel the sting of my arrows!"},
		{text = "Thy blood will quench the soil's thirst!"},
		{text = "Evicor guide my arrow."},
		{text = "Your existence will end here!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2544, chance = 50000, maxCount = 10},
	{id = 2484, chance = 10000},
	{id = 2456, chance = 10000},
	{id = 2681, chance = 20000},
	{
		id = 1987, chance = 6666,
		childs = {
			{id = 2148, chance = 80000, maxCount = 5},
			{id = 2642, chance = 5500},
			{id = 2397, chance = 4000},
			{id = 5921, chance = 5000},
		}
	},
}

mType:register(monster)
