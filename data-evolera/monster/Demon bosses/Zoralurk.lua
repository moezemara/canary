local mType = Game.createMonsterType("Zoralurk")
local monster = {}

monster.description = "Zoralurk"
monster.experience = 30000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 98,
	lookLegs = 86,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 55000
monster.maxHealth = 55000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
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
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 140, attack = 135},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 12, radius = 7, target = 0, minDamage = -600, maxDamage = -900, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, radius = 7, target = 0, minDamage = -400, maxDamage = -800, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 25, range = 7, minDamage = -500, maxDamage = -800, effect = CONST_ME_BLUESHIMMER},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 35, range = 7, radius = 7, target = 1, minDamage = -200, maxDamage = -600, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 65,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 35, minDamage = 300, maxDamage = 800},
		{name = "speed", interval = 4000, chance = 80, speedchange = 440, duration = 6000},
		{name = "outfit", interval = 2000, chance = 10, duration = 10000},
		{name = "outfit", interval = 2000, chance = 10, duration = 10000},
		{name = "outfit", interval = 2000, chance = 10, duration = 10000},
		{name = "outfit", interval = 2000, chance = 10, duration = 10000},
		{name = "outfit", interval = 2000, chance = 10, duration = 10000},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "demon", chance = 50, interval = 4000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 30,
		{text = "I AM ZORALURK, THE DEMON WITH A THOUSAND FACES!", yell = true},
		{text = "BRING IT, COCKROACHES!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 50000, maxCount = 90},
	{id = 2143, chance = 10000, maxCount = 5},
	{id = 2407, chance = 20000},
	{id = 6530, chance = 16000},
	{
		id = 7342, chance = 100000,
		childs = {
			{id = 2641, chance = 7000},
			{id = 2407, chance = 20000},
			{id = 2393, chance = 60000},
			{id = 2195, chance = 16033},
			{id = 2408, chance = 6000},
		}
	},
}

mType:register(monster)
