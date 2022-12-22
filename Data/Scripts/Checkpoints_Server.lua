local CHECKPOINTS_TABLE = require(script:GetCustomProperty("CheckpointsTable"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local USE_PRIORITY = COMPONENT_ROOT:GetCustomProperty("UsePriority")
local USE_PERSISTENCE = COMPONENT_ROOT:GetCustomProperty("UsePersistence")

local playerCheckpoints = {}
local checkpointsAmount = 0

for _ in ipairs(CHECKPOINTS_TABLE) do checkpointsAmount = checkpointsAmount + 1 end

local function SpawnEffect(player, effect)
	World.SpawnAsset(effect, {position = player:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED})
end

local function OnPlayerSpawn(player, ps, sk)
	if playerCheckpoints[player.id] then
		local index = playerCheckpoints[player.id].respawnIndex or 0
		if index > 0 and index <= checkpointsAmount then
			local pos = CHECKPOINTS_TABLE[index].Position:GetObject()
			if pos then
				player:SetWorldPosition(pos:GetWorldPosition())
				local spawnEffect = CHECKPOINTS_TABLE[index].OnSpawnEffects
				if spawnEffect then
					SpawnEffect(player, spawnEffect)
				end
			end
		end
	end
end

local function SaveRespawn(player, index, forceSave)
	if playerCheckpoints[player.id] then
		if not forceSave and (index == playerCheckpoints[player.id].respawnIndex or (index < playerCheckpoints[player.id].respawnIndex and USE_PRIORITY)) then
			return
		end
		playerCheckpoints[player.id].respawnIndex = index
		
		if index > 0 and index <= checkpointsAmount then
			local activateEffect = CHECKPOINTS_TABLE[index].OnActivateEffects
			if activateEffect then
				SpawnEffect(player, activateEffect)
			end
		end
	end
end

local function OnInteracted(trigger, other, index)
	if other:IsA("Player") then
		SaveRespawn(other, index)
	end
end

local function OnBeginOverlap(trigger, other, index)
	if other:IsA("Player") then
		SaveRespawn(other, index)
	end
end

local function OnPlayerJoined(player)
	if USE_PERSISTENCE then
		local data = Storage.GetPlayerData(player)
		playerCheckpoints[player.id] = {respawnIndex = data.respawnIndex or 0}
		OnPlayerSpawn(player, nil, nil)
	else
		playerCheckpoints[player.id] = {respawnIndex = 0}
	end
	player.spawnedEvent:Connect(OnPlayerSpawn)
end

local function OnPlayerLeft(player)
	if USE_PERSISTENCE then
		local data = Storage.GetPlayerData(player)
		data.respawnIndex = playerCheckpoints[player.id].respawnIndex
		Storage.SetPlayerData(player, data)
	end
	playerCheckpoints[player.id] = nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

for index, cp in ipairs(CHECKPOINTS_TABLE) do
	if cp.Trigger and cp.Trigger:GetObject() ~= nil then
		local trigger = cp.Trigger:GetObject()
		if trigger then
			if trigger.isInteractable then
				trigger.interactedEvent:Connect(OnInteracted, index)
			else
				trigger.beginOverlapEvent:Connect(OnBeginOverlap, index)
			end
		end
	end
	if cp.Event and cp.Event ~= "" then
		Events.Connect(cp.Event, SaveRespawn, index)
	end
end

Events.Connect("ForceSave", SaveRespawn, true)
