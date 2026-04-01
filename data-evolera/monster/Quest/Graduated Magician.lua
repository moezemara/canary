local mType = Game.createMonsterType("Graduated Magician")
local monster = {}

monster.description = "a graduated magician"
monster.experience = 4000
monster.outfit = {
	lookType = 130,
	lookHead = 19,
	lookBody = 71,
	lookLegs = 128,
	lookFeet = 128,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 90000000
monster.maxHealth = 90000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 100
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
}

monster.strategiesTarget = {
	nearest = 90,
	defense = 10,
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
	targetDistance = 4,
	runHealth = 1000,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 50, attack = 500},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 30, range = 7, target = 1, attack = -15000000, minDamage = -10000000, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 20, range = 7, radius = 2, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 100, chance = 40, length = 8, spread = 0, minDamage = -30000000, maxDamage = -50000000, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 60, maxDamage = 100},
		{name = "invisible", interval = 2000, chance = 10, duration = 4000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 90},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "ice", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "stone golem", chance = 10, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Learn the secret of our magic! YOUR death!"},
		{text = "Even a rat is a better mage than you."},
		{text = "We don't like intruders!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2185, chance = 993},
	{id = 1986, chance = 777},
	{id = 2600, chance = 10000},
	{id = 2124, chance = 1000},
	{id = 2689, chance = 11000},
	{id = 2167, chance = 3000},
	{id = 2197, chance = 1999},
	{id = 2151, chance = 1100, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 80000, maxCount = 50},
			{id = 2146, chance = 1400, maxCount = 2},
			{id = 2178, chance = 2500},
			{id = 2679, chance = 20000, maxCount = 4},
			{id = 2047, chance = 15000},
			{id = 2411, chance = 5000},
			{id = 2792, chance = 6666, maxCount = 5},
			{id = 2793, chance = 6666, maxCount = 2},
			{id = 7898, chance = 1444},
			{id = 7895, chance = 1222},
			{id = 2466, chance = 1111},
			{id = 2436, chance = 1428},
			{id = 2123, chance = 1000},
		}
	},
}

mType:register(monster)
