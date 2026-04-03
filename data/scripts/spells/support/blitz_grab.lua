-- Cardinal directions only (no diagonals)
local cardinalDirs = { {x=0,y=-1}, {x=0,y=1}, {x=-1,y=0}, {x=1,y=0} }

-- BFS: find a non-diagonal, walkable, non-PZ path from `from` to `to` within `maxDist` steps.
-- Returns a table of plain-table positions {x,y,z} (excluding `from`, including `to`), or nil.
local function findCardinalPath(from, to, maxDist)
	if from.z ~= to.z then return nil end
	if from.x == to.x and from.y == to.y then return nil end

	local visited = { [from.x .. "," .. from.y] = true }
	local queue = { {x=from.x, y=from.y, path={}} }
	local head = 1

	while head <= #queue do
		local node = queue[head]
		head = head + 1

		if #node.path < maxDist then
			for _, d in ipairs(cardinalDirs) do
				local nx, ny = node.x + d.x, node.y + d.y
				local key = nx .. "," .. ny
				if not visited[key] then
					local newPath = {}
					for i = 1, #node.path do newPath[i] = node.path[i] end
					newPath[#newPath + 1] = {x=nx, y=ny, z=from.z}

					if nx == to.x and ny == to.y then
						return newPath
					end

					-- Only traverse walkable, non-PZ intermediate tiles
					local tile = Tile(Position(nx, ny, from.z))
					if tile and tile:isWalkable(true, false, false, true, false) then
						visited[key] = true
						queue[#queue + 1] = {x=nx, y=ny, path=newPath}
					end
				end
			end
		end
	end

	return nil
end

-- Draw spark effects at each remaining path tile to visualise the chain.
-- fromStep = first path index to draw (increases each pull step → chain shrinks).
local function drawChain(path, fromStep, ekPos)
	for i = fromStep, #path do
		local p = path[i]
		Position(p.x, p.y, p.z):sendMagicEffect(CONST_ME_BLUE_ENERGY_SPARK)
	end
	ekPos:sendMagicEffect(CONST_ME_ORANGE_ENERGY_SPARK)
end

-- Global state: keyed by target creature ID
local blitzGrabActive = {}

local function blitzGrabPullStep(targetId)
	local data = blitzGrabActive[targetId]
	if not data then return end

	local ek     = Creature(data.ekId)
	local target = Creature(targetId)

	-- Clean up if either party disconnected
	if not ek then
		if target then
			target:removeCondition(CONDITION_PARALYZE)
			target:say("The chain snaps!", TALKTYPE_MONSTER_SAY)
		end
		blitzGrabActive[targetId] = nil
		return
	end

	if not target then
		blitzGrabActive[targetId] = nil
		return
	end

	-- If EK moved, break the chain
	local curPos   = ek:getPosition()
	local savedPos = data.ekPos
	if curPos.x ~= savedPos.x or curPos.y ~= savedPos.y or curPos.z ~= savedPos.z then
		target:removeCondition(CONDITION_PARALYZE)
		target:say("The chain breaks!", TALKTYPE_MONSTER_SAY)
		blitzGrabActive[targetId] = nil
		return
	end

	data.step = data.step + 1

	if data.step > #data.path then
		-- Pull complete — release
		target:removeCondition(CONDITION_PARALYZE)
		target:say("Released!", TALKTYPE_MONSTER_SAY)
		blitzGrabActive[targetId] = nil
		return
	end

	-- Move target one step along path (natural walk, not teleport)
	local p        = data.path[data.step]
	local nextPos  = Position(p.x, p.y, p.z)
	local moveTile = Tile(nextPos)
	if moveTile then
		target:move(moveTile)
	end

	-- Distance effect from new position toward EK (pull animation)
	local ekPos = Position(data.ekPos.x, data.ekPos.y, data.ekPos.z)
	nextPos:sendDistanceEffect(ekPos, CONST_ANI_ENERGY)

	-- Redraw chain with one fewer link — visually shrinks as target approaches
	drawChain(data.path, data.step + 1, ekPos)

	addEvent(blitzGrabPullStep, 300, targetId)
end

local function executeBlitzGrab(ek, target)
	local ekPos     = ek:getPosition()
	local targetPos = target:getPosition()

	-- Find the cardinal-adjacent tile to the EK that is closest to the target.
	-- This makes the pull work from any direction, independent of where the EK is facing.
	local adjDirs = { {x=0,y=-1}, {x=0,y=1}, {x=-1,y=0}, {x=1,y=0} }
	local frontPos = nil
	local bestDist = math.huge
	for _, d in ipairs(adjDirs) do
		local candidate = Position(ekPos.x + d.x, ekPos.y + d.y, ekPos.z)
		local tile = Tile(candidate)
		if tile and tile:isWalkable(true, true, false, true, false) then
			local dist = math.abs(candidate.x - targetPos.x) + math.abs(candidate.y - targetPos.y)
			if dist < bestDist then
				bestDist = dist
				frontPos = candidate
			end
		end
	end

	-- If no valid adjacent tile exists, abort
	if not frontPos then
		ek:sendTextMessage(MESSAGE_STATUS, "There is no clear space around you to pull the target to.")
		return false
	end

	-- BFS: from target's position to EK's front tile, max 6 non-diagonal steps
	local path = findCardinalPath(targetPos, frontPos, 6)
	if not path or #path == 0 then
		ek:sendTextMessage(MESSAGE_STATUS, "Your target cannot be reached from this position.")
		return false
	end

	-- Paralyze target for the duration of the pull + safety buffer
	local duration  = #path * 300 + 1000
	local condition = Condition(CONDITION_PARALYZE)
	condition:setParameter(CONDITION_PARAM_TICKS, duration)
	condition:setFormula(-1, 0, -1, 0)
	target:addCondition(condition)

	-- Floating on-screen text above the caught player's head
	target:say(string.format("Caught by %s!", ek:getName()), TALKTYPE_MONSTER_SAY)

	-- Visible multi-effect burst at target position
	targetPos:sendMagicEffect(CONST_ME_MAGIC_BLUE)
	targetPos:sendMagicEffect(CONST_ME_ENERGYAREA)
	ekPos:sendMagicEffect(CONST_ME_MAGIC_RED)

	-- Draw the full chain on initial catch
	drawChain(path, 1, ekPos)

	-- Register active grab
	blitzGrabActive[target:getId()] = {
		ekId     = ek:getId(),
		targetId = target:getId(),
		ekPos    = {x=ekPos.x, y=ekPos.y, z=ekPos.z},
		path     = path,
		step     = 0,
	}

	addEvent(blitzGrabPullStep, 300, target:getId())
	return true
end

-- Combat shell (fires the onTargetCreature callback for the clicked tile)
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

function onBlitzGrabTarget(caster, target)
	if not target:isPlayer() then
		caster:sendTextMessage(MESSAGE_STATUS, "You can only grab players.")
		return false
	end
	if blitzGrabActive[caster:getId()] then
		caster:sendTextMessage(MESSAGE_STATUS, "You cannot grab while you are being pulled!")
		return false
	end
	if target:getTile():isPz() then
		caster:sendTextMessage(MESSAGE_STATUS, "Your target is in a protection zone.")
		return false
	end
	if blitzGrabActive[target:getId()] then
		caster:sendTextMessage(MESSAGE_STATUS, "Your target is already caught.")
		return false
	end
	return executeBlitzGrab(caster, target)
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onBlitzGrabTarget")

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end

spell:name("Blitz Grab")
spell:words("exeta gran")
spell:group("support")
spell:id(310)
spell:level(50)
spell:mana(160)
spell:cooldown(1 * 1000)
spell:groupCooldown(2 * 1000)
spell:isPremium(true)
spell:isAggressive(true)
spell:needTarget(true)
spell:needWeapon(true)
spell:needLearn(false)
spell:castSound(SOUND_EFFECT_TYPE_SPELL_CHALLENGE)
spell:vocation("knight;true", "elite knight;true")
spell:register()
