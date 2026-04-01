local mType = Game.createMonsterType("Yalahal Boss")
local monster = {}

monster.description = "a yalahal boss"
monster.experience = 160000000
monster.outfit = {
	lookType = 309,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3000000
monster.maxHealth = 3000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 550
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
		{name = "melee", interval = 2000, skill = 50, attack = 9000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 40, range = 1, minDamage = -13000, maxDamage = -15000},
		{name = "speed", interval = 1000, chance = 10, range = 7, speedchange = -800, duration = 10000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 14,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 50},
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = -80},
		{type = COMBAT_FIREDAMAGE, percent = 50},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
}

monster.summons = {
		{name = "Zomnie Boss", chance = 50, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hue Se"},
		{text = "Who tha hell your thinking you are defeating?!!"},
		{text = "Who's bad?"},
		{text = "I have a cunning plan!"},
		{text = "Resistance is futile! You will be amused!"},
		{text = "I will teach you all to mock me!"},
		{text = "He who laughs last, Laughs best!"},
		{text = "Ha Ha!"},
		{text = "Doh!"},
		{text = "Zathroth made me do it!"},
		{text = "And now for something completely different!"},
		{text = "You think this is funny now?"},
		{text = "Are we having fun yet?"},
		{text = "Did i do that?"},
		{text = "Th-Th-Th-That's all, folks!"},
		{text = "A zathroth priest, a druid and a paladin walk into a bar..."},
}

monster.loot = {
	{id = 2160, chance = 100000, maxCount = 80},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 8906, chance = 600},
			{id = 8908, chance = 600},
			{id = 2160, chance = 100000, maxCount = 40},
		}
	},
}

mType:register(monster)
