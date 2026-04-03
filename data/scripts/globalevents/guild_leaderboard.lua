-- guild_leaderboard.lua
-- Fires every Sunday at 00:00:00 server time.
-- Computes top-10 guilds by kills this week, writes personal exp bonuses to DB + KV.
--
-- Bonus table (raw, before size diminishment):
--   Rank 1: +20%  |  Rank 2: +15%  |  Rank 3: +10%
--   Ranks 4-6: +7%  |  Ranks 7-10: +4%
--
-- Size diminishment (anti-monopoly):
--   effectiveBonus = rawBonus / max(1.0, (memberCount / OPTIMAL_SIZE) ^ DIMINISH_FACTOR)
--   OPTIMAL_SIZE = 15 (full bonus at or below this)
--   DIMINISH_FACTOR = 0.5  →  at 30 members: factor = (30/15)^0.5 = 1.414 → effective 1st = +14.1%

local GuildConfig = {
	RANK_BONUSES    = { 0.20, 0.15, 0.10, 0.07, 0.07, 0.07, 0.04, 0.04, 0.04, 0.04 },
	OPTIMAL_SIZE    = 15,
	DIMINISH_FACTOR = 0.5,
}

local function getEffectiveBonus(rawBonus, guild)
	local size   = guild:getMemberCount()
	local factor = math.max(1.0, math.pow(size / GuildConfig.OPTIMAL_SIZE, GuildConfig.DIMINISH_FACTOR))
	return rawBonus / factor
end

local function runLeaderboard()
	local currentWeek = math.floor(os.time() / 604800)

	-- Query top 10 guilds by kills this week
	local result = db.storeQuery(string.format(
		"SELECT guild_id, kills FROM guild_kill_stats WHERE week = %d ORDER BY kills DESC LIMIT 10",
		currentWeek
	))

	-- Reset every player's guild bonus to 0 first (anyone outside top 10 loses bonus)
	db.asyncQuery("UPDATE players SET exp_bonus_guild = 0")

	-- Also clear KV for all online players
	for _, player in ipairs(Game.getPlayers()) do
		player:kv():scoped("exp-bonus"):set("guild", 0)
	end

	if not result then
		logger.info("[GuildLeaderboard] No guild kill data for week {}. All bonuses reset.", currentWeek)
		Game.broadcastMessage(
			"Guild War Leaderboard has reset! No kills recorded this week. Type !exprate to see your bonuses.",
			MESSAGE_EVENT_ADVANCE
		)
		return
	end

	local rank = 1
	local lines = { "=== Guild War Leaderboard ===" }

	repeat
		if rank > 10 then break end

		local guildId  = Result.getNumber(result, "guild_id")
		local kills    = Result.getNumber(result, "kills")
		local guild    = Guild(guildId)
		local rawBonus = GuildConfig.RANK_BONUSES[rank] or 0

		if guild then
			local effBonus = getEffectiveBonus(rawBonus, guild)

			-- Write to all members in DB (covers offline players at next login)
			db.asyncQuery(string.format(
				"UPDATE players SET exp_bonus_guild = %.4f WHERE guild_id = %d",
				effBonus, guildId
			))

			-- Immediately update online members' KV
			for _, member in ipairs(guild:getMembersOnline()) do
				member:kv():scoped("exp-bonus"):set("guild", effBonus)
			end

			lines[#lines + 1] = string.format(
				"  #%d %-20s  %d kills  +%.1f%% exp",
				rank, guild:getName(), kills, effBonus * 100
			)
		else
			-- Guild disbanded — write 0 (already reset above), skip
			lines[#lines + 1] = string.format("  #%d (disbanded guild)  %d kills", rank, kills)
		end

		rank = rank + 1
	until not Result.next(result)

	Result.free(result)

	local leaderboardMsg = table.concat(lines, "\n")
	Game.broadcastMessage(
		"Guild War Leaderboard has reset! Top guilds earn EXP bonuses this week. Type !exprate to see yours.\n" .. leaderboardMsg,
		MESSAGE_EVENT_ADVANCE
	)
	logger.info("[GuildLeaderboard] Week {} snapshot complete. {} guilds ranked.", currentWeek, rank - 1)
end

-- Register: fires daily at 00:00:00, but only executes on Sundays (wday == 1)
local guildLeaderboard = GlobalEvent("GuildLeaderboard")

function guildLeaderboard.onTime(interval)
	-- os.date("*t").wday: 1=Sunday, 2=Monday, ..., 7=Saturday
	if os.date("*t").wday ~= 1 then
		return true
	end
	runLeaderboard()
	return true
end

guildLeaderboard:time("00:00:00")
guildLeaderboard:register()
