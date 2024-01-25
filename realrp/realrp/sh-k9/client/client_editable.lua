local lang = CFG.LANG
local jobName, grade, PlayerData = nil, nil, {}

CORE = nil

if CFG.FRAMEWORK == 'qb' or CFG.FRAMEWORK == 'qbx' then
    if CFG.FRAMEWORK == 'qb' then
        CORE = exports['qb-core']:GetCoreObject()
    else
        CORE = exports['qbx-core']:GetCoreObject()
    end

    if LocalPlayer.state.isLoggedIn then
        PlayerData = CORE.Functions.GetPlayerData()
        jobName = PlayerData.job.name 
        grade = PlayerData.job.grade.level

        Citizen.SetTimeout(500, function()
            exports['sh-k9']:THREADS()
        end)
    end

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        PlayerData = CORE.Functions.GetPlayerData()
        jobName = PlayerData.job.name
        grade = PlayerData.job.grade.level
        exports['sh-k9']:THREADS()
    end)
    
    RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
        PlayerData.job = JobInfo
        jobName = PlayerData.job.name
        grade = PlayerData.job.grade.level
        exports['sh-k9']:THREADS()
    end)

    RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
        PlayerData, jobName, grade = {}, nil, nil
    end)

    function GetPlate(vehicle)
        return CORE.Functions.GetPlate(vehicle)
    end

elseif CFG.FRAMEWORK == 'esx' or CFG.FRAMEWORK == 'esxold' then
    if CFG.FRAMEWORK == 'esx' then
        CORE = exports['es_extended']:getSharedObject()
    elseif CFG.FRAMEWORK == 'esxold' then
        TriggerEvent('esx:getSharedObject', function(obj) CORE = obj end)
    end
        
    RegisterNetEvent('esx:playerLoaded', function(xPlayer)
        jobName = xPlayer.job.name
        grade = xPlayer.job.grade
        exports['sh-k9']:THREADS()
    end)

    RegisterNetEvent('esx:setJob', function(job)
        jobName = job.name
        grade = job.grade
        exports['sh-k9']:THREADS()
    end)
    
    if CFG.FRAMEWORK == 'esx' then
        RegisterNetEvent('esx:onPlayerLogout', function()
            jobName, grade = nil, nil
        end)

        if CORE.PlayerLoaded then
            jobName = CORE.PlayerData.job.name
            grade = CORE.PlayerData.job.grade

            Citizen.SetTimeout(500, function()
                exports['sh-k9']:THREADS()
            end)
        end    
    end

    function GetPlate(vehicle)
        return GetVehicleNumberPlateText(vehicle)
    end
    
else 
    -- no framework

    function GetPlate(vehicle)
        return GetVehicleNumberPlateText(vehicle)
    end

    -- add your code here for getting job and grade or rework everything to ur liking
    jobName = 'police'
    grade = 0

    Citizen.SetTimeout(500, function()
        exports['sh-k9']:THREADS()
    end)
end

-- functions --
function HasAccess() 
    if CFG.RESTRICTIONS.USE_ACE_PERMS or CFG.RESTRICTIONS.BADGER_DISCORD.enable then
        local hasAce = lib.callback.await('sh-k9:CB:HAS_ACE_OR_ROLE', false)
        return hasAce
        
    elseif CFG.RESTRICTIONS.JOBS[jobName] then 
        for _, id in ipairs(CFG.RESTRICTIONS.JOBS[jobName]) do 
            if grade == id then 
                return true 
            end 
        end 
    end 

    return false 
end

-- notify --
function Notify(msg, type, timer)
    if CFG.NOTIFY == 'ox' then
        lib.notify({
            title = lang.ox_notify_header,
            description = '**'..msg..'**',
            type = type,
            position = 'top',
        })
    elseif CFG.NOTIFY == 'qb' then
        CORE.Functions.Notify(msg, type, timer)
    elseif CFG.NOTIFY == 'esx' then
        if CFG.FRAMEWORK == 'esx' then
            CORE.ShowNotification(msg, type, timer)
        else -- newest esx
            CORE.ShowNotification(msg)
        end
    else -- 'native'
        ShowNotification(msg)
    end
end

function DrawText3D(x, y, z, text, rect)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    if rect then
        local factor = (string.len(text)) / 370
        DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    end
    ClearDrawOrigin()
end
