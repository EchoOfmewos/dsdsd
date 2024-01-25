local SD = exports['sd_lib']:getLib()

local phoneNumbers = {} -- list of phone numbers to be generated
local usedPhoneNumbers = {} -- list of used phone numbers
local currentStep = 1 -- current step of the phone number puzzle
local currentPhone -- the current payphone the player needs to interact with

local phoneNumbersAndZones = {}
local boothIndex = 1 -- Index
local blips = {} -- List of blips

-- Keep track of failed attempts
local failedAttempts = 0

-- Remove Blip
local function removeBlip(phoneNumber)
    if blips[phoneNumber] then
        RemoveBlip(blips[phoneNumber])
        blips[phoneNumber] = nil
    end
end

-- Create Blip
local function createBlip(phoneNumber, booth)
    local blip = AddBlipForCoord(booth.x, booth.y, booth.z)
    SetBlipSprite(blip, 817)
    SetBlipColour(blip, 3)
    SetBlipScale(blip, 0.8)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Phone Booth")
    EndTextCommandSetBlipName(blip)
    blips[phoneNumber] = blip
end

-- Reset all variables to initial state
local function resetMission()
    phoneNumbers = {}
    usedPhoneNumbers = {}
    currentStep = 1
    currentPhone = nil
    phoneNumbersAndZones = {}
    boothIndex = 1
    blips = {}
    failedAttempts = 0
end

-- Handle the interaction with a payphone
local function handlePayphoneInteraction(phoneNumber)
    if failedAttempts < 3 then
        if currentStep <= 5 then
            local phoneNumberExists = false
            local phoneNumberIndex = nil
            for i, phoneNumberData in ipairs(phoneNumbersAndZones) do
                if phoneNumberData.phoneNumber == phoneNumber then
                    phoneNumberExists = true
                    phoneNumberIndex = i
                    break
                end
            end

            if phoneNumberExists then
                currentStep = currentStep + 1
                local phoneNumberData = table.remove(phoneNumbersAndZones, phoneNumberIndex)
                currentPhone = phoneNumberData.zone.name
                removeBlip(phoneNumber) -- Remove the blip for the phone booth
                if currentStep == 5 then
                    SD.ShowNotification(Lang:t('success.all_numbers_dialed'), 'success')
                    TriggerServerEvent('sd-cokemission:server:startr')
                    resetMission() -- Reset all variables to initial state
                else
                    SD.ShowNotification(Lang:t('success.correct_number_dialed'), 'success')
                end

                -- Remove the corresponding BoxZone
                SD.target.RemoveZone(phoneNumberData.zone.name)

                -- Remove the corresponding CircleZone
                phoneNumberData.zone:destroy()

            else
                SD.ShowNotification(Lang:t('error.wrong_phone_number'), 'error')
                failedAttempts = failedAttempts + 1
            end
        end
        else
            for i, phoneNumberData in ipairs(phoneNumbersAndZones) do
                removeBlip(phoneNumberData.phoneNumber)
                SD.target.RemoveZone(phoneNumberData.zone.name)
                phoneNumberData.zone:destroy()
            end
            resetMission() -- Reset all variables to initial state
            SD.ShowNotification(Lang:t('error.supplier_scared_off'), 'error')
        end
end

-- Creates Decoy Numbers
local function generateDecoyNumbers(realNumber)
    local decoys = {}
    while #decoys < 3 do
        local randomNumber = math.random(100000000, 999999999)
        local formattedDecoy = string.format("%03d-%03d-%03d", math.floor(randomNumber / 1000000), math.floor(randomNumber % 1000000 / 1000), math.floor(randomNumber % 1000))
        if not SD.utils.Contains(usedPhoneNumbers, randomNumber) and formattedDecoy ~= realNumber then
            table.insert(decoys, formattedDecoy)
        end
    end
    return decoys
end

-- generate a random phone number, create the targets for the booths and generate the Blips.
local function shuffleTable(t)
    for i = #t, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
end

local function generatePhoneNumber()
    local boothCount = #Config.PhoneBooths
    local booth = Config.PhoneBooths[boothIndex]
    local center = vector3(booth.x, booth.y, booth.z)

    local phoneNumber
    repeat
        phoneNumber = math.random(100000000, 999999999)
    until not SD.utils.Contains(usedPhoneNumbers, phoneNumber)
    table.insert(usedPhoneNumbers, phoneNumber)

    local formattedPhoneNumber = string.format("%03d-%03d-%03d", math.floor(phoneNumber / 1000000), math.floor(phoneNumber % 1000000 / 1000), math.floor(phoneNumber % 1000))
    local decoyNumbers = generateDecoyNumbers(formattedPhoneNumber)
    local labelNumbers = {formattedPhoneNumber, decoyNumbers[1], decoyNumbers[2], decoyNumbers[3]}

    shuffleTable(labelNumbers)

    local phoneZoneName = "phone_" .. boothIndex
    local phoneZone = CircleZone:Create(center, 2, {
        name = phoneZoneName,
        useZ = true,
        debugPoly = false
    })

    exports[SD.targetName]:AddBoxZone(phoneZoneName, center, 1.0, 2.0, {
        name = phoneZoneName,
        heading = 0,
        debugPoly = false,
        minZ = center.z - 1,
        maxZ = center.z + 1,
    }, {
        options = {
            {
                action = function()
                    handlePayphoneInteraction(labelNumbers[1]) end,   
                icon = "fas fa-phone",
                label = labelNumbers[1],
            },
            {
                action = function()
                    handlePayphoneInteraction(labelNumbers[2]) end,   
                icon = "fas fa-phone",
                label = labelNumbers[2],
            },
            {
                action = function()
                    handlePayphoneInteraction(labelNumbers[3]) end,   
                icon = "fas fa-phone",
                label = labelNumbers[3],
            },
            {
                action = function()
                    handlePayphoneInteraction(labelNumbers[4]) end,   
                icon = "fas fa-phone",
                label = labelNumbers[4],
            },
        },
        distance = 2.0
    })

    boothIndex = boothIndex + 1 -- Increment the booth index
    return formattedPhoneNumber, phoneZone
end


-- send an email to the player with the list of phone numbers
local function sendEmail()
    local message = Lang:t('email.supplier_phone_numbers') .. "<br><br>"
    for i = 1, 4 do
        local phoneNumber, phoneZone = generatePhoneNumber()
        message = message .. phoneNumber .. "<br>"
        table.insert(phoneNumbersAndZones, {phoneNumber = phoneNumber, zone = phoneZone})
    end

    for _, phoneNumberData in ipairs(phoneNumbersAndZones) do
        local boothIndex = tonumber(phoneNumberData.zone.name:match("phone_(%d+)"))
        local booth = Config.PhoneBooths[boothIndex]
        createBlip(phoneNumberData.phoneNumber, booth)
    end

    -- Use the utility function to send an email
    SD.utils.SendEmail(
        Lang:t('email.unknown'),
        Lang:t('email.supplier_subject'),
        message
    )
    
    SD.ShowNotification(Lang:t('success.email_received'), 'success')

    if Config.EnableMinigameTimeout then
        SetTimeout(Config.MinigameTimeout * 60000, function()
            for i, phoneNumberData in ipairs(phoneNumbersAndZones) do
                removeBlip(phoneNumberData.phoneNumber)
                SD.target.RemoveZone(phoneNumberData.zone.name)
                phoneNumberData.zone:destroy()
            end
            resetMission() -- Reset all variables to initial state
            SD.ShowNotification(Lang:t('error.supplier_abandoned'), 'error')
        end)
    end
end

-- Start Minigame
RegisterNetEvent('sd-cokemission:client:startMinigame', function()
    sendEmail()
end)
