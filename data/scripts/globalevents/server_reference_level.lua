-- server_reference_level.lua
-- Updates the server reference level every 30 minutes.
-- The reference level is the average of the top-10 online players by level.
-- It is stored in global KV under kv.scoped("server"):set("reference_level", N)
-- and is read by CatchUp.getMultiplier() in exp_bonus.lua.

local REFERENCE_SAMPLE = 10  -- average top-N players' levels

local function updateReferenceLevel()
	local players = Game.getPlayers()
	if #players == 0 then return end

	table.sort(players, function(a, b) return a:getLevel() > b:getLevel() end)

	local sample = math.min(REFERENCE_SAMPLE, #players)
	local sum = 0
	for i = 1, sample do
		sum = sum + players[i]:getLevel()
	end
	local avg = math.floor(sum / sample)

	kv.scoped("server"):set("reference_level", avg)
	logger.trace("[ReferenceLevel] Updated to {} (sample size {})", avg, sample)
end

-- Seed on startup so CatchUp works before the first 30-min tick
local refLevelStartup = GlobalEvent("ReferenceLevelStartup")

function refLevelStartup.onStartup()
	-- Seed only if no value is present yet (avoid overwriting a persisted value)
	if not kv.scoped("server"):get("reference_level") then
		kv.scoped("server"):set("reference_level", 1)
		logger.info("[ReferenceLevel] Seeded to 1 on startup (no online players yet)")
	end
end

refLevelStartup:register()

-- Periodic updater: every 30 minutes
local refLevelInterval = GlobalEvent("ReferenceLevelInterval")

function refLevelInterval.onThink(interval)
	updateReferenceLevel()
	return true
end

refLevelInterval:interval(30 * 60 * 1000)  -- 30 minutes in milliseconds
refLevelInterval:register()
