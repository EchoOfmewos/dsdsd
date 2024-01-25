local SD = exports['sd_lib']:getLib()

local particleEffects = {}
local blips = {}
local radiusBlips = {}

-- Create Ped
function CreatePedAtCoords(pedModel, coords)
    if type(pedModel) == "string" then pedModel = GetHashKey(pedModel) end
	SD.utils.LoadModel(pedModel)
    local ped = CreatePed(0, pedModel, coords.x, coords.y, coords.z, coords.w, false, false)
    FreezeEntityPosition(ped, true)
	TaskStartScenarioInPlace(ped, "WORLD_HUMAN_STAND_IMPATIENT", 0, true)
    SetEntityVisible(ped, true)
    SetEntityInvincible(ped, true)
    PlaceObjectOnGroundProperly(ped)
    SetBlockingOfNonTemporaryEvents(ped, true)

	SD.target.AddTargetEntity(ped, {
        options = {
            {
                type = "client",
                event = "sd-cokemission:client:start",
                icon = "fas fa-user-secret",
                label = Lang:t('target.pay_cost') .. ' ' .. Config.RunCost .. '$' .. ' ' .. ':)'
            },
        },
        distance = 3.0
    })


	AddEventHandler("onResourceStop", function(resource)
        if resource == GetCurrentResourceName() then
            DeleteEntity(ped)
        end
    end)
	
    return ped
end

CreateThread(function()
    while not GlobalState.CokeBossLocation do Wait(0) end
    local ped = CreatePedAtCoords(Config.BossPed, GlobalState.CokeBossLocation)
end)

-- Blip Creation
CreateThread(function()
    if Config.Blip.Enable then
        local blip = AddBlipForCoord(GlobalState.CokeBossLocation)
        SetBlipSprite(blip, Config.Blip.Sprite)
        SetBlipDisplay(blip, Config.Blip.Display)
        SetBlipScale(blip, Config.Blip.Scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, Config.Blip.Colour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.Name)
        EndTextCommandSetBlipName(blip)
    end
end)

-- Police Alert for Cocaine Package Drops (Used Dispatch System can be changed in sd_lib/sh_config.lua)
function policeAlert()
    exports['ps-dispatch']:BriefcaseRobbery()
end 

-- Start!
RegisterNetEvent('sd-cokemission:client:start', function ()
    local ped = PlayerPedId()

    SD.ServerCallback("sd-cokemission:server:getCops", function(enoughCops)
        if enoughCops >= Config.MinimumPolice then
            SD.ServerCallback("sd-cokemission:server:coolc",function(isCooldown)
                if not isCooldown then
                    if Config.CheckForBlackout then
                        SD.ServerCallback('sd-cokemission:server:getBlackoutState', function(state)
                            if state then
                                startMission(ped)
                            else
                                SD.ShowNotification(Lang:t('error.power_grid_active'), 'error')
                            end
                        end)
                    else
                        startMission(ped)
                    end
                else
                    SD.ShowNotification(Lang:t('error.recently_did_this'), 'error')
                end
            end)
        else
            SD.ShowNotification(Lang:t('error.cannot_do_right_now'), 'error')
        end
    end)
end)

-- Function to Start Animation and trigger the rest of the resource.
function startMission(ped)
    if Config.EnableAnimation then
        SD.utils.LoadAnim('misscarsteal4@actor')
        TaskPlayAnim(ped, "misscarsteal4@actor", "actor_berating_loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
    end
    SD.StartProgress('search_register', Lang:t('progress.search_register'), math.random(5000, 6000), function()
        TriggerServerEvent('sd-cokemission:server:start')
        if Config.EnableAnimation then
            ClearPedTasks(ped)
        end
    end, function() -- Cancel
        if Config.EnableAnimation then
            ClearPedTasks(ped)
        end
        SD.ShowNotification("Canceled", 'error')
    end)
end

-- Function to spawn the boat
local function SpawnBoat()
    local VehicleCoords = Config.Boatspawn
    local boatblip = AddBlipForCoord(VehicleCoords.x, VehicleCoords.y, VehicleCoords.z)

    SetBlipSprite(boatblip, 427)
    SetBlipScale(boatblip, 0.75)
    SetBlipColour(boatblip, 3)
    SetBlipAsShortRange(boatblip, true)
    SetBlipRoute(boatblip, false)

    SD.utils.LoadModel('dinghy')

    ClearAreaOfVehicles(VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, 15.0, false, false, false, false, false)
    transport = CreateVehicle('dinghy', VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, 52.0, true, true)
    
    -- Create a Polyzone around the boat spawn location
    local boatZone = CircleZone:Create(VehicleCoords, 30.0, {
        name="BoatZone",
        useZ=true,
        debugPoly=false
    })

    -- Add an onPlayerInOut function to the boat Polyzone
    boatZone:onPlayerInOut(function(isPointInside)
        if isPointInside then
            -- Immediately destroy the Polyzone and the boat blip when a player enters it
            boatZone:destroy()
            RemoveBlip(boatblip)
        end
        -- Remove the boat blip after 10 minutes
        SetTimeout(Config.BoatTimeout * 600000, function()
            RemoveBlip(boatblip)
        end)
    end)
end

-- Using the Item
RegisterNetEvent('sd-cokemission:client:giverewards', function()
    TriggerServerEvent('sd-cokemission:server:giverewards')
end)

-- Loot Trunk
local function OpenTrunk(netId, zoneIndex)
    local ped = PlayerPedId()

    SD.utils.LoadAnim("amb@prop_human_bum_bin@idle_b")

    -- Play the animation with the ped frozen
    TaskPlayAnim(ped, "amb@prop_human_bum_bin@idle_b", "idle_d", 4.0, 4.0, -1, 50, 0, false, false, false)

    local time = math.random(5000, 7500)
    SD.StartProgress('open_trunk', Lang:t('progress.open_trunk'), time, function()
        ClearPedTasks(ped)
        TriggerServerEvent('sd-cokemission:server:addItem', netId)

        -- Trigger the server event to remove the blip for all players
        TriggerServerEvent('sd-cokemission:server:removeBlip', zoneIndex)  

        policeAlert()

        -- Trigger the server event to remove the particle effect for all players
        TriggerServerEvent('sd-cokemission:server:removeFlareParticleEffect', zoneIndex)
    end, function() -- Play When Cancel
        ClearPedTasks(ped)
    end)
end

-- Event to remove the Blip on that specific zoneIndex when looted.
RegisterNetEvent('sd-cokemission:client:removeBlip', function(zoneIndex)
    -- Check if blips exists and remove them
    if DoesBlipExist(blips[zoneIndex]) then RemoveBlip(blips[zoneIndex]) end
    if DoesBlipExist(radiusBlips[zoneIndex]) then RemoveBlip(radiusBlips[zoneIndex]) end
end)

-- Function to send email and start coke mission
local function StartCokeMission()
    if Config.SendEmail then
        SD.ShowNotification(Lang:t('success.email_sent'), 'success')
        -- Use the utility function to send an email
        SD.utils.SendEmail(
            Lang:t('email.unknown'),
            Lang:t('email.mystery_package_subject'),
            Lang:t('email.mystery_package_message')
        )
    else
        SD.ShowNotification(Lang:t('success.marked_locations_on_map'), 'success')
    end
end

-- Function to create a flare particle effect
local function CreateFlareParticleEffect(position)
    SD.utils.LoadPtfxAsset("core")
    
    SetPtfxAssetNextCall("core")
    local effect = StartParticleFxLoopedAtCoord("exp_grd_flare", position, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    table.insert(particleEffects, effect)

    -- Set a timeout to stop the particle effect after a specified duration
    local particleTimeout = 60000 * Config.FlareTime -- Convert FlareTime in minutes to milliseconds
    SetTimeout(particleTimeout, function()
        StopParticleFxLooped(effect, 0)
    end)
end

-- Event to trigger the particle effects and create the blips
-- The event where the coordinates for the zone are passed.
RegisterNetEvent('sd-cokemission:client:runactivate', function(coordinates)
    local radiusBlipSize = 100.0

    policeAlert()

    if Config.EnableBoat then
        SpawnBoat()
    end
    
    local polyZones = {}
    for i = 1, #coordinates do
        -- Create a Polyzone for each coordinate
        polyZones[i] = BoxZone:Create(vector3(coordinates[i].x, coordinates[i].y, coordinates[i].z), 150.0, 150.0, {
            name="Polyzone"..i,
            heading=335.31,
            minZ=coordinates[i].z-10,
            maxZ=coordinates[i].z+100,
            debugPoly = false
        })
        
        -- Add an onPlayerInOut function to each Polyzone
        polyZones[i]:onPlayerInOut(function(isPointInside)
            if isPointInside then
                local zoneIndex = i -- Store the index of the current zone
            
            end
        end)
        
        -- Create a blip and radiusblip for each coordinate
        local blip = AddBlipForCoord(coordinates[i].x, coordinates[i].y, coordinates[i].z)
        SetBlipSprite(blip, 306)
        SetBlipScale(blip, 0.75)
        SetBlipColour(blip, 3)
        SetBlipRoute(blip, false)
        SetBlipAsShortRange(blip, true)
        table.insert(blips, blip) -- Store the blip for the current zone
        
        local radiusBlip = AddBlipForRadius(coordinates[i].x, coordinates[i].y, coordinates[i].z, radiusBlipSize)
        SetBlipColour(radiusBlip, 1)
        SetBlipAlpha(radiusBlip, 80)
        table.insert(radiusBlips, radiusBlip) -- Store the radiusblip for the current zone
        
        -- Call the function to create the particle effect
        TriggerServerEvent('sd-cokemission:server:createFlareParticleEffect', vector3(coordinates[i].x, coordinates[i].y, 0.0))
    end
    
    -- Trigger the StartCokeMission function
    if not Config.EnableMinigame then
    StartCokeMission()
    end
end)

RegisterNetEvent('sd-cokemission:client:createFlareParticleEffect', function(position)
    CreateFlareParticleEffect(position)
end)

RegisterNetEvent('sd-cokemission:client:removeFlareParticleEffect', function(zoneIndex)
    StopParticleFxLooped(particleEffects[zoneIndex], 0)
end)

RegisterNetEvent('sd-cokemission:client:attachTarget', function(netIds)
    for index, netId in ipairs(netIds) do
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addEntity(netId, {
                {
                    label = Lang:t('target.retrieve_cache'),
                    icon = "fa-solid fa-hand",
                    onSelect = function()
                        OpenTrunk(netId, index)
                    end,
                },
            }, 2.5)
        else
            SD.target.AddTargetEntity(netId, {
                options = {
                    {
                        action = function()
                            OpenTrunk(netId, index)
                        end,
                        icon = "fa-solid fa-hand",
                        label = Lang:t('target.retrieve_cache')
                    },
                },
                distance = 2.5,
            })
        end
    end
end)

-- Remove Target when car is looted
RegisterNetEvent('sd-cokemission:client:removeTarget', function(netId)
    if GetResourceState('ox_target') == 'started' then
        exports.ox_target:removeEntity(netId)
    else
        SD.target.RemoveTargetEntity(netId)
    end
end)