local mType = Game.createMonsterType("Undead Human")
local monster = {}

monster.description = "a undead human"
monster.experience = 150
monster.outfit = {
	lookType = 323,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 500000000
monster.maxHealth = 500000000
monster.race = "blood"
monster.corpse = 9107
monster.speed = 945
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 20, minDamage = -2500000, maxDamage = -3000000},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 20, length = 8, spread = 3, minDamage = -3000000, maxDamage = -6000000, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 2},
		{type = COMBAT_HOLYDAMAGE, percent = -2},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "drunk", condition = true},
		{type = "drown", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "Take that creature off my back!! I can fell it!"},
		{text = "HEEEEEEEELP!"},
		{text = "You will be the next infected one... GRAAAAAAAAARRR!"},
		{text = "Science... is a curse."},
		{text = "Run as fast as you can."},
		{text = "Oh by the gods! What is this... aaaaaargh!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 3976, chance = 10000, maxCount = 3},
	{id = 2671, chance = 900},
	{id = 2696, chance = 13500},
	{id = 2226, chance = 12500},
	{id = 2484, chance = 3000},
	{id = 2801, chance = 1500},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2406, chance = 4000},
			{id = 2376, chance = 3000},
			{id = 2170, chance = 300},
			{id = 2161, chance = 1500},
			{id = 9808, chance = 2000},
			{id = 7910, chance = 700},
		}
	},
}

mType:register(monster)
