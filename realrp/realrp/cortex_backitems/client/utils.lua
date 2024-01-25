local Framework = {
    ['ESX'] = GetResourceState('es_extended') == 'started',
    ['QBCore'] = GetResourceState('qb-core') == 'started'
}

CheckJob = function()
    local PlayerData = {}
    
    if Framework['ESX'] then
        local ESX = exports['es_extended']:getSharedObject()
        PlayerData = ESX.GetPlayerData()
    elseif Framework['QBCore'] then
        local QBCore = exports['qb-core']:GetCoreObject()
        PlayerData = QBCore.Functions.GetPlayerData()
    end

    return PlayerData.job.name
end

-- ESX
RegisterNetEvent('esx:playerLoaded', function()
    Wait(5000) -- 5 seconds after the player has joined the server, start triggering event to attach items to the back.
    TriggerEvent('cortex_backitems:AttachBackItems')
end)

AddEventHandler('esx:playerLogout', function()
    TriggerEvent('cortex_backitems:DeleteAttachedBackItems')
end)

RegisterNetEvent('esx:setJob', function()
    TriggerEvent('cortex_backitems:AttachBackItems')
end)

-- QBCore
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    Wait(5000) -- 5 seconds after the player has joined the server, start triggering event to attach items to the back.
    TriggerEvent('cortex_backitems:AttachBackItems')
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    TriggerEvent('cortex_backitems:DeleteAttachedBackItems')
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function()
    TriggerEvent('cortex_backitems:AttachBackItems')
end)

AddEventHandler('onResourceStart', function(resourceName)
	if resourceName == GetCurrentResourceName() then
        if Framework['ESX'] then
            local ESX = exports['es_extended']:getSharedObject()

            if ESX.IsPlayerLoaded() then
                TriggerEvent('cortex_backitems:AttachBackItems')
            end
        else
            if LocalPlayer.state.isLoggedIn then
                TriggerEvent('cortex_backitems:AttachBackItems')
            end
        end
	end
end)

AddEventHandler('onResourceStop', function(resourceName)
	if resourceName == GetCurrentResourceName() then
        TriggerEvent('cortex_backitems:DeleteAttachedBackItems')
	end
end)