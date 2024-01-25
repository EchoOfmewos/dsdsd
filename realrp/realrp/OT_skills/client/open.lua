local IsPedRunning = IsPedRunning
local IsPedShooting = IsPedShooting
local IsPedInMeleeCombat = IsPedInMeleeCombat
local IsPedSprinting = IsPedSprinting
local IsPedSwimmingUnderWater = IsPedSwimmingUnderWater
local GetGameTimer = GetGameTimer
local timer = GetGameTimer()
local resetvalue = nil
seat = cache.seat

function notify(data)
    lib.notify({type = data.type, description = data.description, icon = data?.icon or nil, iconColor = data?.iconColor or nil})
end

function setNativeSkill(skill, value)
    StatSetInt(skill, int(value), true)
end

function updateNativeSkills()
    if Config.useStrengthSkillEffects and skillData['strength'] ~= nil then
        setNativeSkill(`MP0_STRENGTH`, skillData['strength'].statlevel)
        local strengthModifier = tonumber(string.format("%.2f", ((Config.maxStrengthMult / Config.skills['strength'].maxlevel) * skillData['strength'].level)))
        SetWeaponDamageModifier(`weapon_unarmed`, strengthModifier)
    end
    if Config.useStaminaSkillEffects and skillData['stamina'] ~= nil then
        setNativeSkill(`MP0_STAMINA`, skillData['stamina'].statlevel)
    end
    if Config.useShootingSkillEffects and skillData['shooting'] ~= nil then
        setNativeSkill(`MP0_SHOOTING_ABILITY`, skillData['shooting'].statlevel)
    end
    if Config.useDrivingSkillEffects and skillData['driving'] ~= nil then
        setNativeSkill(`MP0_WHEELIE_ABILITY`, skillData['driving'].statlevel)
    end
end

RegisterNetEvent('OT_skills:notification', function(data)
    lib.notify({type = data.type, description = data.description, icon = data?.icon or nil, iconColor = data?.iconColor or nil})
end)

if Config.Framework == 'ESX' then
    RegisterNetEvent('esx:playerLoaded', function()
        Wait(500)
        loadPlayer()
    end)
end

if Config.Framework == 'QBCORE' then
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        Wait(500)
        loadPlayer()
    end)

    RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
        skillData = {}
    end)
end

if Config.Framework == 'OX' then
    RegisterNetEvent('ox:playerLoaded', function()
        Wait(500)
        loadPlayer()
    end)
end

RegisterCommand('showskills', function()
    openMenu()
end)
RegisterKeyMapping('showskills', 'open skills menu', 'keyboard', 'O')

CreateThread(function()
    while true do
        local sleep = 250
        if Config.skills['shooting'] ~= nil and IsPedArmed(ped, 4) then
            sleep = 10
            if (cooldowns['shooting'] == nil or (cooldowns['shooting'] and timer - cooldowns['shooting'] > Config.skills['shooting'].cooldown)) then
                if IsPedShooting(ped) then
                    local found, target = GetEntityPlayerIsFreeAimingAt(cache.playerId)
                    local model = GetEntityModel(target)
                    if IsPedAPlayer(target) or GetEntityType(target) == 1 then
                        TriggerServerEvent('OT_skills:addXP', 'shooting', 5)
                        cooldowns['shooting'] = GetGameTimer()
                    end
                    if Config.shootingpracModels[model] then
                        TriggerServerEvent('OT_skills:addXP', 'shooting', 5)
                        cooldowns['shooting'] = GetGameTimer()
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        local isRunning = IsPedRunning(ped)
        local isSprinting = IsPedSprinting(ped)
        local isSwimming = IsPedSwimmingUnderWater(ped)
        local inMeleeCombat = IsPedInMeleeCombat(ped)
        local alive = LocalPlayer.state.alive ~= nil and LocalPlayer.state.alive or true
        timer = GetGameTimer()
        if Config.skills['stamina'] ~= nil and (isRunning or isSprinting) and (cooldowns['stamina'] == nil or (cooldowns['stamina'] and timer - cooldowns['stamina'] > Config.skills['stamina'].cooldown)) then
            TriggerServerEvent('OT_skills:addXP', 'stamina', 5)
            cooldowns['stamina'] = GetGameTimer()
        end
        if Config.skills['diving'] ~= nil and (isSwimming and alive) and (cooldowns['diving'] == nil or (cooldowns['diving'] and timer - cooldowns['diving'] > Config.skills['diving'].cooldown)) then
            TriggerServerEvent('OT_skills:addXP', 'diving', 50)
            cooldowns['diving'] = GetGameTimer()
        end
        if Config.skills['driving'] ~= nil and (vehicle ~= false and seat == -1) and (cooldowns['driving'] == nil or (cooldowns['driving'] and timer - cooldowns['driving'] > Config.skills['driving'].cooldown)) then
            local speed = GetEntitySpeed(vehicle) * 2.236936
            if speed >= 100 then
                TriggerServerEvent('OT_skills:addXP', 'driving', 5)
                cooldowns['driving'] = GetGameTimer()
            end
        end
        if Config.skills['strength'] ~= nil and inMeleeCombat and (cooldowns['strength'] == nil or (cooldowns['strength'] and timer - cooldowns['strength'] > Config.skills['strength'].cooldown)) then
            local found, target = GetPlayerTargetEntity(cache.playerId)
            if IsPedAPlayer(target) or GetEntityType(target) == 1 then
                TriggerServerEvent('OT_skills:addXP', 'strength', 5)
                cooldowns['strength'] = GetGameTimer()
            end
        end
        Wait(500)
    end
end)

lib.onCache('seat', function(value)
    seat = value
    if Config.useDrivingSkillEffects then
        if seat == -1 then
            for i = 1, 6 do
                SetTyreTractionLossMultiplier(vehicle, i - 1, 1.0 - (skillData['driving'].level / 100))
            end
            resetvalue = vehicle
        else
            if resetvalue ~= nil then
                for i = 1, 6 do
                    SetTyreTractionLossMultiplier(resetvalue, i - 1, 1.0)
                end
                resetvalue = nil
            end
        end
    end
end)