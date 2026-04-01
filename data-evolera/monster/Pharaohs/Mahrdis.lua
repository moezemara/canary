local mType = Game.createMonsterType("Mahrdis")
local monster = {}

monster.description = "Mahrdis"
monster.experience = 3050
monster.outfit = {
	lookType = 89,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3900
monster.maxHealth = 3900
monster.race = "fire"
monster.corpse = 6025
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
		{name = "melee", interval = 2000, skill = 100, attack = 90},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 10, radius = 3, target = 0, minDamage = -150, maxDamage = -800, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 8, range = 7, target = 1, minDamage = -300, maxDamage = -600, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "speed", interval = 1000, chance = 12, range = 7, speedchange = -850, duration = 50000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 8, radius = 5, target = 0, effect = CONST_ME_YELLOWSPARK},
}

monster.defenses = {
	defense = 30,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 20, maxDamage = 800},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "fire", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "fire elemental", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ashes to ashes!"},
		{text = "Fire, Fire!"},
		{text = "The eternal flame demands its due!"},
		{text = "Burnnnnnnnnn!"},
		{text = "May my flames engulf you!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 2222},
	{id = 2146, chance = 1600},
	{id = 2353, chance = 100000},
	{id = 2148, chance = 100000, maxCount = 30},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2141, chance = 900},
			{id = 2539, chance = 1400},
			{id = 7591, chance = 3000},
			{id = 2432, chance = 2300},
			{id = 2147, chance = 10000, maxCount = 3},
		}
	},
}

mType:register(monster)
