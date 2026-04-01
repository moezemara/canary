local mType = Game.createMonsterType("Undead Jester")
local monster = {}

monster.description = "a undead jester"
monster.experience = 190000
monster.outfit = {
	lookType = 273,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 114,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 205000
monster.maxHealth = 205000
monster.race = "undead"
monster.corpse = 3058
monster.speed = 265
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
		{name = "melee", interval = 2000, skill = 50, attack = 3000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 40, range = 1, minDamage = -300, maxDamage = -400},
		{name = "speed", interval = 1000, chance = 10, range = 7, speedchange = -6000, duration = 10000, effect = CONST_ME_REDSHIMMER},
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
		{name = "Cave Rat", chance = 50, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Pull my finger!"},
		{text = "Why did the chicken cross the road? TO KILL YOU!!!"},
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
	{id = 2667, chance = 10000},
	{id = 5909, chance = 10000},
	{id = 5910, chance = 10000},
	{id = 5911, chance = 10000},
	{id = 5912, chance = 10000},
	{id = 5913, chance = 10000},
	{id = 5914, chance = 10000},
	{id = 2114, chance = 10000},
	{id = 7158, chance = 10000},
	{id = 7159, chance = 10000},
	{id = 6574, chance = 10000},
	{id = 7374, chance = 10000},
}

mType:register(monster)
