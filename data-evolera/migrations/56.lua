function onUpdateDatabase()
	logger.info("Updating database to version 56 (pvp exp system: guild_kill_stats + exp_bonus_guild)")

	-- Create guild weekly kill tracking table
	db.query([[
		CREATE TABLE IF NOT EXISTS `guild_kill_stats` (
			`guild_id`  INT UNSIGNED NOT NULL,
			`week`      INT UNSIGNED NOT NULL,
			`kills`     INT UNSIGNED NOT NULL DEFAULT 0,
			PRIMARY KEY (`guild_id`, `week`),
			INDEX `idx_week_kills` (`week`, `kills` DESC)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	]])

	-- Add personal guild exp bonus column (guarded to be idempotent)
	local res = db.storeQuery("SHOW COLUMNS FROM `players` LIKE 'exp_bonus_guild'")
	if not res then
		db.query("ALTER TABLE `players` ADD COLUMN `exp_bonus_guild` FLOAT NOT NULL DEFAULT 0")
		logger.info("Added exp_bonus_guild column to players table")
	else
		Result.free(res)
		logger.warn("exp_bonus_guild column already exists, skipping")
	end
end
