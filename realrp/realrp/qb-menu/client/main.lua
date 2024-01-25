local QBCore = exports['qb-core']:GetCoreObject()


local headerShown = false
local sendData = nil

-- Functions
local function openMenu(data, size)
    if not data or not next(data) then return end
	for _,v in pairs(data) do
        if v.icon then
            if QBCore.Shared.Items[tostring(v.icon)] then
                if not string.find(QBCore.Shared.Items[tostring(v.icon)].image, "http") then
                    v.icon = "ox_inventory/web/images/"..QBCore.Shared.Items[tostring(v.icon)].image
                else
                    v.icon = v.icon
                end
            end
        end
        if v.image then
            if QBCore.Shared.Items[tostring(v.image)] then
                if not string.find(QBCore.Shared.Items[tostring(v.image)].image, "http") then
                    v.image = "ap-inventory/html/images/"..QBCore.Shared.Items[tostring(v.image)].image
                else
                    v.image = v.image
                end
            end
        end
	end
    SetNuiFocus(true, true)
    headerShown = false
    sendData = data
    SendNUIMessage({
        action = 'OPEN_MENU',
        data = table.clone(data),
        size = size
    })
end

local function closeMenu()
    sendData = nil
    headerShown = false
    SetNuiFocus(false)
    SendNUIMessage({
        action = 'CLOSE_MENU'
    })
end

local function showHeader(data)
    if not data or not next(data) then return end
    headerShown = true
    sendData = data
    SendNUIMessage({
        action = 'SHOW_HEADER',
        data = table.clone(data)
    })
end

-- Events

RegisterNetEvent('qb-menu:client:openMenu', function(data, size)
    openMenu(data, size)
end)

RegisterNetEvent('qb-menu:client:closeMenu', function()
    closeMenu()
end)

-- NUI Callbacks

RegisterNUICallback('clickedButton', function(option, cb)
    if headerShown then headerShown = false end
    PlaySoundFrontend(-1, 'Highlight_Cancel', 'DLC_HEIST_PLANNING_BOARD_SOUNDS', 1)
    SetNuiFocus(false)
    if sendData then
        local data = sendData[tonumber(option)]
        sendData = nil
        if data then
            if data.params.event then
                if data.params.isServer then
                    TriggerServerEvent(data.params.event, data.params.args)
                elseif data.params.isCommand then
                    ExecuteCommand(data.params.event)
                elseif data.params.isQBCommand then
                    TriggerServerEvent('QBCore:CallCommand', data.params.event, data.params.args)
                elseif data.params.isAction then
                    data.params.event(data.params.args)
                else
                    TriggerEvent(data.params.event, data.params.args)
                end
            end
        end
    end
    cb('ok')
end)

RegisterNUICallback('closeMenu', function(_, cb)
    headerShown = false
    sendData = nil
    SetNuiFocus(false)
    cb('ok')
    TriggerEvent('qb-menu:client:closeMenu')
end)

-- Command and Keymapping

RegisterCommand('playerfocus', function()
    if headerShown then
        SetNuiFocus(true, true)
    end
end)

RegisterKeyMapping('playerFocus', 'Give Menu Focus', 'keyboard', 'LMENU')

-- Exports

exports('openMenu', openMenu)
exports('closeMenu', closeMenu)
exports('showHeader', showHeader)