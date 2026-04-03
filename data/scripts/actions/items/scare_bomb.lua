-- Scare Bomb
-- 3594 (pumpkin) = inactive
-- 3593 (melon)   = ticking, armed
--
-- Flow:
--   1. Double-click pumpkin anywhere (backpack, ground, container) → transforms to ticking melon.
--   2. Drag the melon and drop it on a tile → disappears, effect triggers there (skipped in PZ).
--   3. Don't throw it within 3 seconds → it goes off where it is (your feet if in inventory,
--      or the tile/container it was left on).
--
-- Effect (outside PZ only):
--   Instant : ghost smoke + yellow rings on 3x3  ← "GET OUT" warning
--   +1 second: ghostly scratch across the 3x3
--   Players in the 3x3 are scared (say "AAAHH!" and get briefly slowed)

local BOMB_INACTIVE = 3594 -- pumpkin
local BOMB_TICKING  = 3593 -- melon
local FUSE_MS       = 3000
local SCARE_MOVES         = 4    -- number of forced random steps
local SCARE_MOVE_INTERVAL = 600  -- ms between each forced step (respect movement speed limits)

-- Direction offsets for NORTH/EAST/SOUTH/WEST (indices 0-3)
local DIR_OFFSET = {
	[0] = { x =  0, y = -1 }, -- NORTH
	[1] = { x =  1, y =  0 }, -- EAST
	[2] = { x =  0, y =  1 }, -- SOUTH
	[3] = { x = -1, y =  0 }, -- WEST
}

local AREA = {
	{ -1, -1 }, { -1, 0 }, { -1, 1 },
	{  0, -1 }, {  0, 0 }, {  0, 1 },
	{  1, -1 }, {  1, 0 }, {  1, 1 },
}

-- Positions where we just transformed a ground pumpkin → skip the MoveEvent
local groundTransformPos = {}

local function triggerAt(cx, cy, cz)
	local tile = Tile(Position(cx, cy, cz))
	if not tile or tile:hasFlag(TILESTATE_PROTECTIONZONE) then return end

	local center = Position(cx, cy, cz)
	center:sendMagicEffect(CONST_ME_GHOST_SMOKE)

	for _, off in ipairs(AREA) do
		Position(cx + off[1], cy + off[2], cz):sendMagicEffect(CONST_ME_YELLOW_RINGS)
	end

	-- +1 second: ghostly scratch + scare players who didn't dodge
	addEvent(function()
		for _, off in ipairs(AREA) do
			local pos = Position(cx + off[1], cy + off[2], cz)
			pos:sendMagicEffect(CONST_ME_GHOSTLY_SCRATCH)

			local t = Tile(pos)
			if t and not t:hasFlag(TILESTATE_PROTECTIONZONE) then
				for _, creature in ipairs(t:getCreatures()) do
					if creature:isPlayer() then
						creature:say("AAAHH!", TALKTYPE_MONSTER_SAY)
						creature:getPosition():sendMagicEffect(CONST_ME_SLEEP)
						local cid = creature:getId()
						for i = 1, SCARE_MOVES do
							addEvent(function()
								local c = Creature(cid)
								if not c then return end
								local cpos = c:getPosition()

								-- Shuffle all 4 directions, try each until one succeeds
								local dirs = {0, 1, 2, 3}
								for j = 4, 2, -1 do
									local k = math.random(j)
									dirs[j], dirs[k] = dirs[k], dirs[j]
								end
								for _, d in ipairs(dirs) do
									local doff = DIR_OFFSET[d]
									local dest = Tile(Position(cpos.x + doff.x, cpos.y + doff.y, cpos.z))
									if dest and c:move(dest) == RETURNVALUE_NOERROR then
										break
									end
								end
							end, i * SCARE_MOVE_INTERVAL)
						end
					end
				end
			end
		end
	end, 1000)
end

-- ── 1. Activation ─────────────────────────────────────────────────────────────

local activateBomb = Action()

function activateBomb.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- Determine context BEFORE transform (transform may invalidate the item userdata)
	local inPlayerInventory = (fromPosition.x == CONTAINER_POSITION)
	                          and (player:getItemById(BOMB_INACTIVE, true) ~= nil)
	local onGround          = (fromPosition.x ~= CONTAINER_POSITION)
	-- Third case: ground container (CONTAINER_POSITION but not in player's own inventory)

	-- For ground-container case, grab the parent tile position now while we still can
	local groundContainerPos
	if not inPlayerInventory and not onGround then
		local parent = item:getParent()
		if parent then
			groundContainerPos = parent:getPosition()
		end
	end

	local gx, gy, gz = fromPosition.x, fromPosition.y, fromPosition.z

	-- Mark this position so the MoveEvent doesn't double-fire when the transform
	-- causes the melon to "appear" on the tile (only relevant for ground activation)
	if onGround then
		local key = gx .. "," .. gy .. "," .. gz
		groundTransformPos[key] = true
		addEvent(function() groundTransformPos[key] = nil end, 100)
	end

	item:transform(BOMB_TICKING)
	player:say("*tick* *tick* *tick*", TALKTYPE_MONSTER_SAY)

	local pid = player:getId()

	addEvent(function()
		local p   = Player(pid)
		local bomb, pos

		if inPlayerInventory then
			-- Reliable: search player's own inventory by type
			if not p then return end
			bomb = p:getItemById(BOMB_TICKING, true)
			if not bomb then return end  -- already thrown via MoveEvent
			pos  = p:getPosition()

		elseif onGround then
			-- Reliable: search the exact tile by type
			local t = Tile(Position(gx, gy, gz))
			if t then bomb = t:getItemById(BOMB_TICKING) end
			pos = Position(gx, gy, gz)

		elseif groundContainerPos then
			-- Ground container: trigger at the container's tile; best-effort bomb removal
			pos = groundContainerPos
			local t = Tile(pos)
			if t then
				for _, ti in ipairs(t:getItems()) do
					if ti:isContainer() then
						for i = 0, ti:getSize() - 1 do
							local ci = ti:getItem(i)
							if ci and ci:getId() == BOMB_TICKING then
								bomb = ci
								break
							end
						end
					end
					if bomb then break end
				end
			end
		else
			-- Fallback: can't locate the bomb, skip
			return
		end

		if bomb then bomb:remove(1) end
		if p then p:say("BOOO!", TALKTYPE_MONSTER_SAY) end
		if pos then triggerAt(pos.x, pos.y, pos.z) end
	end, FUSE_MS)

	return true
end

activateBomb:id(BOMB_INACTIVE)
activateBomb:register()

-- ── 2. Throw: drag melon from bag and drop it on a tile ───────────────────────

local throwBomb = MoveEvent()

function throwBomb.onAddItem(moveitem, tileitem, position)
	local key = position.x .. "," .. position.y .. "," .. position.z
	if groundTransformPos[key] then
		return true  -- ground-activated transform, fuse timer handles it
	end
	moveitem:remove(1)
	triggerAt(position.x, position.y, position.z)
	return true
end

throwBomb:type("additem")
throwBomb:id(BOMB_TICKING)
throwBomb:register()
