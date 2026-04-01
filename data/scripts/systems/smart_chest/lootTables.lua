-- Smart Chest System — Loot Tables
-- Spec §4: Two-stage roll, per-tier exclusive item pools.
-- Each entry: { itemId, weight, minCount, maxCount }
-- Refinement only shifts Stage 1 sub-pool weights (handled in smart_chest.lua).
-- Actual item IDs are from this server's items.xml — tune as needed.

SmartChest.LOOT_POOLS = {

	-- ───────────────────────────────────────
	-- Tier 1: Wooden  (common monsters, everyday items)
	-- ───────────────────────────────────────
	[1] = {
		common = {
			{ itemId = 3031,  weight = 4000, minCount = 100, maxCount = 500  }, -- gold coin
			{ itemId = 266,   weight = 3000, minCount = 5,   maxCount = 15   }, -- health potion
			{ itemId = 268,   weight = 2000, minCount = 5,   maxCount = 15   }, -- mana potion
			{ itemId = 236,   weight = 1000, minCount = 1,   maxCount = 5    }, -- strong health potion
		},
		uncommon = {
			{ itemId = 3056,  weight = 3000, minCount = 1, maxCount = 1 }, -- bronze amulet
			{ itemId = 814,   weight = 2500, minCount = 1, maxCount = 1 }, -- terra amulet
			{ itemId = 3006,  weight = 2000, minCount = 1, maxCount = 1 }, -- ring of the sky
			{ itemId = 7439,  weight = 2500, minCount = 1, maxCount = 3 }, -- berserk potion
		},
		rare = {
			{ itemId = 815,   weight = 3000, minCount = 1, maxCount = 1 }, -- glacier amulet
			{ itemId = 817,   weight = 3000, minCount = 1, maxCount = 1 }, -- magma amulet
			{ itemId = 660,   weight = 4000, minCount = 1, maxCount = 1 }, -- fiery spike sword
		},
	},

	-- ───────────────────────────────────────
	-- Tier 2: Silver  (mini-boss / daily task rewards)
	-- ───────────────────────────────────────
	[2] = {
		common = {
			{ itemId = 236,   weight = 4000, minCount = 5,  maxCount = 20  }, -- strong health potion
			{ itemId = 237,   weight = 3000, minCount = 5,  maxCount = 20  }, -- strong mana potion
			{ itemId = 238,   weight = 2000, minCount = 3,  maxCount = 10  }, -- great mana potion
			{ itemId = 239,   weight = 1000, minCount = 1,  maxCount = 5   }, -- great health potion
		},
		uncommon = {
			{ itemId = 3013,  weight = 3000, minCount = 1, maxCount = 1 }, -- golden amulet
			{ itemId = 3014,  weight = 2500, minCount = 1, maxCount = 1 }, -- star amulet
			{ itemId = 3007,  weight = 2500, minCount = 1, maxCount = 1 }, -- crystal ring
			{ itemId = 7443,  weight = 2000, minCount = 1, maxCount = 3 }, -- bullseye potion
		},
		rare = {
			{ itemId = 679,   weight = 3000, minCount = 1, maxCount = 1 }, -- icy spike sword
			{ itemId = 779,   weight = 3000, minCount = 1, maxCount = 1 }, -- earth spike sword
			{ itemId = 794,   weight = 4000, minCount = 1, maxCount = 1 }, -- energy spike sword
		},
	},

	-- ───────────────────────────────────────
	-- Tier 3: Golden  (rare boss / task system)
	-- ───────────────────────────────────────
	[3] = {
		common = {
			{ itemId = 239,   weight = 4000, minCount = 10, maxCount = 30  }, -- great health potion
			{ itemId = 238,   weight = 3000, minCount = 10, maxCount = 30  }, -- great mana potion
			{ itemId = 7439,  weight = 2000, minCount = 3,  maxCount = 8   }, -- berserk potion
			{ itemId = 7443,  weight = 1000, minCount = 3,  maxCount = 8   }, -- bullseye potion
		},
		uncommon = {
			{ itemId = 3021,  weight = 3000, minCount = 1, maxCount = 1 }, -- sapphire amulet
			{ itemId = 3019,  weight = 2500, minCount = 1, maxCount = 1 }, -- demonbone amulet
			{ itemId = 3018,  weight = 2500, minCount = 1, maxCount = 1 }, -- scarab amulet
			{ itemId = 3025,  weight = 2000, minCount = 1, maxCount = 1 }, -- ancient amulet
		},
		rare = {
			{ itemId = 661,   weight = 2500, minCount = 1, maxCount = 1 }, -- fiery relic sword
			{ itemId = 680,   weight = 2500, minCount = 1, maxCount = 1 }, -- icy relic sword
			{ itemId = 780,   weight = 2500, minCount = 1, maxCount = 1 }, -- earth relic sword
			{ itemId = 795,   weight = 2500, minCount = 1, maxCount = 1 }, -- energy relic sword
		},
	},

	-- ───────────────────────────────────────
	-- Tier 4: Obsidian  (weekly event boss, shadow gear)
	-- ───────────────────────────────────────
	[4] = {
		common = {
			{ itemId = 7643,  weight = 4000, minCount = 5,  maxCount = 15  }, -- ultimate health potion
			{ itemId = 3740,  weight = 3000, minCount = 10, maxCount = 30  }, -- shadow herb
			{ itemId = 6499,  weight = 2000, minCount = 1,  maxCount = 3   }, -- demonic essence
			{ itemId = 7439,  weight = 1000, minCount = 5,  maxCount = 15  }, -- berserk potion
		},
		uncommon = {
			{ itemId = 812,   weight = 3000, minCount = 1, maxCount = 1 }, -- terra legs
			{ itemId = 813,   weight = 3000, minCount = 1, maxCount = 1 }, -- terra boots
			{ itemId = 820,   weight = 2000, minCount = 1, maxCount = 1 }, -- lightning boots
			{ itemId = 822,   weight = 2000, minCount = 1, maxCount = 1 }, -- lightning legs
		},
		rare = {
			{ itemId = 663,   weight = 2500, minCount = 1, maxCount = 1 }, -- fiery blacksteel sword
			{ itemId = 682,   weight = 2500, minCount = 1, maxCount = 1 }, -- icy blacksteel sword
			{ itemId = 782,   weight = 2500, minCount = 1, maxCount = 1 }, -- earth blacksteel sword
			{ itemId = 797,   weight = 2500, minCount = 1, maxCount = 1 }, -- energy blacksteel sword
		},
	},

	-- ───────────────────────────────────────
	-- Tier 5: Crimson  (world boss / guild event)
	-- ───────────────────────────────────────
	[5] = {
		common = {
			{ itemId = 23375, weight = 4000, minCount = 5,  maxCount = 20  }, -- supreme health potion
			{ itemId = 7643,  weight = 3000, minCount = 20, maxCount = 50  }, -- ultimate health potion
			{ itemId = 6499,  weight = 2000, minCount = 3,  maxCount = 10  }, -- demonic essence
			{ itemId = 7439,  weight = 1000, minCount = 10, maxCount = 25  }, -- berserk potion
		},
		uncommon = {
			{ itemId = 860,   weight = 3000, minCount = 1, maxCount = 1 }, -- crimson sword
			{ itemId = 919,   weight = 2500, minCount = 1, maxCount = 1 }, -- hallowed axe
			{ itemId = 817,   weight = 2500, minCount = 1, maxCount = 1 }, -- magma amulet
			{ itemId = 818,   weight = 2000, minCount = 1, maxCount = 1 }, -- magma boots
		},
		rare = {
			{ itemId = 669,   weight = 2500, minCount = 1, maxCount = 1 }, -- fiery war axe
			{ itemId = 688,   weight = 2500, minCount = 1, maxCount = 1 }, -- icy war axe
			{ itemId = 788,   weight = 2500, minCount = 1, maxCount = 1 }, -- earth war axe
			{ itemId = 805,   weight = 2500, minCount = 1, maxCount = 1 }, -- energy war axe
		},
	},

	-- ───────────────────────────────────────
	-- Tier 6: Celestial  (world boss only, monthly cap)
	-- ───────────────────────────────────────
	[6] = {
		common = {
			{ itemId = 23375, weight = 4000, minCount = 10, maxCount = 30  }, -- supreme health potion
			{ itemId = 51302, weight = 3000, minCount = 1,  maxCount = 3   }, -- transcendence potion
			{ itemId = 7643,  weight = 2000, minCount = 30, maxCount = 100 }, -- ultimate health potion
			{ itemId = 6499,  weight = 1000, minCount = 5,  maxCount = 15  }, -- demonic essence
		},
		uncommon = {
			{ itemId = 51304, weight = 3000, minCount = 1, maxCount = 1 }, -- transcendent headband
			{ itemId = 51305, weight = 2500, minCount = 1, maxCount = 1 }, -- transcendent robe
			{ itemId = 51306, weight = 2500, minCount = 1, maxCount = 1 }, -- transcendent trousers
			{ itemId = 51307, weight = 2000, minCount = 1, maxCount = 1 }, -- transcendent footwraps
		},
		rare = {
			{ itemId = 51308, weight = 4000, minCount = 1, maxCount = 1 }, -- transcendent bo
			{ itemId = 23474, weight = 3000, minCount = 1, maxCount = 1 }, -- tiara of power
			{ itemId = 51303, weight = 3000, minCount = 1, maxCount = 1 }, -- transcendent box
		},
	},
}
