local mType = Game.createMonsterType("Niszczyciel")
local monster = {}

monster.description = "a Niszczyciel(Level 1000). He is a Super Paladin. He is Member of PK SQD"
monster.experience = 150000
monster.outfit = {
	lookType = 128,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 99000
monster.maxHealth = 99000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 100,
	targetDistance = 3,
	runHealth = 500,
}

monster.attacks = {
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, range = 6, minDamage = -20, maxDamage = -320, shootEffect = CONST_ANI_ARROW},
		{name = "Rage of the Skies", interval = 2000, chance = 100},
}

monster.defenses = {
	defense = 52,
	armor = 27,
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "energy", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2160, chance = 100000, maxCount = 10},
	{id = 1949, chance = 10000},
	{id = 2467, chance = 10000},
	{id = 2642, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2044, chance = 6666},
			{id = 2689, chance = 20000, maxCount = 3},
			{id = 2166, chance = 1428},
		}
	},
}

mType:register(monster)
