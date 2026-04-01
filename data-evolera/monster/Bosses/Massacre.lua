local mType = Game.createMonsterType("Massacre")
local monster = {}

monster.description = "the massacre"
monster.experience = 9800
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 6336
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
		{name = "melee", interval = 2000, skill = 150, attack = 150},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 24, range = 7, minDamage = -280, maxDamage = -500, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "speed", interval = 2000, chance = 12, speedchange = 380, duration = 4000},
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

monster.loot = {
	{id = 6540, chance = 100000},
}

mType:register(monster)
