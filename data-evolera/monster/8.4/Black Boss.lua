local mType = Game.createMonsterType("Black Boss")
local monster = {}

monster.description = "Black Boss"
monster.experience = 1
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
monster.health = 120000000
monster.maxHealth = 120000000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 5000
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 15,
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
		{name = "melee", interval = 2000, skill = 100, attack = 300000},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 4000, chance = 18, radius = 8, target = 0, minDamage = -600, maxDamage = -1100, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 30000, chance = 100, range = 4, radius = 4, target = 1, minDamage = -100000, maxDamage = -300000, effect = CONST_ME_TELEPORT},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 5000, chance = 20, range = 2, target = 1, minDamage = -50000, maxDamage = -250000, shootEffect = CONST_ANI_WHIRLWINDSWORD},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 15, length = 8, spread = 0, minDamage = -75000, maxDamage = -300000, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 3000, chance = 18, radius = 6, target = 0, minDamage = -300000, maxDamage = -780, effect = CONST_ME_BIGPLANTS},
}

monster.defenses = {
	defense = 65,
	armor = 70,
		{name = "combat", type = COMBAT_HEALING, interval = 3000, chance = 20, minDamage = 2000, maxDamage = 2500},
		{name = "speed", interval = 4000, chance = 80, speedchange = 440, duration = 6000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 15},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "earth", condition = true},
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Gozzler", chance = 100, interval = 30000, max = 1},
		{name = "Gozzler", chance = 100, interval = 30000, max = 1},
		{name = "Gozzler", chance = 100, interval = 30000, max = 1},
		{name = "Gozzler", chance = 100, interval = 30000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 30,
		{text = "COME AND GIVE ME SOME AMUSEMENT!", yell = true},
		{text = "IS THAT THE BEST YOU HAVE TO OFFER, TIBIANS?", yell = true},
		{text = "I AM GHAZBARAN OF THE TRIANGLE... AND I AM HERE TO CHALLENGE YOU ALL!", yell = true},
		{text = "FLAWLESS VICTORY!"},
}

monster.loot = {
	{id = 2157, chance = 100000},
	{id = 2275, chance = 18000},
	{id = 6300, chance = 12000},
	{id = 7391, chance = 2000},
	{
		id = 2003, chance = 100000,
		childs = {
			{id = 7431, chance = 14000},
			{id = 2393, chance = 60000},
			{id = 2195, chance = 14033},
		}
	},
}

mType:register(monster)
