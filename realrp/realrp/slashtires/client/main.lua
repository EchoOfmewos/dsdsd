-- Variables --
local isSlashing = false
local bones = {
	["wheel_lf"] = 0,
	["wheel_rf"] = 1,
	["wheel_lm1"] = 2,
	["wheel_rm1"] = 3,
	["wheel_lr"] = 4,
	["wheel_rr"] = 5,
	["wheel_lm2"] = 45,
	["wheel_lm3"] = 46,
	["wheel_rm2"] = 47,
	["wheel_rm3"] = 48
}


-- Functions --
local function DebugLog(...)
	if Config.Debugmode then
		print(...)
	end
end

local function DisplayNativeNotification(msg)
	BeginTextCommandThefeedPost("STRING")
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandThefeedPostTicker(false, false)
end

local function DisplayNotification(msg)
	if Config.UseNativeNotifiactions then
		DisplayNativeNotification(msg)
	else
		exports.mythic_notify:SendAlert('error', msg) -- Replace this line
	end
end

local function DisplayHelpText(msg)
	BeginTextCommandDisplayHelp("STRING")
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandDisplayHelp(0, false, true, 50)
end

local function ShowHelpText()
	local isUsingKeyboard = IsUsingKeyboard(1)
	local text = (isUsingKeyboard and Config.Lang.KeyboardHelpText) or Config.Lang.ControllerHelpText

	for i = 1, 25 do
		DisplayHelpText(text)
		Wait(0)
	end
end

local function LoadAnimDict(dict)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Wait(0)
	end
end

local function IsVehicleModelBlacklisted(vehicle)
	local vehicleModel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
	vehicleModel = string.lower(vehicleModel)
	return Config.VehicleBlacklist[vehicleModel]
end

local function CanCurrentWeaponSlashTires()
	local equipped, weaponHash = GetCurrentPedWeapon(PlayerPedId(), true)
	if equipped then
		for index, hash in pairs(Config.AllowedWeapons) do
			if hash == weaponHash then
				return true
			end
		end
	end

	return false
end

local function GetHeadingToCoords(coords)
	local playerCoords = GetEntityCoords(PlayerPedId())

    local dx = coords.x - playerCoords.x
    local dy = coords.y - playerCoords.y

    local heading = GetHeadingFromVector_2d(dx, dy)
	return heading
end

local function BurstVehicleTyre(vehicle, tire)
	if not GetVehicleTyresCanBurst(vehicle) and Config.BulletproofSetting == "proof" then
		DisplayNotification(Config.Lang.Bulletproof)
		DebugLog('^3Warning: The player attempted to slash a bulletproof tire while Config.BulletproofSetting was set to true!')
	else
		local bulletproof = not GetVehicleTyresCanBurst(vehicle)
		if bulletproof then
			SetVehicleTyresCanBurst(vehicle, true)
			DebugLog('^2Info: The tire was bulletproof, temporarily disabling bulletproof tires')
		end

		-- This is to give it a sound effect
		SetVehicleTyreBurst(vehicle, tire, true, 1000.0)
		SetVehicleTyreFixed(vehicle, tire)

		-- Actuall tire deflation
		SetVehicleTyreBurst(vehicle, tire, false, 100.0)

		if bulletproof then
			SetVehicleTyresCanBurst(vehicle, false)
			DebugLog('^2Info: Re-enabled bulletproof tires')
		end
	end
end

local function GetClosestVehicleTire(vehicle, boneTypes)
	local closest = {
		index = nil,
		dist = Config.MaxTireDetectionDist,
		coords = nil,
		name = ""
	}

	local playerCoords = GetEntityCoords(PlayerPedId())
	local tireTypes = boneTypes or bones

	for bone, index in pairs(tireTypes) do
		local boneCoords = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, bone))
		local distance = #(playerCoords - boneCoords)

		if distance < closest.dist then
			closest.index = index
			closest.dist = distance
			closest.coords = boneCoords
			closest.name = bone
		end
	end

	return closest
end

local function SlashTire(vehicle, tire)
	local playerPed = PlayerPedId()
	LoadAnimDict('melee@knife@streamed_core_fps')

	if Config.DoFaceCoordTask then
		local difference = math.abs(GetEntityHeading(playerPed) - GetHeadingToCoords(tire.coords))

		if difference > 40.0 then
			local wait = 200+(difference*5)
			if wait > 1000 then wait = 1000 end
			TaskTurnPedToFaceCoord(playerPed, tire.coords.x, tire.coords.y, tire.coords.z, wait)
			Wait(wait)
		end
	end

	TaskPlayAnim(playerPed, "melee@knife@streamed_core_fps", "ground_attack_on_spot", 2.0, 1.0, 700, 0, 0, false, false, false)
	if Config.DoAnimationCheckLoop then
		local timeout = 30
		while not IsEntityPlayingAnim(playerPed, "melee@knife@streamed_core_fps", "ground_attack_on_spot", 3) do
			timeout = timeout - 1
			if timeout < 1 then
				DisplayNotification(Config.Lang.Timeout)
				DebugLog('^1Error: Animation timeout was reached!')
				RemoveAnimDict("melee@knife@streamed_core_fps")
				return
			end
			Wait(100)
		end
	end
	Wait(500)

	if CanCurrentWeaponSlashTires() then
		local updatedTire = GetClosestVehicleTire(vehicle, {[tire.name]=tire.index})
		if updatedTire.dist < Config.MaxTireDetectionDist then
			if Config.CanWeaponsBreak then
				local weaponHash = GetSelectedPedWeapon(playerPed)
				if Config.WeaponBreakChance[weaponHash] then
					local chance = math.random(1, 1000)/10
					DebugLog('^2Info: Chance for weapon to break: '..Config.WeaponBreakChance[weaponHash]..'%, roll hit: '..chance)
					if (chance <= Config.WeaponBreakChance[weaponHash]) and Config.WeaponBreakChance[weaponHash] ~= 0 then
						RemoveWeaponFromPed(playerPed, weaponHash)
						DisplayNotification(Config.Lang.WeaponBroke)
						DebugLog('^3Info: Weapon with hash: '..weaponHash..' was removed!')
						RemoveAnimDict("melee@knife@streamed_core_fps")
						return
					end
				else
					DebugLog('^1ERROR: Weapon: ^3'..weaponHash..' ^1was not listed in the Config.WeaponBreakChance list.')
				end
			end
			if NetworkGetEntityOwner(vehicle) == PlayerId() then
				BurstVehicleTyre(vehicle, tire.index)
				TriggerServerEvent("slashtire:logSlash", NetworkGetNetworkIdFromEntity(vehicle), tire.index)
				DebugLog('^2Info: Client had control of the vehicle entity, bursting tire.')
			else
				TriggerServerEvent("slashtire:slashTargetTire", NetworkGetNetworkIdFromEntity(vehicle), tire.index)
				DebugLog('^2Info: A diffrent client had control of the vehicle entity, sending event to the server.')
			end
			if Config.AIReactAndFlee then
				local pedPool = GetGamePool('CPed')
				for index = 1, #pedPool do
					local dist = #(tire.coords - GetEntityCoords(pedPool[index]))
					if dist < Config.AIReactionDistance and not IsPedAPlayer(pedPool[index]) then
						TaskReactAndFleePed(pedPool[index], playerPed)
					end
				end
			end
		else
			DisplayNotification(Config.Lang.WayTooFar)
			DebugLog('^3Warning: The player was way to far away, the vehicle most likley moved.')
		end
	else
		DisplayNotification(Config.Lang.InvalidWeapon)
		DebugLog('^3Warning: The player did not have a valid weapon on the second check!')
	end

	RemoveAnimDict("melee@knife@streamed_core_fps")
	Wait(1000)
end

local function GetTargetVehicle()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local coordTo = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 2.0, 0.0)

	local rayHandle = StartShapeTestCapsule(coords.x, coords.y, coords.z, coordTo.x, coordTo.y, coordTo.z, 1.0, 10, playerPed, 7)
    local _retval, hit, _endCoords, _surfaceNormal, entityHit = GetShapeTestResult(rayHandle)

    if hit and IsEntityAVehicle(entityHit) then
        return entityHit
    else
		return nil
	end
end

local function AttemptToSlashTire(vehicle, tire)
	if not isSlashing then
		isSlashing = true
		if CanCurrentWeaponSlashTires() then
			if Config.CanSlashEmergencyVehicles or (not Config.CanSlashEmergencyVehicles and GetVehicleClass(vehicle) ~= 18) then
				if not IsVehicleModelBlacklisted(vehicle) then
					if tire.dist < Config.MaxTireInteractionDist then
						if not IsVehicleTyreBurst(vehicle, tire.index, false) then
							SlashTire(vehicle, tire)
						else
							DisplayNotification(Config.Lang.Punctured)
							DebugLog('^3Warning: The player attempted to slash a tire that was already punctured!')
						end
					elseif tire.dist < Config.MaxTireDetectionDist then
						DisplayNotification(Config.Lang.TooFar)
						DebugLog('^3Warning: The player was to far away from the tire, but within the detection distance!')
					end
				else
					DisplayNotification(Config.Lang.Blacklisted)
					DebugLog('^3Warning: The player attempted to slash a tire of a blacklisted vehicle!')
				end
			else
				DisplayNotification(Config.Lang.EmergencyVehicle)
				DebugLog('^3Warning: The player attempted to slash a tire of an emrgancy vehicle!')
			end
		end
		isSlashing = false
	end
end


-- Targeting / 3rd Eye --
if Config.Target then
	local function TargetTireSlash(vehicle, boneTypes)
		if vehicle ~= nil and vehicle ~= 0 then
			local tire = GetClosestVehicleTire(vehicle, boneTypes)
			if tire ~= nil then
				if CanCurrentWeaponSlashTires() then
					AttemptToSlashTire(vehicle, tire)
				else
					DisplayNotification(Config.Lang.InvalidWeapon)
					DebugLog('^3Warning: The player did not have a valid weapon.')
				end
			else
				DebugLog('^1Error: No tire was found!')
			end
		else
			DebugLog('^1Error: No vehicle was found!')
		end
	end

	CreateThread(function()
		if Config.Target == 'ox_target' then
			local oxBones = {}
			for name, _index in pairs(bones) do
				oxBones[#oxBones+1] = name
			end

			exports.ox_target:addGlobalVehicle({
				{
					label = Config.Lang.TargetLabel,
					icon = Config.TargetIcon,
					distance = Config.MaxTireInteractionDist - 0.1,
					bones = oxBones,
					onSelect = function(data)
						TargetTireSlash(data.entity)
					end
				}
			})
		else
			for name, index in pairs(bones) do
				exports[Config.Target]:AddTargetBone({[index] = name}, {
					options = {
						{
							icon = Config.TargetIcon,
							label = Config.Lang.TargetLabel,
							action = function(entity)
								TargetTireSlash(entity, {[name] = index})
							end
						},
					},
					distance = Config.MaxTireInteractionDist
				})
			end
		end
	end)
end


-- Commands, Key Mapping & Threads --
if Config.UseKeyMapping then
	-- Localization setup
	Config.Lang.KeyboardHelpText = string.format(Config.Lang.KeyboardHelpText, Config.KeyboardLabelString)
	Config.Lang.ControllerHelpText = string.format(Config.Lang.ControllerHelpText, Config.PadAnalogLabelString)

	RegisterKeyMapping('slashtire', Config.Lang.KeyMappingKeyboard, 'keyboard', Config.DefaultKey)
	RegisterKeyMapping('stc', Config.Lang.KeyMappingController, 'PAD_ANALOGBUTTON', Config.DefaultPadAnalogButton)

	-- "command" for console users, only needed if we use key mapping
	RegisterCommand('stc', function()
		local vehicle = GetTargetVehicle()
		if vehicle ~= nil then
			local tire = GetClosestVehicleTire(vehicle)
			if tire ~= nil then
				AttemptToSlashTire(vehicle, tire)
			end
		end
	end, false)

	-- Only used to give a prompt (help text) to the player
	CreateThread(function()
		local sleep = 200
		while true do
			if not isSlashing and CanCurrentWeaponSlashTires() then
				local vehicle = GetTargetVehicle()
				if vehicle ~= nil then
					local tire = GetClosestVehicleTire(vehicle)
					if tire.index ~= nil and tire.dist < 1.2 and not IsVehicleTyreBurst(vehicle, tire.index, false) then
						ShowHelpText()
						sleep = 0
					else
						sleep = 200
					end
				else
					sleep = 500
				end
			else
				sleep = 1000
			end
			Wait(sleep)
		end
	end)
end

RegisterCommand('slashtire', function()
	local vehicle = GetTargetVehicle()
	if vehicle ~= nil then
		local tire = GetClosestVehicleTire(vehicle)
		if tire ~= nil then
			AttemptToSlashTire(vehicle, tire)
		end
	elseif not Config.UseKeyMapping then
		DisplayNotification("You need to be close to a vehicle to slash a tire!")
	end
end, false)

if Config.AddChatSuggestion then
	TriggerEvent('chat:addSuggestion', '/slashtire', Config.Lang.ChatHelpText)
end


-- Events --
RegisterNetEvent("slashtire:slashClientTire")
AddEventHandler("slashtire:slashClientTire", function(netId, tire)
	local vehicle = NetworkGetEntityFromNetworkId(netId)
	BurstVehicleTyre(vehicle, tire)
end)