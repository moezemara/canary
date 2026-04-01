local mType = Game.createMonsterType("Ungreez")
local monster = {}

monster.description = "Ungreez"
monster.experience = 500
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8200
monster.maxHealth = 8200
monster.race = "blood"
monster.corpse = 5995
monster.speed = 280
monster.manaCost = 10000

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
		{name = "melee", interval = 2000, skill = 85, attack = 95},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 13, range = 7, minDamage = 0, maxDamage = -110, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 14, range = 7, radius = 7, target = 1, minDamage = -150, maxDamage = -250, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 18, minDamage = -200, maxDamage = -400, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -300, maxDamage = -380, effect = CONST_ME_PURPLEENERGY},
}

monster.defenses = {
	defense = 55,
	armor = 50,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I'll teach you that even heros can die", yell = true},
		{text = "You wil die Begging like the others did", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 7590, chance = 3000},
	{id = 7591, chance = 3000},
}

mType:register(monster)
