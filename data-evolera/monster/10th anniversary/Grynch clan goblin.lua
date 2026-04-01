local mType = Game.createMonsterType("Grynch Clan Goblin")
local monster = {}

monster.description = "a Grynch Clan Goblin"
monster.experience = 4
monster.outfit = {
	lookType = 61,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 6002
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 0,
	defense = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 0,
	targetDistance = 7,
	runHealth = 80,
}

monster.defenses = {
	defense = 12,
	armor = 10,
		{name = "speed", interval = 1000, chance = 15, speedchange = 500, duration = 5000},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "T'was not me hand in your pocket!"},
		{text = "Look! Cool stuff in house. Let's get it!"},
		{text = "Uhh! Nobody home!"},
		{text = "Me just borrowed it!"},
		{text = "Me no steal! Me found it!"},
		{text = "Me had it for five minutes. It's family heirloom now!"},
		{text = "Nice human won't hurt little, good goblin?"},
		{text = "Gimmegimme!"},
		{text = "Invite me in you lovely house plx!"},
		{text = "Other Goblin stole it!"},
		{text = "All presents mine!"},
		{text = "Me got ugly ones purse"},
		{text = "Free itans plz!"},
		{text = "Not me! Not me!"},
		{text = "Guys, help me here! Guys? Guys???"},
		{text = "That only much dust in me pocket! Honest!"},
		{text = "Can me have your stuff?"},
		{text = "Halp, Big dumb one is after me!"},
		{text = "Uh, So many shiny things!"},
		{text = "Utani hur hur hur!"},
		{text = "Mee? Stealing? Never!!!"},
		{text = "Oh what fun it is to steal a one-horse open sleigh!"},
		{text = "Must have it! Must have it!"},
		{text = "Where me put me lockpick?"},
		{text = "Catch me if you can!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 16},
	{id = 2676, chance = 1050, maxCount = 100},
	{id = 6501, chance = 13256, maxCount = 2},
	{id = 2675, chance = 13256, maxCount = 3},
	{id = 2687, chance = 13256, maxCount = 5},
	{id = 2679, chance = 13256, maxCount = 4},
	{id = 2674, chance = 13256, maxCount = 3},
	{id = 2678, chance = 1050, maxCount = 19},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2695, chance = 20000, maxCount = 2},
			{id = 2688, chance = 20000, maxCount = 3},
			{id = 6394, chance = 20000},
			{id = 6393, chance = 20000},
			{id = 2111, chance = 20000, maxCount = 5},
			{id = 6497, chance = 100000},
			{id = 6277, chance = 20000},
		}
	},
	{
		id = 1988, chance = 100000,
		childs = {
			{id = 2260, chance = 10000},
			{id = 2163, chance = 20000},
			{id = 4839, chance = 20000},
			{id = 1852, chance = 10000},
			{id = 2172, chance = 10000},
			{id = 1949, chance = 10000},
			{id = 2661, chance = 10000},
			{id = 5890, chance = 20000, maxCount = 5},
			{id = 5894, chance = 20000, maxCount = 3},
			{id = 5902, chance = 10000},
			{id = 6091, chance = 10000},
			{id = 2551, chance = 10000},
			{id = 2114, chance = 500},
			{id = 5792, chance = 10000},
			{id = 2560, chance = 10000},
			{id = 1684, chance = 10000},
			{id = 4873, chance = 10000},
			{id = 2102, chance = 10000},
			{id = 2159, chance = 1000},
			{
				id = 1987, chance = 100000,
				childs = {
					{id = 5900, chance = 10000},
					{id = 5022, chance = 10000},
					{id = 2160, chance = 100},
					{id = 2534, chance = 500},
				}
			},
		}
	},
}

mType:register(monster)
