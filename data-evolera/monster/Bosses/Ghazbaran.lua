local mType = Game.createMonsterType("Ghazbaran")
local monster = {}

monster.description = "Ghazbaran"
monster.experience = 15000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 123,
	lookLegs = 97,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 60000
monster.maxHealth = 60000
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
	runHealth = 3500,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -500, maxDamage = -2191},
		{name = "melee", interval = 2000, chance = 40, range = 7, radius = 6, target = 0, minDamage = -250, maxDamage = -500, effect = CONST_ME_BLACKSPARK},
		{name = "melee", interval = 3000, chance = 34, range = 7, radius = 1, target = 1, minDamage = -120, maxDamage = -500, shootEffect = CONST_ANI_WHIRLWINDSWORD, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 4000, chance = 30, length = 8, spread = 0, minDamage = -100, maxDamage = -800, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 20, range = 14, radius = 5, target = 0, minDamage = -200, maxDamage = -480, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 4000, chance = 15, range = 7, radius = 13, target = 0, minDamage = -100, maxDamage = -650, effect = CONST_ME_YELLOWSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 4000, chance = 18, radius = 14, target = 0, minDamage = -200, maxDamage = -600, effect = CONST_ME_BLUEBUBBLE},
		{name = "melee", interval = 3000, chance = 15, range = 7, radius = 4, target = 0, minDamage = -200, maxDamage = -750, effect = CONST_ME_ENERGYAREA},
}

monster.defenses = {
	defense = 65,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 3000, chance = 35, minDamage = 300, maxDamage = 800},
		{name = "speed", interval = 4000, chance = 80, speedchange = 440, duration = 6000},
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
		{name = "Deathslicer", chance = 20, interval = 4000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 30,
		{text = "COME HERE AND DIE!"},
		{text = "COME AND GIVE ME SOME AMUSEMENT!", yell = true},
		{text = "IS THAT THE BEST YOU HAVE TO OFFER, TIBIANS?", yell = true},
		{text = "I AM GHAZBARAN OF THE TRIANGLE... AND I AM HERE TO CHALLENGE YOU ALL!", yell = true},
		{text = "FLAWLESS VICTORY!"},
}

monster.loot = {
	{id = 2160, chance = 100000, maxCount = 12},
	{id = 2514, chance = 18000},
	{id = 6300, chance = 12000},
	{id = 5943, chance = 7000},
	{
		id = 2003, chance = 100000,
		childs = {
			{id = 7431, chance = 6000},
			{id = 2393, chance = 60000},
			{id = 2195, chance = 14033},
		}
	},
}

mType:register(monster)
