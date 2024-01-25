local SD = exports['sd_lib']:getLib()

local pedSpawned = false

local looted1 = false
local looted2 = false
local looted3 = false
local looted4 = false
local looted5 = false
local looted6 = false

local boxesObj = {}

local ishacking = false
local ishacking1 = false
local hacked = false
local canhack = false
local unlocked = true

Zones = {}

RegisterNetEvent('sd-warehouse:client:checkitem', function()
    SD.ServerCallback("sd-warehouse:server:itemcheck", function(result)
        if result then
            TriggerEvent('sd-warehouse:client:startHeist')
        else
            SD.ShowNotification(Lang:t('error.no_equipment'), 'error')
        end
    end)
end)

RegisterNetEvent('sd-warehouse:client:targetsync', function()
hacked = true
canhack = true
end)

-- Checks if people are doing a hack at the same time..
RegisterNetEvent('sd-warehouse:client:thermite1', function()
    ishacking1 = true
end)

RegisterNetEvent('sd-warehouse:client:thermitefail1', function()
    ishacking1 = false
end)

local function ThermiteThing(success)
    if success then
        TriggerServerEvent('sd-warehouse:server:antiexploit')
        firsthack()
        policeAlert()
        if Config.SpawnGuards then
            TriggerEvent('sd-warehouse:client:npcSync')
        end
        TriggerServerEvent('sd-warehouse:server:enablelocks')
        if Config.EnableExplosion then
            AddExplosion(-1075.54, -2008.53, 13.62, Config.ExplosionType, 6000000000000000000000000000000000000000000.0, true, false, 2.5)
        end
        Wait(500)
        TriggerServerEvent('sd-warehouse:server:targetsync')
        hacked = true
        SD.ShowNotification(Lang:t('success.locks_disabled'), 'success')
        TriggerServerEvent('sd-warehouse:server:startCooldown')
    else
        TriggerServerEvent('sd-warehouse:server:thermitefail1')
        SD.ShowNotification(Lang:t('error.you_failed'), 'error')
    end
end

RegisterNetEvent('sd-warehouse:client:startHeist', function() 
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    SD.ServerCallback("sd-warehouse:server:getCops", function(enoughCops)
        if enoughCops >= Config.MinimumPolice then   
            SD.ServerCallback("sd-warehouse:server:cooldown", function(cooldown)
                if not cooldown then
                    if #(coords - Config.FirstHack) < 2.0 then
                        if not ishacking1 then
                            TriggerServerEvent('sd-warehouse:server:thermite1')
                        if Config.MainMinigame == "ps-ui" then
                            exports['ps-ui']:Thermite(function(success)
                                ThermiteThing(success)
                            end, Config.TimeP, Config.GridP, 3)
                        elseif Config.MainMinigame == "memorygame" then
                            exports["memorygame"]:thermiteminigame(Config.Blocks, Config.Attempts, Config.Show, Config.Time, function()
                                ThermiteThing(true)
                            end, function()
                                ThermiteThing(false)
                            end)
                        end
                        end
                    end
                else
                    SD.ShowNotification(Lang:t('error.recently_robbed'), 'error')
                end
            end)
        else
            SD.ShowNotification(Lang:t('error.no_cops'), 'error')
        end
    end)
end)

-- Police Alert for Warehouse Heist (Used Dispatch System can be changed in sd_lib/sh_config.lua)
function policeAlert()
    exports['ps-dispatch']:WarehouseHeist()
end 

-- Blip Creation

CreateThread(function()
    if Config.Blip.Enable then
        local blip = AddBlipForCoord(Config.Blip.Location)
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

-- Front door Escape

RegisterNetEvent('sd-warehouse:client:uselaptop', function()
    ishacking = true
end)

RegisterNetEvent('sd-warehouse:client:uselaptopfail', function()
    ishacking = false
end)

RegisterNetEvent('sd-warehouse:client:targetsync2', function()
unlocked = true
canhack = false
end)

local function frontdoorunlock(success)
    if success then
        SD.ShowNotification(Lang:t('success.doors_unlocked'), 'success')
        if Config.SecondaryMinigame == 'mhacking' then
            TriggerEvent('mhacking:hide')
        end
        TriggerServerEvent('sd-warehouse:server:targetsync2')
        unlocked = true
        Wait(1000)
    else
        TriggerServerEvent('sd-warehouse:server:uselaptopfail')
        SD.ShowNotification(Lang:t('error.you_failed'), 'error')
        if Config.SecondaryMinigame == 'mhacking' then
            TriggerEvent('mhacking:hide')
        end
    end
end

RegisterNetEvent('sd-warehouse:openFrontDoor', function()  
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)   
    if #(coords - Config.SecondHack) < 3.0 then
        if Config.EnableHacking then
            if Config.SecondaryMinigame == 'ps-ui' then
                if not ishacking then
                    TriggerServerEvent('sd-warehouse:server:uselaptop')
                exports['ps-ui']:Scrambler(function(success)
                    frontdoorunlock(success)
                end, Config.Type, Config.TimeP2, Config.Mirrored)
            end
        end
            if Config.SecondaryMinigame == 'mhacking' then
            Wait(1000)
            if not ishacking then
            TriggerServerEvent('sd-warehouse:server:uselaptop')
            TriggerEvent("mhacking:show")
            TriggerEvent("mhacking:start", math.random(Config.MinChar, Config.MaxChar), Config.Time, frontdoorunlock)
			end
            elseif Config.SecondaryMinigame == 'hacking' then
                if not ishacking then
                TriggerServerEvent('sd-warehouse:server:uselaptop')
                exports['hacking']:OpenHackingGame(Config.BobTime, Config.BobBlocks, Config.BobRepeat, frontdoorunlock)
        end
    end
end

    elseif Config.EnableHacking == false then
        if not ishacking then
            TriggerServerEvent('sd-warehouse:client:uselaptop')
            Wait(1000)
            SD.ShowNotification(Lang:t('success.doors_unlocked'), 'success')
            TriggerServerEvent('sd-warehouse:server:targetsync2')
            unlocked = true
            Wait(1000)
            ClearPedTasks(ped)
            end
        end
end)

RegisterNetEvent('sd-warehouse:client:enablelocksnotif', function()
    SD.ShowNotification(Lang:t('success.locks_enabled'), 'success')
    TriggerServerEvent('sd-warehouse:server:lockdoors')
end)

RegisterNetEvent('sd-warehouse:client:lockdoors', function()    
    hacked = false
end)

RegisterNetEvent('sd-warehouse:client:enablelocks', function()    
    unlocked = false
end)

-- Spawn Props
local function buildInterior(objects, locations)
    for _, pickuploc in pairs(locations) do
        local model = GetHashKey(objects[math.random(1, #objects)])
        SD.utils.LoadModel(model)
        local obj = CreateObject(model, pickuploc.x, pickuploc.y, pickuploc.z, false, true, true)
        PlaceObjectOnGroundProperly(obj)
        FreezeEntityPosition(obj, true)
    end
end

RegisterNetEvent('sd-warehouse:client:antiexploit', function()
    looted1 = true
    looted2 = true
    looted3 = true
    looted4 = true
    looted5 = true
    looted6 = true
end)

-- Teleport Functions
local teleportLocations = {
    {
        event = "sd-warehouse:teleportenter",
        coords = vector3(-953.27, -2043.83, -19.27),
        heading = 91.15
    },
    {
        event = "sd-warehouse:teleportleave",
        coords = vector3(-1057.27, -2004.36, 13.16),
        heading = 132.98
    },
    {
        event = "sd-warehouse:teleportleave2",
        coords = vector3(-960.58, -1982.71, 14.48),
        heading = 309.35
    }
}

for _, location in ipairs(teleportLocations) do
    RegisterNetEvent(location.event)
    AddEventHandler(location.event, function()
        local playerPed = PlayerPedId()
        DoScreenFadeOut(1000)
        buildInterior(Config.WarehouseObjects, Config.RandomLocations)
        buildInterior(Config.WarehouseLoot, Config.LootLocations)
        Citizen.Wait(1500)
        SetEntityHeading(playerPed, location.heading)
        SetEntityCoords(playerPed, location.coords)
        Citizen.Wait(1000)
        DoScreenFadeIn(500)
    end)
end

-- Animations
function firsthack()
    TriggerServerEvent('sd-warehouse:server:removeThermite')
    SD.utils.LoadAnim("anim@heists@ornate_bank@thermal_charge")
    SD.utils.LoadModel("hei_p_m_bag_var22_arm_s")
    SD.utils.LoadPtfxAsset("scr_ornate_heist")
    local ped = PlayerPedId()

    SetEntityHeading(ped, 312.7)
    Wait(100)
    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(PlayerPedId())))
    local bagscene = NetworkCreateSynchronisedScene(-1067.35, -2006.31, 14.57, rotx, roty, rotz + 1.1, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), -1067.35, -2006.31, 14.57,  true,  true, false)

    SetEntityCollision(bag, false, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, "anim@heists@ornate_bank@thermal_charge", "thermal_charge", 1.2, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, "anim@heists@ornate_bank@thermal_charge", "bag_thermal_charge", 4.0, -8.0, 1)
    -- SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Wait(1500)
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local bomb = CreateObject(GetHashKey("hei_prop_heist_thermite"), x, y, z + 0.3,  true,  true, true)

    SetEntityCollision(bomb, false, true)
    AttachEntityToEntity(bomb, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    Wait(2000)
    DeleteObject(bag)
    -- SetPedComponentVariation(ped, 5, 45, 0, 0)
    DetachEntity(bomb, 1, 1)
    FreezeEntityPosition(bomb, true)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)

    NetworkStopSynchronisedScene(bagscene)
    TriggerServerEvent("sd-warehouse:server:particles", method)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_intro", 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 8.0, 8.0, 3000, 49, 1, 0, 0, 0)
    if Config.EnableExplosion then
        SD.ShowNotification(Lang:t('error.get_to_safe'), 'error', 2500)
    end
    Wait(5000)
    ClearPedTasks(ped)
    DeleteObject(bomb)
    StopParticleFxLooped(effect, 0)
end 

-- Particles 
RegisterNetEvent("sd-warehouse:client:particles", function(method)
    local ptfx

    SD.utils.LoadPtfxAsset("scr_ornate_heist")
        ptfx = vector3(-1067.38, -2005.39, 14.52)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Wait(4500)
    StopParticleFxLooped(effect, 0)
end)


-- Guard Spawns
local guards = {}

RegisterNetEvent('sd-warehouse:client:npcSync', function()
    SpawnGuards()
end)

function SpawnGuards()
    local ped = PlayerPedId()

    SetPedRelationshipGroupHash(ped, GetHashKey("PLAYER"))
    AddRelationshipGroup("Guards")

    for i = 1, #Config.Guards do
        local guard = Config.Guards[i]
        SD.utils.LoadModel(GetHashKey(guard.ped))
        guards[i] = CreatePed(4, GetHashKey(guard.ped), guard.pos[1], guard.pos[2], guard.pos[3], guard.pos[4], true, true)
        Wait(50)
        local networkID = NetworkGetNetworkIdFromEntity(guards[i])
        print('networkid: '..networkID)
        SetNetworkIdCanMigrate(networkID, true)
        SetNetworkIdExistsOnAllMachines(networkID, true)  
        GiveWeaponToPed(guards[i], GetHashKey(guard.weapon), 255, false, false)
        SetPedRelationshipGroupHash(guards[i], GetHashKey("Guards"))
        SetPedAccuracy(guards[i], guard.accuracy)
        SetPedArmour(guards[i], guard.armor)
        SetPedFleeAttributes(guards[i], 0, false)
        SetPedCanSwitchWeapon(guards[i], true)
        SetPedDropsWeaponsWhenDead(guards[i], false)
        SetPedAsEnemy(guards[i], true)
        SetPedCombatMovement(guards[i], guard.aggresiveness)
        SetPedAlertness(guards[i], guard.alertness)
        SetPedCombatRange(guards[i], guard.range)
        SetPedSeeingRange(guards[i], 150.0)
        SetPedHearingRange(guards[i], 150.0)
        SetPedCombatAttributes(guards[i], 46, 1)
        SetPedCanRagdollFromPlayerImpact(guards[i], false)
        SetEntityAsMissionEntity(guards[i])
        SetEntityVisible(guards[i], true)
        SetEntityMaxHealth(guards[i], guard.health)
        SetEntityHealth(guards[i], guard.health)
        -- TaskGuardCurrentPosition(guards[i], 5.0, 5.0, 1)
    end

    SetRelationshipBetweenGroups(0, GetHashKey("Guards"), GetHashKey("Guards"))
    SetRelationshipBetweenGroups(5, GetHashKey("Guards"), GetHashKey("PLAYER"))
    SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("Guards"))
end

-- Syncing Events!!

RegisterNetEvent('sd-warehouse:client:looted1', function()
    looted1 = false
end)

RegisterNetEvent('sd-warehouse:client:looted2', function()
    looted2 = false
end)

RegisterNetEvent('sd-warehouse:client:looted3', function()
    looted3 = false
end)

RegisterNetEvent('sd-warehouse:client:looted4', function()
    looted4 = false
end)

RegisterNetEvent('sd-warehouse:client:looted5', function()
    looted5 = false
end)

RegisterNetEvent('sd-warehouse:client:looted6', function()
    looted6 = false
end)

-- Looting Animations & Events
RegisterNetEvent('sd-warehouse:client:giveRandomBox', function(box)
    local ped = PlayerPedId()
        SD.utils.LoadAnim('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
        TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 8.0, 6000, 49, 1, 0, 0, 0)
        SD.StartProgress('looting', Lang:t('progress.looting_crate'), math.random(3500, 6000),
        function()
            ClearPedTasks(ped)
            TriggerServerEvent('sd-warehouse:giveRandomBox', box)
            if box == 1 then
            TriggerServerEvent('sd-warehouse:server:looted1')
            elseif box == 2 then
            TriggerServerEvent('sd-warehouse:server:looted2')
            elseif box == 3 then
            TriggerServerEvent('sd-warehouse:server:looted3')
            elseif box == 4 then
            TriggerServerEvent('sd-warehouse:server:looted4')
            elseif box == 5 then
            TriggerServerEvent('sd-warehouse:server:looted5')
            elseif box == 6 then
            TriggerServerEvent('sd-warehouse:server:looted6')
            end
        end, function()
            ClearPedTasks(ped)
            SD.ShowNotification(Lang:t('error.canceled'), 'error', 2500)
        end)
end)

-- Ending Event
RegisterNetEvent('sd-warehouse:client:endHeist', function() 
    looted1 = false
    looted2 = false
    looted3 = false
    looted4 = false
    looted5 = false
    looted6 = false

    ishacking = false
    ishacking1 = false

    hacked = false
    canhack = false
    unlocked = true

end)

-- Target Exports for Looting:
local function getLootLocation(location)
    local pos = Config.LootLocations[location]
    return pos and vector3(pos.x, pos.y, pos.z) or nil
end

local function getBoxOption(index)
    return {
        icon = "fas fa-box",
        label = Lang:t('target.loot_crate'),
        action = function()
            TriggerEvent('sd-warehouse:client:giveRandomBox', index)
        end,
        canInteract = function()
            if index == 1 then
                return looted1
            elseif index == 2 then
                return looted2
            elseif index == 3 then
                return looted3
            elseif index == 4 then
                return looted4
            elseif index == 5 then
                return looted5
            elseif index == 6 then
                return looted6
            end
        end
    }
end

-- Add zones
CreateThread(function()
    for i = 1, 6 do
        local location = getLootLocation(i)
        if location then
            local zoneName = "Box" .. tostring(i)
            Zones[zoneName] = SD.target.AddCircleZone(zoneName, location, 1.5, {
                options = { getBoxOption(i) },
                distance = 2.1
            }, Config.WareHouseDebug)
        end
    end

    Zones["FirstHack"] = SD.target.AddCircleZone("FirstHack", Config.FirstHack, 0.85, {
        options = {
            { event = "sd-warehouse:client:checkitem", icon = "fas fa-user-secret", label = Lang:t('target.disable_locks') }
        },
        distance = 2.1
    }, Config.WareHouseDebug)

    Zones["Hack"] = SD.target.AddCircleZone("Hack", Config.SecondHack, 0.3, {
        options = {
            { event = "sd-warehouse:openFrontDoor", icon = "fas fa-user-secret", label = Lang:t('target.disable_locks'), canInteract = function() return canhack and not ishacking end }
        },
        distance = 2.1
    }, Config.WareHouseDebug)

    Zones["Lock"] = SD.target.AddCircleZone("Lock", Config.SecureWarehouse, 0.6, {
        options = {
            { event = "sd-warehouse:client:enablelocksnotif", icon = "fas fa-user-secret", label = Lang:t('target.enable_locks'), job = "police", canInteract = function() return hacked end }
        },
        distance = 2.1
    }, Config.WareHouseDebug)

    Zones["Enter"] = SD.target.AddCircleZone("Enter", Config.EnterLocation, 3.0, {
        options = {
            { event = "sd-warehouse:teleportenter", icon = "fas fa-sign-in-alt", label = Lang:t('target.enter_warehouse'), canInteract = function() return hacked end }
        },
        distance = 2.1
    }, Config.WareHouseDebug)

    Zones["Leave"] = SD.target.AddCircleZone("Leave", Config.LeaveLocation, 2.5, {
        options = {
            { event = "sd-warehouse:teleportleave", icon = "fas fa-sign-in-alt", label = Lang:t('target.leave_warehouse'), canInteract = function() return unlocked end }
        },
        distance = 2.1
    }, Config.WareHouseDebug)

    Zones["Leave2"] = SD.target.AddCircleZone("Leave2", Config.LeaveLocation2, 1.3, {
        options = {
            { event = "sd-warehouse:teleportleave2", icon = "fas fa-sign-in-alt", label = Lang:t('target.leave_warehouse'), canInteract = function() return unlocked end }
        },
        distance = 2.1
    }, Config.WareHouseDebug)
end)

-- Remove zones on resource stop
AddEventHandler('onResourceStop', function(resource) 
    if resource ~= GetCurrentResourceName() then 
        return 
    end
    for _, zone in pairs(Zones) do 
        SD.target.RemoveZone(zone)
    end
end)