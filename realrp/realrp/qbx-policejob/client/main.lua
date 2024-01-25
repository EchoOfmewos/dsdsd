-- Variables
QBCore = exports['qb-core']:GetCoreObject()
isHandcuffed = false
cuffType = 1
isEscorted = false
PlayerJob = {}
--local DutyBlips = {}

-- Functions
--[[local function CreateDutyBlips(playerId, playerLabel, playerJob,blipNum,blipSize,blipColorNum,playerLocation)
    local ped = GetPlayerPed(playerId)
    local blip = GetBlipFromEntity(ped)
    local pedVehicle = GetVehiclePedIsIn( ped, false);
    if not DoesBlipExist(blip) then
        if NetworkIsPlayerActive(playerId) then
            blip = AddBlipForEntity(ped)
        else
            blip = AddBlipForCoord(playerLocation.x, playerLocation.y, playerLocation.z)
        end
            SetBlipScale(blip, blipSize)
            SetBlipSprite(blip, blipNum)
            ShowHeadingIndicatorOnBlip(blip, true)
            SetBlipRotation(blip, math.ceil(playerLocation.w))
       
        SetBlipColour(blip, blipColorNum)

        SetBlipDisplay(blip, 4)
        SetBlipAsShortRange(blip, false)
        SetBlipCategory(blip, 10)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(playerLabel)
        EndTextCommandSetBlipName(blip)
        DutyBlips[#DutyBlips+1] = blip
    end

    if GetBlipFromEntity(PlayerPedId()) == blip then
        -- Ensure we remove our own blip.
        RemoveBlip(blip)
    end
end]]--

-- Events
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
    isHandcuffed = false
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    TriggerServerEvent("police:server:UpdateBlips")
    TriggerServerEvent("police:server:UpdateCurrentCops")

    if player.metadata.tracker then
        local trackerClothingData = {
            outfitData = {
                ["accessory"] = {
                    item = 13,
                    texture = 0
                }
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', trackerClothingData)
    else
        local trackerClothingData = {
            outfitData = {
                ["accessory"] = {
                    item = -1,
                    texture = 0
                }
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', trackerClothingData)
    end

    --[[if PlayerJob and PlayerJob.name ~= "police" then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
    end]]--
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    TriggerServerEvent('police:server:UpdateBlips')
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    TriggerServerEvent("police:server:UpdateCurrentCops")
    isHandcuffed = false
    isEscorted = false
    PlayerJob = {}
    ClearPedTasks(PlayerPedId())
    DetachEntity(PlayerPedId(), true, false)
    if DutyBlips then
        for _, v in pairs(DutyBlips) do
            RemoveBlip(v)
        end
        DutyBlips = {}
    end
end)

RegisterNetEvent("QBCore:Client:SetDuty", function(newDuty)
    PlayerJob.onduty = newDuty
end)

--[[RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    if JobInfo.name ~= "police" then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
    end
    PlayerJob = JobInfo
    TriggerServerEvent("police:server:UpdateBlips")
end)]]--

RegisterNetEvent('police:client:sendBillingMail', function(amount)
    SetTimeout(math.random(2500, 4000), function()
        local gender = Lang:t('info.mr')
        if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then
            gender = Lang:t('info.mrs')
        end
        local charinfo = QBCore.Functions.GetPlayerData().charinfo
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Lang:t('email.sender'),
            subject = Lang:t('email.subject'),
            message = Lang:t('email.message', {value = gender, value2 = charinfo.lastname, value3 = amount}),
            button = {}
        })
    end)
end)

--[[RegisterNetEvent('police:client:UpdateBlips', function(players)
    if PlayerJob and (PlayerJob.name == 'police' or PlayerJob.name == 'ambulance' or PlayerJob.name == 'sheriff') and
        PlayerJob.onduty then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
        if players then
            for _, data in pairs(players) do
                local id = GetPlayerFromServerId(data.source)
                CreateDutyBlips(id, data.label, data.job,data.blipNum, data.blipSize, data.blipColorNum,data.location)

            end
        end
    end
end)]]--

RegisterNetEvent('police:client:policeAlert', function(coords, text)
    local street1, street2 = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
    local street1name = GetStreetNameFromHashKey(street1)
    local street2name = GetStreetNameFromHashKey(street2)
    QBCore.Functions.Notify({text = text, caption = street1name.. ' ' ..street2name}, 'police')
    PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
    local transG = 250
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    local blip2 = AddBlipForCoord(coords.x, coords.y, coords.z)
    local blipText = Lang:t('info.blip_text', {value = text})
    SetBlipSprite(blip, 60)
    SetBlipSprite(blip2, 161)
    SetBlipColour(blip, 1)
    SetBlipColour(blip2, 1)
    SetBlipDisplay(blip, 4)
    SetBlipDisplay(blip2, 8)
    SetBlipAlpha(blip, transG)
    SetBlipAlpha(blip2, transG)
    SetBlipScale(blip, 0.8)
    SetBlipScale(blip2, 2.0)
    SetBlipAsShortRange(blip, false)
    SetBlipAsShortRange(blip2, false)
    PulseBlip(blip2)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(blipText)
    EndTextCommandSetBlipName(blip)
    while transG ~= 0 do
        Wait(180 * 4)
        transG = transG - 1
        SetBlipAlpha(blip, transG)
        SetBlipAlpha(blip2, transG)
        if transG == 0 then
            RemoveBlip(blip)
            return
        end
    end
end)

RegisterNetEvent('police:client:SendToJail', function(time)
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    isHandcuffed = false
    isEscorted = false
    ClearPedTasks(PlayerPedId())
    DetachEntity(PlayerPedId(), true, false)
end)

RegisterNetEvent('police:client:SendPoliceEmergencyAlert', function()
    local Player = QBCore.Functions.GetPlayerData()
    TriggerServerEvent('police:server:policeAlert', Lang:t('info.officer_down', {lastname = Player.charinfo.lastname, callsign = Player.metadata.callsign}))
    TriggerServerEvent('hospital:server:ambulanceAlert', Lang:t('info.officer_down', {lastname = Player.charinfo.lastname, callsign = Player.metadata.callsign}))
end)

-- Threads
CreateThread(function()
    for _, station in pairs(Config.Locations["stations"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 60)
        SetBlipAsShortRange(blip, true)
        SetBlipCategory(blip, 10)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 29)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/evidence', 'Insert evidence number to open. Example: /evidence 69', {})
end)

PDStations = {
    vector3(449.52, -987.85, 30.69), -- MRPD
    vector3(380.79, -1614.57, 29.29), -- DAVIS
    vector3(840.55, -1290.2, 28.65), -- TROOPER STATION
    vector3(1851.64, 3689.25, 34.27), -- SANDY
    vector3(-446.36, 6010.07, 31.71), -- PALETO
    vector3(-387.17642211914, -417.05813598633, 25.098812103271), --RHPD
}

RegisterCommand('evidence', function(source, args)
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    local pos = GetEntityCoords(PlayerPedId())
    local canOpen = false
    for k,v in pairs(PDStations) do
        if #(pos - v) < 60.0 then
            canOpen = true
        end
    end
    if PlayerJob.name == "police" then
        if canOpen then
            slot = tonumber(args[1])
            if args[1] ~= nil then
                TriggerServerEvent("inventory:server:OpenInventory", "stash", " 1 | Drawer "..slot, {
                    maxweight = 4000000,
                    slots = 60,
                })
                TriggerEvent("inventory:client:SetCurrentStash", " 1 | Drawer "..slot)
            else
                QBCore.Functions.Notify("You must enter a drawer number.", "error")
            end  
        else
            QBCore.Functions.Notify("You are not near a police station.", "error")
        end
    else
        QBCore.Functions.Notify("Access denied. Police only.", "error")
    end
end)


RegisterNetEvent('police:client:hijack', function()
    local cop = PlayerPedId()
    local copcoords = GetEntityCoords(cop)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local vehiclepos = GetEntityCoords(vehicle)
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    
    if #(copcoords - vehiclepos) < 3.0 then
        if GetVehicleDoorLockStatus(vehicle) == 0 then QBCore.Functions.Notify("This vehicle doesn't seem to be locked.", "error") return end
        if PlayerJob.name == 'police' then
            TriggerEvent('animations:client:EmoteCommandStart', {"weld"})
            QBCore.Functions.Progressbar("policeunlock", "Unlocking vehicle..", 5000, false, false, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                }, {}, {}, {}, function()
                TriggerEvent('animations:client:EmoteCommandStart', {"weld"})
                Wait(100)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                Wait(500)
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "lock", 0.3)
                TriggerEvent('cd_garage:AddKeys', exports['cd_garage']:GetPlate(vehicle))
                QBCore.Functions.Notify('Vehicle unlocked.', 'success')
                SetVehicleAlarm(vehicle, false)
            end)
        else
            QBCore.Functions.Notify("You are not Police!", "error")
        end
    else
        QBCore.Functions.Notify("Not near any vehicle.", "error")
    end
end)