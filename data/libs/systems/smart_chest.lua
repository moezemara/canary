-- Smart Chest System — Core Library
-- Phase 1+2+3+5 constants, DB helpers, and shared logic
-- Spec: smart_chest_system_v2.md

SmartChest = {}

-- ═══════════════════════════════════════════
--              ITEM IDs
-- ═══════════════════════════════════════════

-- Chests (one per tier, quality encoded via actionid)
SmartChest.CHEST_IDS = {
	[1] = 51296, -- Wooden
	[2] = 51297, -- Silver
	[3] = 51298, -- Golden
	[4] = 51299, -- Obsidian
	[5] = 51300, -- Crimson
	[6] = 51301, -- Celestial
}

-- Keys (one per tier)
SmartChest.KEY_IDS = {
	[1] = 51307, -- Iron Key   → Wooden
	[2] = 51306, -- Silver Key → Silver
	[3] = 51303, -- Golden Key → Golden
	[4] = 51305, -- Shadow Key → Obsidian
	[5] = 51304, -- Infernal Key → Crimson (drop only)
	[6] = 51302, -- Astral Key → Celestial (drop only)
}

SmartChest.SHARD_ID = 51308  -- Arcane Shard

-- Reverse lookup: item ID → tier
SmartChest.CHEST_TIER = {}
SmartChest.KEY_TIER   = {}
for tier, id in pairs(SmartChest.CHEST_IDS) do
	SmartChest.CHEST_TIER[id] = tier
end
for tier, id in pairs(SmartChest.KEY_IDS) do
	SmartChest.KEY_TIER[id] = tier
end

-- ═══════════════════════════════════════════
--              ACTIONID ENCODING
-- ═══════════════════════════════════════════

-- actionid = 1000 + (tier-1)*10 + quality_offset
-- quality_offset: 0=Intact, 1=Exceptional, 2=Flawless, 3=Radiant

SmartChest.QUALITY_INTACT     = 0
SmartChest.QUALITY_EXCEPTIONAL = 1
SmartChest.QUALITY_FLAWLESS   = 2
SmartChest.QUALITY_RADIANT    = 3

SmartChest.QUALITY_NAMES = {
	[0] = "Intact",
	[1] = "Exceptional",
	[2] = "Flawless",
	[3] = "Radiant",
}

function SmartChest.getActionId(tier, quality)
	return 1000 + (tier - 1) * 10 + quality
end

function SmartChest.getTierAndQuality(actionId)
	if actionId < 1000 or actionId > 1053 then
		return nil, nil
	end
	local offset = actionId - 1000
	local tier    = math.floor(offset / 10) + 1
	local quality = offset % 10
	if tier < 1 or tier > 6 or quality > 3 then
		return nil, nil
	end
	return tier, quality
end

-- ═══════════════════════════════════════════
--              QUALITY WEIGHTS (Stage 1)
-- ═══════════════════════════════════════════

-- Total is always 10000
SmartChest.QUALITY_WEIGHTS = {
	[0] = { common = 7600, uncommon = 2200, rare = 200  },  -- Intact
	[1] = { common = 7000, uncommon = 2600, rare = 400  },  -- Exceptional
	[2] = { common = 6700, uncommon = 2700, rare = 600  },  -- Flawless
	[3] = { common = 6000, uncommon = 3000, rare = 1000 },  -- Radiant
}

-- ═══════════════════════════════════════════
--              FORTUNE COUNTER
-- ═══════════════════════════════════════════

SmartChest.FORTUNE_CAP = {
	[1] = 80, [2] = 80, [3] = 80,
	[4] = 80, [5] = 40, [6] = 40,
}

-- ═══════════════════════════════════════════
--              SHARD DROP RANGES
-- ═══════════════════════════════════════════

SmartChest.SHARD_RANGE = {
	[1] = { min = 1,  max = 3  },
	[2] = { min = 2,  max = 5  },
	[3] = { min = 4,  max = 9  },
	[4] = { min = 8,  max = 18 },
	[5] = { min = 15, max = 35 },
	[6] = { min = 25, max = 60 },
}

-- ═══════════════════════════════════════════
--              REFINEMENT COSTS
-- ═══════════════════════════════════════════

-- [tier] = { exceptional, flawless, radiant }  (cumulative from Intact)
SmartChest.REFINE_COSTS = {
	[1] = { 8,   18,  40  },
	[2] = { 12,  28,  60  },
	[3] = { 18,  42,  90  },
	[4] = { 28,  65,  140 },
	[5] = { 45,  105, 220 },
	[6] = { 70,  160, 340 },
}

-- Returns the shard delta cost to go from currentQuality → targetQuality
function SmartChest.getRefineCost(tier, currentQuality, targetQuality)
	local costs = SmartChest.REFINE_COSTS[tier]
	local base   = currentQuality > 0 and costs[currentQuality] or 0
	return costs[targetQuality] - base
end

-- ═══════════════════════════════════════════
--              KEY CRAFTING COSTS
-- ═══════════════════════════════════════════

-- Tiers 5 and 6 are uncraftable (drop only)
SmartChest.KEY_CRAFT_COSTS = {
	[1] = 40,  -- Iron Key
	[2] = 40,  -- Silver Key
	[3] = 80,  -- Golden Key
	[4] = 150, -- Shadow Key
}

-- ═══════════════════════════════════════════
--              CHEST FUSION
-- ═══════════════════════════════════════════

SmartChest.FUSION_COST         = 120  -- shards per fusion
SmartChest.FUSION_MAX_TIER     = 3    -- Golden (3) → Obsidian (4) is max
SmartChest.FUSION_INPUT_COUNT  = 3    -- must provide exactly 3 matching chests

-- ═══════════════════════════════════════════
--              EXCHANGE
-- ═══════════════════════════════════════════

SmartChest.EXCHANGE_COST      = 300  -- exchange_shards required
SmartChest.EXCHANGE_MAX_TIER  = 4    -- only tiers 1–4 support exchange

-- ═══════════════════════════════════════════
--              TIER NAMES
-- ═══════════════════════════════════════════

SmartChest.TIER_NAMES = {
	[1] = "Wooden",
	[2] = "Silver",
	[3] = "Golden",
	[4] = "Obsidian",
	[5] = "Crimson",
	[6] = "Celestial",
}

-- ═══════════════════════════════════════════
--              DATABASE HELPERS
-- ═══════════════════════════════════════════

-- Ensure the player_chest_state table exists (called on server startup)
function SmartChest.initDatabase()
	db.query([[
		CREATE TABLE IF NOT EXISTS `player_chest_state` (
		  `id`               INT      NOT NULL AUTO_INCREMENT,
		  `player_id`        INT      NOT NULL,
		  `tier`             TINYINT  NOT NULL,
		  `fortune_count`    SMALLINT NOT NULL DEFAULT 0,
		  `exchange_shards`  SMALLINT NOT NULL DEFAULT 0,
		  `total_opens`      INT      NOT NULL DEFAULT 0,
		  PRIMARY KEY (`id`),
		  UNIQUE KEY `player_tier` (`player_id`, `tier`),
		  CONSTRAINT `fk_pcs_player`
		    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
		) ENGINE=InnoDB DEFAULT CHARSET=utf8
	]])
	logger.info("[SmartChest] Database table ready.")
end

-- Returns the row for a player+tier, creating it if absent.
-- Fields: fortune_count, exchange_shards, total_opens
function SmartChest.getState(playerId, tier)
	local resultId = db.storeQuery(string.format(
		"SELECT `fortune_count`, `exchange_shards`, `total_opens` FROM `player_chest_state` WHERE `player_id` = %d AND `tier` = %d",
		playerId, tier
	))

	if resultId then
		local state = {
			fortune_count   = Result.getNumber(resultId, "fortune_count"),
			exchange_shards = Result.getNumber(resultId, "exchange_shards"),
			total_opens     = Result.getNumber(resultId, "total_opens"),
		}
		Result.free(resultId)
		return state
	end

	-- Row doesn't exist yet — insert a fresh one
	db.query(string.format(
		"INSERT INTO `player_chest_state` (`player_id`, `tier`) VALUES (%d, %d)",
		playerId, tier
	))
	return { fortune_count = 0, exchange_shards = 0, total_opens = 0 }
end

-- Persists fortune_count, exchange_shards, total_opens for a player+tier.
function SmartChest.saveState(playerId, tier, fortune_count, exchange_shards, total_opens)
	db.query(string.format(
		"UPDATE `player_chest_state` SET `fortune_count` = %d, `exchange_shards` = %d, `total_opens` = %d WHERE `player_id` = %d AND `tier` = %d",
		fortune_count, exchange_shards, total_opens, playerId, tier
	))
end

-- ═══════════════════════════════════════════
--              ROLL HELPERS
-- ═══════════════════════════════════════════

-- Stage 1: pick a sub-pool ('common'|'uncommon'|'rare') based on quality weights.
-- If forcedRare is true the result is always 'rare'.
function SmartChest.rollSubPool(quality, forcedRare)
	if forcedRare then
		return "rare"
	end
	local w      = SmartChest.QUALITY_WEIGHTS[quality]
	local roll   = math.random(1, 10000)
	if roll <= w.rare then
		return "rare"
	elseif roll <= w.rare + w.uncommon then
		return "uncommon"
	end
	return "common"
end

-- Stage 2: pick one item from a sub-pool using weight-based selection.
-- pool = array of { itemId, weight, minCount, maxCount }
-- Returns { itemId, count }
function SmartChest.rollItem(pool)
	local totalWeight = 0
	for _, entry in ipairs(pool) do
		totalWeight = totalWeight + entry.weight
	end
	local roll = math.random(1, totalWeight)
	local accumulated = 0
	for _, entry in ipairs(pool) do
		accumulated = accumulated + entry.weight
		if roll <= accumulated then
			local count = math.random(entry.minCount, entry.maxCount)
			return { itemId = entry.itemId, count = count }
		end
	end
	-- Fallback (should never occur if weights are positive)
	local last = pool[#pool]
	return { itemId = last.itemId, count = math.random(last.minCount, last.maxCount) }
end

-- Roll shards for a single open of the given tier
function SmartChest.rollShards(tier)
	local r = SmartChest.SHARD_RANGE[tier]
	return math.random(r.min, r.max)
end

-- ═══════════════════════════════════════════
--              ITEM DELIVERY
-- ═══════════════════════════════════════════

-- Adds an item to the player's inventory; overflows to ground.
function SmartChest.giveItem(player, itemId, count)
	local item = player:addItem(itemId, count)
	if not item then
		-- Inventory full — drop at feet
		local pos = player:getPosition()
		Game.createItem(itemId, count, pos)
	end
end

-- ═══════════════════════════════════════════
--              INVENTORY HELPERS
-- ═══════════════════════════════════════════

-- Returns a list of items with matching itemId from the player's entire inventory (recursive).
-- Searches the main backpack slot only (items carried in hand/equipment slots are excluded).
function SmartChest.getInventoryItems(player, itemId)
	local result = {}
	local backpack = player:getSlotItem(CONST_SLOT_BACKPACK)
	if not backpack or not backpack.isContainer or not backpack:isContainer() then
		return result
	end
	local all = backpack:getItems(true)
	for _, item in ipairs(all) do
		if item:getId() == itemId then
			table.insert(result, item)
		end
	end
	return result
end
