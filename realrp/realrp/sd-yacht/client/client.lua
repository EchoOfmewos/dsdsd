local SD = exports['sd_lib']:getLib()

local hasSpawnedInYacht = Config.HasSpawnedOnYacht
local ItemsSpawned = false
local Started = false
local ScreensTapped = false
local robberyFinished = false
local inYacht = false
local itemItem = false
local itemSwitch = false
local itemProp = nil
local yacht = nil
local codesItem = false
local codesSwitch = false
local codesProp = nil
local ccodesItem = false
local ccodesSwitch = false
local ccodesProp = nil
local screenTaps = 0
local screenOne = false
local screenTwo =  false
local screenThree = false
local screenIndex = 0
local models = Config.PedParameters.Ped
local MonitorSequence = {}
local ScreensInteracted = {}
local ScreenTapCount = 0

Zones = {}

yacht = PolyZone:Create({
    vector2(-1842.8129882812, -1078.5670166016),
    vector2(-1892.3331298828, -1217.9526367188),
    vector2(-2145.5622558594, -1256.0698242188),
    vector2(-2319.8171386718, -1006.4071655274),
    vector2(-2211.7380371094, -789.5492553711),
    vector2(-2025.6018066406, -822.6088256836)
  }, {
  name="yacht",
  minZ = -50.0,
  maxZ = 40.0,
  debugGrid = false,
})

RegisterNetEvent('sd_bridge:onPlayerLoaded', function()
  SD.ServerCallback('sd-yachtheist:server:GetConfig', function(Config)
    Config.Items = Config
  end)

  Wait(200)

  SD.ServerCallback('sd-yachtheist:server:GetConfig2', function(Config2)
    Config.Puzzle = Config2
  end)

  Wait(200)

  SD.ServerCallback('sd-yachtheist:server:GetConfig3', function(Config3)
    Config.Cabins = Config3
  end)

  Wait(200)

  SD.ServerCallback('sd-yachtheist:server:GetConfig4', function(Config4)
    Config.CashTrays = Config4
  end)

Wait(2000)
  if Config.SendToBeachOnSpawn then
    if inYacht then
      TriggerEvent('spawnBeachAliveYacht')
    end
  end

    Wait(2000)
    hasSpawnedInYacht = false
end)

RegisterNetEvent('sd-yachtheist:client:StartPressureDecrease', function()
  CreateThread(function()
      while true do
          local currentPressure = Config.Puzzle[6].pressure
          TriggerServerEvent('sd-yachtheist:server:SetPressure', currentPressure - Config.DecreaseAmount)
          Wait(Config.DecreaseTime * 1000) 

          if currentPressure == Config.PressureToExplode then
              TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 7)
              TriggerEvent('sd-yachtheist:client:FuckingExplode')
              break
          end
      end
  end)
end)

-- Police Alert
RegisterNetEvent('sd-yachtheist:client:AlertOnEnter', function()
  SD.utils.PoliceDispatch({
      displayCode = "10-31D",                       -- Dispatch code for a Pacific bank heist
      title = 'Yacht Heist',                 -- Title is used in cd_dispatch/ps-dispatch
      description = "Yacht Heist in progress", -- Description of the heist
      message = "Multiple suspects reported near the Yacht", -- Additional message or information
      -- Blip information is used for ALL dispatches besides ps_dispatch, please reference dispatchcodename below.
      sprite = 108,                                 -- The blip sprite for bank or related icon
      scale = 1.0,                                  -- The size of the blip on the map
      colour = 1,                                   -- The color of the blip on the map
      blipText = "Yacht Heist",               -- Text that appears on the Blip
      -- ps-dispatch
      dispatchcodename = "yacht_heist"       -- This is the name used by ps-dispatch users for the sv_dispatchcodes.lua or config.lua under the Config.Blips entry. (Depending on Version)
  })
end)

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

      if Config.Blip.Radius.Enable then
          local radiusBlip = AddBlipForRadius(Config.Blip.Location.x, Config.Blip.Location.y, Config.Blip.Location.z, Config.Blip.Radius.Size)
          SetBlipHighDetail(radiusBlip, true)
          SetBlipColour(radiusBlip, 1) 
          SetBlipAlpha(radiusBlip, 128) 
      end
  end
end)

RegisterNetEvent('sd-yachtheist:client:Revive', function()
  local ped = PlayerPedId()
  if inYacht then
    local closestPlayer = SD.GetClosestPlayer()
    if closestPlayer ~= nil then
        local closeCoords = GetEntityCoords(closestPlayer)
        local distance = #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(GetPlayerPed(closestPlayer)))
        if distance < 2.0 and distance > 0.0 then
          SD.utils.LoadAnim('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
          TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 8.0, 6000, 49, 1, 0, 0, 0)
          SD.StartProgress('reviving', Lang:t("progress.reviving"), 2500,
            function()
              TriggerServerEvent('sd-yachtheist:server:Revive', GetPlayerServerId(closestPlayer))
              ClearPedTasks(ped)
            end,
            function()
              ClearPedTasks(ped)
            end)
            end
        end
    else
      SD.ShowNotification(Lang:t('error.cannot_use_kit_here'), 'error')
    end
end)

RobGuard = function(entity)
  local ped = PlayerPedId()
  SD.utils.LoadAnim("pickup_object")
      TaskPlayAnim(ped, "pickup_object", "pickup_low", 8.0, -8.0, -1, 1, 0, false, false, false)

      local netId = NetworkGetNetworkIdFromEntity(entity)
      TriggerServerEvent('sd-yachtheist:server:LootGuards', netId)

      Wait(1000)
      ClearPedTasks(ped)
end

RegisterNetEvent('sd-yachtheist:client:SpawnGuards', function(netIds)
  Wait(1000)
  SetPedRelationshipGroupHash(PlayerPedId(), `PLAYER`)
  AddRelationshipGroup('npcguards')

  for i = 1, #netIds, 1 do
    local guard = NetworkGetEntityFromNetworkId(netIds[i])
    SetPedDropsWeaponsWhenDead(guard, false)
    SetEntityHealth(guard, Config.PedParameters.Health)
    SetPedSuffersCriticalHits(guard, Config.PedParameters.Headshots)
    SetCanAttackFriendly(guard, false, true)
    SetPedCombatAttributes(guard, 46, true)
    SetPedCombatAttributes(guard, 0, false)
    SetPedCombatAbility(guard, Config.PedParameters.CombatAbility)
    SetPedAsCop(guard, true)
    SetPedAccuracy(guard, Config.PedParameters.Accuracy)
    SetPedCombatRange(guard, Config.PedParameters.CombatRange)
    SetPedCombatMovement(guard, Config.PedParameters.CombatMovement)
    SetPedFleeAttributes(guard, 0, 0)
    SetPedRelationshipGroupHash(guard, `npcguards`)
  end

  SetRelationshipBetweenGroups(0, `npcguards`, `npcguards`)
  SetRelationshipBetweenGroups(5, `npcguards`, `PLAYER`)
  SetRelationshipBetweenGroups(5, `PLAYER`, `npcguards`)
end)

CreateThread(function()
  SD.target.AddTargetModel(models, {
        options = {
          {
            type = "client",
            action = function(entity)
              RobGuard(entity)
              end,
            icon = 'fas fa-circle',
            label = Lang:t("target.loot"),
            canInteract = function(entity) 
              if inYacht and IsPedOnFoot(PlayerPedId()) and IsPedDeadOrDying(entity) and Config.EnableLooting then return true end
              return false
            end,
          }
        },
        distance = 1.5,
      }
    )
end)

RegisterNetEvent('sd-yachtheist:client:Reward', function()
  TriggerServerEvent('sd-yachtheist:server:Reward')
end)

function SetStartingSymbols()
  local screenChance1 = math.random(1, 2)
  local screenChance2 = math.random(1, 2)
  local screenChance3 = math.random(1, 2)
  local screenChance4 = math.random(1, 2)
  local screenChance5 = math.random(1, 2)
  local screenChance6 = math.random(1, 2)
  local screenChance7 = math.random(1, 2)
  local screenChance8 = math.random(1, 2)

  if screenChance1 == 1 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 1, Config.Screens[15].url)
  elseif screenChance1 == 2 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 1, Config.Screens[16].url)
  end

  Wait(650)

  if screenChance2 == 1 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[17].url)
  elseif screenChance2 == 2 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[18].url)
  end

  Wait(650)

  if screenChance3 == 1 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 3, Config.Screens[19].url)
  elseif screenChance3 == 2 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 3, Config.Screens[20].url)
  end

  Wait(650)

  if screenChance4 == 1 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[21].url)
  elseif screenChance4 == 2 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[22].url)
  end

  Wait(650)

  if screenChance5 == 1 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[23].url)
  elseif screenChance5 == 2 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[24].url)
  end

  Wait(650)

  if screenChance6 == 1 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 6, Config.Screens[25].url)
  elseif screenChance6 == 2 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 6, Config.Screens[26].url)
  end

  Wait(650)

  if screenChance7 == 1 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[27].url)
  elseif screenChance7 == 2 then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[28].url)
  end

  Wait(650)

  if screenChance8 == 1 then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 8, Config.Screens[29].url)
  elseif screenChance8 == 2 then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 8, Config.Screens[30].url)
  end

  Wait(650)

  if Config.ScreenPoints[1].url ~= Config.Screens[15] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 1, Config.Screens[15].url)
  end

  Wait(650)

  if Config.ScreenPoints[1].url ~= Config.Screens[16] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 1, Config.Screens[16].url)
  end

  Wait(650)

  if Config.ScreenPoints[2].url ~= Config.Screens[17] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[17].url)
  end

  Wait(650)

  if Config.ScreenPoints[2].url ~= Config.Screens[18] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[18].url)
  end

  Wait(650)
  
  if Config.ScreenPoints[3].url ~= Config.Screens[19] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 3, Config.Screens[19].url)
  end

  Wait(650)

  if Config.ScreenPoints[3].url ~= Config.Screens[20] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 3, Config.Screens[20].url)
  end

  Wait(650)

  if Config.ScreenPoints[4].url ~= Config.Screens[21] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[21].url)
  end

  Wait(650)

  if Config.ScreenPoints[4].url ~= Config.Screens[22] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[22].url)
  end

  Wait(650)

  if Config.ScreenPoints[5].url ~= Config.Screens[23] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[23].url)
  end

  Wait(650)

  if Config.ScreenPoints[5].url ~= Config.Screens[24] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[24].url)
  end

  Wait(650)
  
  if Config.ScreenPoints[6].url ~= Config.Screens[25] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 6, Config.Screens[25].url)
  end

  Wait(650)

  if Config.ScreenPoints[6].url ~= Config.Screens[26] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 6, Config.Screens[26].url)
  end

  Wait(650)

  if Config.ScreenPoints[7].url ~= Config.Screens[27] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[27].url)
  end

  Wait(650)

  if Config.ScreenPoints[7].url ~= Config.Screens[28] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[28].url)
  end

  Wait(650)

  if Config.ScreenPoints[8].url ~= Config.Screens[29] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 8, Config.Screens[29].url)
  end

  Wait(650)

  if Config.ScreenPoints[8].url ~= Config.Screens[30] then
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 8, Config.Screens[30].url)
  end

end

RegisterNetEvent('sd-yachtheist:client:SpawnFirstSymbols', function()
    SetStartingSymbols()
end)

function SpawnCashOrGold()
  for k, v in pairs(Config.CashTrays) do
      local model = Config.CashTrays[k].model
      SD.utils.LoadModel(model)
      local obj = GetClosestObjectOfType(Config.CashTrays[k].coords, 3.0, Config.CashTrays[k].model, false, false, false)
      if obj ~= 0 then
          DeleteObject(obj)
          Wait(1)
      end
      local tray = CreateObject(model, Config.CashTrays[k].coords.x, Config.CashTrays[k].coords.y, Config.CashTrays[k].coords.z + 1.0, true, true, true)
      SetEntityHeading(tray, Config.CashTrays[k].coords.w)
      PlaceObjectOnGroundProperly(tray)
  end
end

function SpawnItems()
    local ped = PlayerPedId()
    for k, v in pairs(Config.Items) do
      if not v.taken then
        SD.utils.LoadModel(Config.Items[k].model)
        local obj = GetClosestObjectOfType(Config.Items[k].coords, 3.0, Config.Items[k].model, false, false, false)
        if obj ~= 0 then
            DeleteObject(obj)
            Wait(1)
        end

        local object = CreateObject(Config.Items[k].model, Config.Items[k].coords, true, true, true)     
        SetEntityHeading(object, Config.Items[k].coords.w)
        if Config.Items[k].model == "prop_ld_int_safe_01" then
          PlaceObjectOnGroundProperly(object)
        end
        FreezeEntityPosition(object, true)
      end
    end
end

function SpawnExtras()
    SD.utils.LoadModel('prop_laptop_01a')

    SD.utils.LoadModel('prop_security_case_01')

    local object = CreateObject('prop_laptop_01a', Config.HackLocation_3, true, true, true)     
    SetEntityHeading(object, 251.11)
    FreezeEntityPosition(object, true)

    local object2 = CreateObject('prop_laptop_01a', Config.HackLocation_4, true, true, true)     
    SetEntityHeading(object2, 69.1)
    FreezeEntityPosition(object2, true)


    local object3 = CreateObject('prop_security_case_01', Config.FinalBriefcaseLocation, true, true, true)     
    SetEntityHeading(object3, Config.FinalBriefcaseLocation.w)
    local propRotation = GetEntityRotation(object3, 2)
    SetEntityRotation(object3, propRotation.x + 90.0, propRotation.y, propRotation.z, 2, false)
    FreezeEntityPosition(object3, true)


    for k, v in pairs(Config.CashTrays) do
      local object4 = CreateObject(Config.CashTrays[k].tabel_model, Config.CashTrays[k].coords, true, true, true)     
      SetEntityHeading(object4, Config.CashTrays[k].coords.w)
      PlaceObjectOnGroundProperly(object4)
      FreezeEntityPosition(object4, true)
    end


end

function SpawnScreens()

  SD.utils.LoadModel('screen1')

  SD.utils.LoadModel('screen2')

  SD.utils.LoadModel('screen3')

  SD.utils.LoadModel('screen4')

  SD.utils.LoadModel('screen5')

  SD.utils.LoadModel('screen6')

  SD.utils.LoadModel('screen7')

  SD.utils.LoadModel('screen8')

  for k1, v1 in pairs(Config.ScreenPoints) do
    local object5 = CreateObject('screen'..k1, Config.ScreenPoints[k1].coords, false, false, false)     
    SetEntityHeading(object5, 71.73)
    FreezeEntityPosition(object5, true)
  end
end

RegisterNetEvent('sd-yachtheist:client:OpenFinalCase', function()
    SD.utils.LoadModel('prop_security_case_02')

    SD.utils.LoadAnim('missheistfbisetup1')
    TaskPlayAnim(PlayerPedId(), "missheistfbisetup1", "hassle_intro_loop_f", 8.0, 8.0, 10000, 49, 1, 0, 0, 0)
    Wait(2000)
    ClearPedTasks(PlayerPedId())

    local position = GetEntityCoords(PlayerPedId())
    local object = GetClosestObjectOfType(position.x, position.y, position.z, 2.0, 'prop_security_case_01', false, false, false)
    local objectCoords = GetEntityCoords(object)
    TriggerServerEvent('sd-yachtheist:server:Delete', objectCoords, 'prop_security_case_01')

    local object2 = CreateObject('prop_security_case_02', Config.FinalBriefcaseLocation, true, true, true)     
    SetEntityHeading(object2, Config.FinalBriefcaseLocation.w)
    PlaceObjectOnGroundProperly(object2)
    FreezeEntityPosition(object2, true)
    Wait(500)

    TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 11)
end)

RegisterNetEvent('sd-yachtheist:client:ViewContents', function()
  if SD.utils.Contains(Config.FinalItems, 'casinocodes') then
      SD.menu.OpenMenuList({
          {
              header = Config.CasinoCodesFirstHalf,
              txt = Lang:t('menu.yacht_enter_yacht_codes'),
              icon = "fas fa-folder",
              centered = true,
              params = {
                  event = 'sd_bridge:client:CloseMenuList',
              },
          },
      })
  end

  if not Config.Puzzle[12].codes then
      TriggerServerEvent('sd-yachtheist:server:finalItem')
      Wait(50)
  end
  TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 12)

  Wait(2000)

  if Config.WashUpOnBeach then
      TriggerServerEvent('sd-yachtheist:server:Sendback')
  end
  if not robberyFinished then
      TriggerServerEvent('sd-yachtheist:server:endsync')
      Wait(100)
      TriggerServerEvent('sd-yachtheist:server:finalItem')
  else
      SD.ShowNotification(Lang:t('error.unexpected_location'), 'error')
  end
end)

RegisterNetEvent('sd-yachtheist:client:SpawnItems', function()
  if not ItemsSpawned then
    Wait(1000)
    TriggerServerEvent('sd-yachtheist:server:syncItems')
    SpawnItems()
    SpawnExtras()
    SpawnCashOrGold()
  end
end)

RegisterNetEvent('sd-yachtheist:client:SpawnScreens', function()
    SpawnScreens()
end)

RegisterNetEvent('sd-yachtheist:client:SetTaken', function(k, bool)
    Config.Items[k].taken = bool
end)

RegisterNetEvent('sd-yachtheist:client:SetNetwork', function(k, id)
  Config.Items[k].networkID = id
end)

RegisterNetEvent('sd-yachtheist:client:SetPileState', function(k, state)
  Config.CashTrays[k].isSearched = state
end)


RegisterNetEvent('sd-yachtheist:client:CashOrGold', function()
    local ped = PlayerPedId()
    local playerCoords = GetEntityCoords(ped)
    local k = 0
    local distance = 0
    local position = GetEntityCoords(PlayerPedId())
    local closestModel = nil
    local object = nil

    for k1, v1 in pairs(Config.CashTrays) do
      distance = #(GetEntityCoords(PlayerPedId()) - (vector3(Config.CashTrays[k1].coords.x, Config.CashTrays[k1].coords.y, Config.CashTrays[k1].coords.z)))
      if distance < 2.0 and distance > 0.0 then
        closestModel = Config.CashTrays[k1].model
        object = GetClosestObjectOfType(position.x, position.y, position.z, 1.5, closestModel, false, false, false)
        k = k1
      end
    end

    local model = Config.CashTrays[k].model

    Trolley = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 3.0, model, false, false, false)
    local trollyobj = Trolley

    if IsEntityPlayingAnim(trollyobj, "anim@scripted@heist@ig1_table_grab@cash@male@", "grab_cash", 3) then return end

    local baghash = `hei_p_m_bag_var22_arm_s`
    SD.utils.LoadAnim("anim@scripted@heist@ig1_table_grab@cash@male@")
    SD.utils.LoadModel(baghash)

    NetworkRequestControlOfEntity(trollyobj)
    while not NetworkHasControlOfEntity(trollyobj) do
      Wait(0)
    end

    local rot = GetEntityHeading(trollyobj)
    local targetPosition = GetEntityCoords(trollyobj)
    local targetRotation = vector3(0.0, 0.0, rot)
    local animPos = GetAnimInitialOffsetPosition('anim@scripted@heist@ig1_table_grab@cash@male@', "enter", targetPosition[1], targetPosition[2], targetPosition[3], targetRotation, 0, 2)
    local targetHeading = rot

    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, GetEntityCoords(PlayerPedId()), true, false, false)

    local scene1 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, true, false, 1065353216, 0, 1.0)
    NetworkAddPedToSynchronisedScene(ped, scene1, "anim@scripted@heist@ig1_table_grab@cash@male@", "enter", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, scene1, "anim@scripted@heist@ig1_table_grab@cash@male@", "enter_bag", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(scene1)

    Wait(1750)

    local scene2 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, true, false, 1065353216, 0, 1.0)
    NetworkAddPedToSynchronisedScene(ped, scene2, "anim@scripted@heist@ig1_table_grab@cash@male@", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, scene2, "anim@scripted@heist@ig1_table_grab@cash@male@", "grab_bag", 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(trollyobj, scene2, "anim@scripted@heist@ig1_table_grab@cash@male@", "grab_cash", 4.0, -8.0, 1)
    NetworkStartSynchronisedScene(scene2)

    Wait(14000)

    local scene3 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, true, false, 1065353216, 0, 1.0)
    NetworkAddPedToSynchronisedScene(ped, scene3, "anim@scripted@heist@ig1_table_grab@cash@male@", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, scene3, "anim@scripted@heist@ig1_table_grab@cash@male@", "exit_bag", 4.0, -8.0, 1)
    NetworkStartSynchronisedScene(scene3)

    Wait(1700)

    while not NetworkHasControlOfEntity(trollyobj) do
      Wait(1)
      NetworkRequestControlOfEntity(trollyobj)
    end

    TriggerServerEvent('sd-yachtheist:server:GrabCash', k)
    DeleteObject(trollyobj)
    DeleteEntity(trollyobj)
    DeleteObject(bag)
    RemoveAnimDict("anim@scripted@heist@ig1_table_grab@cash@male@")
    SetModelAsNoLongerNeeded(`hei_p_m_bag_var22_arm_s`)
    TriggerServerEvent('sd-yachtheist:server:SetPileState', k, true)
end)

function GrabItem(k)
  local ped = PlayerPedId()
  local position = GetEntityCoords(ped)

  SD.ServerCallback('sd-yachtheist:server:hasItem', function(hasSafe)
      if not hasSafe then
          local object = nil
          local closestModel = nil
          local distance = 0
          local scenePos = nil
          local sceneRot = nil

          SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"), true)
          Wait(500)

          for k, v in pairs(Config.Items) do
              distance = #(GetEntityCoords(PlayerPedId()) - (vector3(Config.Items[k].coords.x, Config.Items[k].coords.y, Config.Items[k].coords.z)))
              if distance < 1.6 and distance > 0.001 then
                  closestModel = Config.Items[k].model
                  object = GetClosestObjectOfType(position.x, position.y, position.z, 1.5, closestModel, false, false, false)
              end
          end

          if closestModel == "prop_ld_int_safe_01" then
              SD.utils.LoadAnim('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
              TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 8.0, 10000, 49, 1, 0, 0, 0)
              SD.StartProgress('pick_up_safe', Lang:t("progress.pick_up_safe"), math.random(5000, 8000),
              function()
                  if Config.Items[k].taken then
                      ClearPedTasks(ped)
                      SD.ShowNotification(Lang:t('error.yacht_exploit'), 'error')
                  else
                      if object ~= nil then
                          ClearPedTasks(ped)
                          TriggerServerEvent('sd-yachtheist:server:addItem', Config.UsedItems.Safe)
                          SD.ShowNotification(Lang:t('success.yacht_safe_taken'), 'success')
                          TriggerServerEvent('sd-yachtheist:server:SetTaken', k, true)
                          local objectCoords = GetEntityCoords(object)
                          TriggerServerEvent('sd-yachtheist:server:Delete', objectCoords, closestModel)
                      end
                  end
              end,
              function()
                  ClearPedTasks(ped)
              end)
          else
              if object ~= nil then
                  scenePos = GetEntityCoords(PlayerPedId())
                  sceneRot = GetEntityRotation(PlayerPedId())
              end
              SD.utils.LoadAnim('anim@scripted@heist@ig16_glass_cut@male@')
              SD.utils.LoadAnim('anim@am_hold_up@male')

              cam = CreateCam("DEFAULT_ANIMATED_CAMERA", true)
              SetCamActive(cam, true)
              RenderScriptCams(true, 0, 1, 1, 0)

              PlayCamAnim(cam, "enter_cam", "anim@scripted@heist@ig16_glass_cut@male@", scenePos.x, scenePos.y, scenePos.z - 1.0, sceneRot.x, sceneRot.y, sceneRot.z - 90.0, 0, 2)
              Wait(1000)
              TaskPlayAnim(ped, "anim@am_hold_up@male", "shoplift_high", 8.0, 8.0, 10000, 49, 1, 0, 0, 0)
              Wait(1500)
              if Config.Items[k].taken then
                  ClearPedTasks(ped)
                  SD.ShowNotification(Lang:t('error.yacht_exploit'), 'error')
              else
                  if object ~= nil then
                      local reward = nil
                      local rewardLabel = nil
                      ClearPedTasks(ped)
                      for k, v in pairs(Config.Items) do
                          if v.model == closestModel then
                              reward = v.item_name
                              rewardLabel = v.item_label
                          end
                      end
                      TriggerServerEvent('sd-yachtheist:server:addItem', reward)
                      TriggerServerEvent('sd-yachtheist:server:SetTaken', k, true)
                      local objectCoords = GetEntityCoords(object)
                      TriggerServerEvent('sd-yachtheist:server:Delete', objectCoords, closestModel)
                      RenderScriptCams(false, true, 1500, 1, 0)
                      DestroyCam(cam, false)
                  end
              end
          end
      else
        SD.ShowNotification(Lang:t('error.yacht_already_have_safe'), 'error')
      end
  end, Config.UsedItems.Safe)
end

RegisterNetEvent('sd-yachtheist:client:Delete', function(objectCoords, closestModel)
  local object = GetClosestObjectOfType(objectCoords.x, objectCoords.y, objectCoords.z, 1.5, closestModel, false, false, false)

  if object ~= nil then
    FreezeEntityPosition(object, false)
    DeleteEntity(object)
    SetEntityAsNoLongerNeeded(object)
  end
end)

RegisterNetEvent('sd-yachtheist:client:DeleteAll', function()
  if Config.Items ~= nil then
    for k, v in pairs(Config.Items) do
      TriggerEvent('sd-yachtheist:client:Delete', Config.Items[k].coords, Config.Items[k].model)
    end

    for k1, v1 in pairs(Config.CashTrays) do
      TriggerEvent('sd-yachtheist:client:Delete', Config.CashTrays[k1].coords, Config.CashTrays[k1].model)
      TriggerEvent('sd-yachtheist:client:Delete', Config.CashTrays[k1].coords, Config.CashTrays[k1].tabel_model)
    end

    for k2, v2 in pairs(Config.ScreenPoints) do
      TriggerEvent('sd-yachtheist:client:Delete', Config.ScreenPoints[k2].coords, 'screen'..k2)
    end

  end
  ScreensTapped = false
  robberyFinished = false
  Started = false
  Config.PuzzleStarted = false
end)

RegisterNetEvent('sd-yachtheist:client:Sendback', function()
  if inYacht then
    TriggerEvent('spawnBeachAliveYacht')
  end
end)

RegisterNetEvent('sd-yachtheist:client:StartPuzzle', function(codes)
  if not Started then
    TriggerServerEvent('sd-yachtheist:server:CheckCodes', codes)
  else
      SD.ShowNotification(Lang:t('error.yacht_already_input_codes'), 'error')
  end
end)

RegisterNetEvent('sd-yachtheist:client:removeItem', function()
  TriggerServerEvent('sd-yachtheist:server:removeItem', Config.UsedItems.YachtCodes)
end)

RegisterNetEvent('sd-yachtheist:client:SetPuzzleStarted', function()
    Started = true
    Config.PuzzleStarted = true
end)

RegisterNetEvent('sd-yachtheist:client:PressTheButton', function()
  if Config.PuzzleStarted then
    if not Config.Puzzle[9].button then
      ClearPedTasks(PlayerPedId())
      SetEntityHeading(PlayerPedId(), 246.94)
      SD.utils.LoadAnim('anim@apt_trans@buzzer')
      TaskPlayAnim(PlayerPedId(), "anim@apt_trans@buzzer", "buzz_reg", 8.0, 8.0, 10000, 49, 1, 0, 0, 0)
      Wait(3000)
      TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 9)
      ClearPedTasks(PlayerPedId())
      TriggerEvent('sd-yachtheist:client:SpawnFirstSymbols')
      if Config.GiveHints then
        SD.ShowNotification(Lang:t('success.yacht_go_to_bridge'), 'success')
      end
    else
      SD.ShowNotification(Lang:t('error.yacht_button_already_pushed'), 'error')
    end
  else
    SD.ShowNotification(Lang:t('error.security_system_active'), 'error')
  end
end)

RegisterNetEvent('sd-yachtheist:client:SetWord', function(word)
    Config.Puzzle[8].word = word
end)

RegisterNetEvent('sd-yachtheist:client:endsync', function()
  robberyFinished = true
end)

local passAttemps = 0

RegisterNetEvent('sd-yachtheist:client:InputCodes', function()
  SD.ServerCallback("sd-yachtheist:server:GetCops", function(copCount)
      if copCount < Config.MinimumCops then 
          SD.ShowNotification(Lang:t('error.yacht_not_enough_police'), 'error')
          return
      end

      if robberyFinished or Started then return end

      local mdialog = SD.menu.ShowInput({
          header = Lang:t('menu.yacht_enter_yacht_codes'),
          submitText = Lang:t('menu.submit'),
          inputs = {
              {
                  text = Lang:t('menu.yacht_include_all'),
                  name = "password", 
                  type = "text", 
                  isRequired = true             
              }
          },
      })

if not mdialog.result then
    return
end

local enteredPassword = ""
if mdialog.method == "lib" then
    if not mdialog.result[1] then
        return
    end
    enteredPassword = mdialog.result[1]
elseif mdialog.method == "nui" then
    if not mdialog.result.password then
        return
    end
    enteredPassword = mdialog.result.password
end

      if mdialog ~= nil then
              SD.ServerCallback('sd-yachtheist:server:hasItem', function(hasItem)
                  if hasItem then
                    if not Config.AlertPoliceOnEnter then
                      TriggerEvent('sd-yachtheist:client:AlertOnEnter')
                    end
                      TriggerEvent('sd-yachtheist:client:StartPuzzle', enteredPassword)
                  else
                      SD.ShowNotification(Lang:t('error.missing_something'), 'error')
                  end
              end, Config.UsedItems.YachtCodes)
      end
  end)
end)

RegisterNetEvent('sd-yachtheist:client:ChangeScreen', function(screen, url)
    local txd = CreateRuntimeTxd('duiTxd'..screen)
    local duiObj = CreateDui(url, 640, 360)
    _G.duiObj = duiObj
    local dui = GetDuiHandle(duiObj)
    local tx = CreateRuntimeTextureFromDuiHandle(txd, 'duiTex'..screen, dui)
    AddReplaceTexture('screen'..screen, 'script_rt_tvscreen', 'duiTxd'..screen, 'duiTex'..screen)
    Config.ScreenPoints[screen].url = url
end)

RegisterNetEvent('sd-yachtheist:client:SetFinalScreen', function()
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 1, Config.Screens[4].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[7].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 3, Config.Screens[7].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[1].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[7].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 6, Config.Screens[9].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[6].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 8, Config.Screens[8].url)
    Wait(650)
    TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 10)
    Wait(650)
    if Config.ScreenPoints[1].url ~= Config.Screens[4].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 1, Config.Screens[4].url)
    end
    Wait(650)
    if Config.ScreenPoints[2].url ~= Config.Screens[7].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[7].url)
    end
    Wait(650)
    if Config.ScreenPoints[3].url ~= Config.Screens[7].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 3, Config.Screens[7].url)
    end
    Wait(650)
    if Config.ScreenPoints[4].url ~= Config.Screens[1].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[1].url)
    end
    Wait(650)
    if Config.ScreenPoints[5].url ~= Config.Screens[7].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[7].url)
    end
    Wait(650)
    if Config.ScreenPoints[6].url ~= Config.Screens[9].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 6, Config.Screens[9].url)
    end
    Wait(650)
    if Config.ScreenPoints[7].url ~= Config.Screens[6].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[6].url)
    end
    Wait(650)
    if Config.ScreenPoints[8].url ~= Config.Screens[8].url then
      TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 8, Config.Screens[8].url)
    end
    Wait(650)
end)

-- Client event to update passAttempts on all clients
RegisterNetEvent('sd-yachtheist:client:updatePassAttempts')
AddEventHandler('sd-yachtheist:client:updatePassAttempts', function(newAttempts)
  passAttemps = newAttempts
end)

RegisterNetEvent('sd-yachtheist:client:AttemptPassword', function()
  if not robberyFinished and Started and Config.Puzzle[2].one and Config.Puzzle[3].two and Config.Puzzle[4].three and Config.Puzzle[5].four then 
      local mdialog = SD.menu.ShowInput({
        header = Lang:t('menu.yacht_enter_codes'),
        submitText = Lang:t('menu.submit'),
        inputs = {
            {
              text = Lang:t('menu.yacht_include_all'),
                name = "password", 
                type = "text", 
                isRequired = true             
            }
        },
      })

    if not mdialog.result then
        return
    end
    
    local enteredPassword = ""
    if mdialog.method == "lib" then
        if not mdialog.result[1] then
            return
        end
        enteredPassword = mdialog.result[1]
    elseif mdialog.method == "nui" then
        if not mdialog.result.password then
            return
        end
        enteredPassword = mdialog.result.password
    end

      if mdialog ~= nil then
        passAttemps = passAttemps + 1
        if passAttemps <= Config.PasswordAttempts then
          if Config.Puzzle[8].word == 1 and enteredPassword == 'DRUM' then
            SD.ShowNotification(Lang:t('success.vault_unlocked'), 'success')
            TriggerEvent('sd-yachtheist:client:SetFinalScreen')
          elseif Config.Puzzle[8].word == 2 and enteredPassword == 'GLOW' then
            SD.ShowNotification(Lang:t('success.vault_unlocked'), 'success')
            TriggerEvent('sd-yachtheist:client:SetFinalScreen')
          elseif Config.Puzzle[8].word == 3 and enteredPassword == 'LEAF' then
            SD.ShowNotification(Lang:t('success.vault_unlocked'), 'success')
            TriggerEvent('sd-yachtheist:client:SetFinalScreen')
          elseif Config.Puzzle[8].word == 4 and enteredPassword == 'GRIM' then
            SD.ShowNotification(Lang:t('success.vault_unlocked'), 'success')
          else
            SD.ShowNotification(Lang:t('error.yacht_incorrect_password'), 'error')
          end
            TriggerEvent('sd-yachtheist:client:SetFinalScreen')
        else
          SD.ShowNotification(Lang:t('error.yacht_fully_locked'), 'error')
        end
      end
      else
      SD.ShowNotification(Lang:t('error.yacht_system_locked'), 'error')
  end
end)

RegisterNetEvent('sd-yachtheist:client:CheckPressure', function()
  local currentPressure = Config.Puzzle[6].pressure
  SD.menu.OpenMenuList({
    {
        header = currentPressure..' psi',
        txt = Lang:t('menu.yacht_current_pressure'),
        icon = "fas fa-clock",
        centered = true,
        params = {
            event = event,
        },
    },
  })
end)

RegisterNetEvent('sd-yachtheist:client:LowerPressure', function()
  local ped = PlayerPedId()
  if not robberyFinished then
  if Config.Puzzle[1].screens == false then 
    SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
    return 
  end
    if Config.Puzzle[7].bricked == false then
      SD.utils.LoadAnim('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
      TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 8.0, 6000, 49, 1, 0, 0, 0)
      TriggerServerEvent('sd-yachtheist:server:SyncSteam', Config.PressureValveLocation)
      SD.StartProgress('lower_pressure', Lang:t("progress.yacht_turn_valve"), 4000,
      function()
        ClearPedTasks(ped)
        local currentPressure = Config.Puzzle[6].pressure
        local pressureDecrease = Config.DecreasePressure1
        if currentPressure - pressureDecrease <= Config.PressureToExplode then 
          TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 7)
          TriggerEvent('sd-yachtheist:client:FuckingExplode')
        end
        TriggerServerEvent('sd-yachtheist:server:SetPressure', currentPressure - pressureDecrease)
      end,
      function()
      end)
    else
      SD.ShowNotification(Lang:t('error.yacht_press_too_low'), 'error')
    end
  else
    SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
  end
end)

RegisterNetEvent('sd-yachtheist:client:IncreasePressure', function()
  local ped = PlayerPedId()
  if not robberyFinished then
  if Config.Puzzle[1].screens == false then 
    SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
    return 
  end
  if Config.Puzzle[7].bricked == false then
    SD.utils.LoadAnim('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
    TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 8.0, 6000, 49, 1, 0, 0, 0)
    TriggerServerEvent('sd-yachtheist:server:SyncSteam', Config.PressureValveLocation)
    SD.StartProgress('lower_pressure', Lang:t("progress.yacht_turn_valve"), 4000,
    function()
      ClearPedTasks(ped)
      local currentPressure = Config.Puzzle[6].pressure
      local pressureIncrease = Config.IncreasePressure1
      if currentPressure + pressureIncrease <= 100 then
        TriggerServerEvent('sd-yachtheist:server:SetPressure', currentPressure + pressureIncrease)
      else
        SD.ShowNotification(Lang:t('error.yacht_press_no_higher'), 'error')
      end
    end,
    function()
      ClearPedTasks(ped)
    end)
  else
    SD.ShowNotification(Lang:t('error.yacht_run'), 'error')
  end
else
  SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
end
end)

RegisterNetEvent('sd-yachtheist:client:LowerPressure_Two', function()
  local ped = PlayerPedId()
  if not robberyFinished then
  if Config.Puzzle[1].screens == false then 
    SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
    return 
  end
    if Config.Puzzle[7].bricked == false then
      SD.utils.LoadAnim('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
      TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 8.0, 6000, 49, 1, 0, 0, 0)
      TriggerServerEvent('sd-yachtheist:server:SyncSteam', Config.PressureValveLocation_Two)
      SD.StartProgress('lower_pressure', Lang:t("progress.yacht_turn_valve"), 4000,
      function()
        ClearPedTasks(ped)
        local currentPressure = Config.Puzzle[6].pressure
        local pressureDecrease = Config.DecreasePressure2
        if currentPressure - pressureDecrease <= Config.PressureToExplode then 
          TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 7)
          TriggerEvent('sd-yachtheist:client:FuckingExplode')
        end
        TriggerServerEvent('sd-yachtheist:server:SetPressure', currentPressure - pressureDecrease)
      end,
      function()
      end)
    else
      SD.ShowNotification(Lang:t('error.yacht_press_too_low'), 'error')
    end
  else
    SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
  end
end)

RegisterNetEvent('sd-yachtheist:client:IncreasePressure_Two', function()
  local ped = PlayerPedId()
  if not robberyFinished then
  if Config.Puzzle[1].screens == false then 
    SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
    return 
  end
  if Config.Puzzle[7].bricked == false then
    SD.utils.LoadAnim('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
    TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 8.0, 6000, 49, 1, 0, 0, 0)
    TriggerServerEvent('sd-yachtheist:server:SyncSteam', Config.PressureValveLocation_Two)
    SD.StartProgress('lower_pressure', Lang:t("progress.lower_pressure_turn_valve"), 4000,
    function()
      ClearPedTasks(ped)
      local currentPressure = Config.Puzzle[6].pressure
      local pressureIncrease = Config.IncreasePressure2
      if currentPressure + pressureIncrease <= 100 then
        TriggerServerEvent('sd-yachtheist:server:SetPressure', currentPressure + pressureIncrease)
      else
        SD.ShowNotification(Lang:t('error.yacht_press_no_higher'), 'error')
      end
    end,
    function()
      ClearPedTasks(ped)
    end)
  else
    SD.ShowNotification(Lang:t('error.yacht_rapid_run'), 'error')
  end
else
  SD.ShowNotification(Lang:t('error.auto_pressure_active'), 'error')
end
end)

RegisterNetEvent('sd-yachtheist:client:SetPressure', function(pressure)
    Config.Puzzle[6].pressure = pressure
end)


RegisterNetEvent('sd-yachtheist:client:FuckingExplode', function()
if not Config.EnableExplosion then
  SD.ShowNotification(Lang:t('error.yacht_seized'), 'error')
elseif Config.EnableExplosions then
    if Config.GiveHints then
      SD.ShowNotification(Lang:t('error.yacht_engine_explode'), 'error')
    end
    Wait(5000)
      AddExplosion(-2034.17, -1031.15, 1.98, 29, 100000.0, true, false, 4.0, false)
      Wait(350)
      AddExplosion(-2042.83, -1035.03, 1.55, 29, 100000.0, true, false, 4.0, false)
      Wait(350)
      AddExplosion(-2053.45, -1032.63, 2.19, 29, 100000.0, true, false, 4.0, false)
      Wait(350)
      AddExplosion(-2059.65, -1020.06, 1.94, 29, 100000.0, true, false, 4.0, false)
      Wait(350)
      AddExplosion(-2066.15, -1023.85, 1.04, 29, 100000.0, true, false, 4.0, false)
      Wait(350)
      AddExplosion(-2086.57, -1017.82, 11.41, 29, 100000.0, true, false, 4.0, false)
      Wait(350)
      AddExplosion(-2115.9, -1005.06, 6.57, 29, 100000.0, true, false, 4.0, false)
      Wait(350)
      AddExplosion(-2087.46, -1020.99, 7.22, 29, 100000.0, true, false, 4.0, false)
    end
end)

RegisterNetEvent('sd-yachtheist:client:SyncSteam', function(coords)
    UseParticleFxAssetNextCall('core')
    local steam = StartParticleFxLoopedAtCoord("ent_sht_steam", coords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Citizen.Wait(5000)
    StopParticleFxLooped(steam)
		steam = nil
end)

RegisterNetEvent('sd-yachtheist:client:SetScreen', function(k, url)
    Config.ScreenPoints[k].url = url
    TriggerServerEvent('sd-yachtheist:server:ChangeScreen', k, url)
end)

local hack1 = 0
local hack2 = 0
local hack3 = 0
local hack4 = 0

RegisterNetEvent('sd-yachtheist:client:LaptopHack', function(item)
  local ped = PlayerPedId()
  local coords = GetEntityCoords(ped)

  SD.ServerCallback('sd-yachtheist:server:hasItem', function(hasItem)
      if hasItem then
          if Config.Puzzle[1].screens == true and not robberyFinished then
              if #(coords - Config.HackLocation_1) < 2.5 then 
                  TriggerEvent('sd-yachtheist:client:Hack', 1)
              elseif #(coords - Config.HackLocation_2) < 2.5 then 
                  TriggerEvent('sd-yachtheist:client:Hack', 2)
              elseif #(coords - Config.HackLocation_3) < 2.5 then 
                  TriggerEvent('sd-yachtheist:client:Hack', 3)
              elseif #(coords - Config.HackLocation_4) < 2.5 then 
                  TriggerEvent('sd-yachtheist:client:Hack', 4)
              else
                SD.ShowNotification(Lang:t('error.not_close_enough'), 'error')
              end
              if Config.GiveHints then
                SD.ShowNotification(Lang:t('error.regulate_pressure'), 'error')
              end
          else 
            SD.ShowNotification(Lang:t('error.cannot_hack_now'), 'error')
          end
      else
        SD.ShowNotification(Lang:t('error.missing_something'), 'error')
      end
  end, Config.UsedItems.USB)
end)

local function OnHackDone(success)
  local ped = PlayerPedId()
  if success then
    ClearPedTasks(ped)
    if Config.MainMinigame == 'mhacking' then
      TriggerEvent('mhacking:hide')
    end
      TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 2)
      if Config.Puzzle[8].word == 1 then
        TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[4].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success') 
      elseif Config.Puzzle[8].word == 2 then
        TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[3].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
      elseif Config.Puzzle[8].word == 3 then
        TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[2].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
      elseif Config.Puzzle[8].word == 4 then
        TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 5, Config.Screens[3].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
      end
  else
    if Config.MainMinigame == 'mhacking' then
      TriggerEvent('mhacking:hide')
    end
    ClearPedTasks(ped)
  end
end 

RegisterNetEvent('sd-yachtheist:client:Hack', function(k)
  local ped = PlayerPedId()

    if Config.Puzzle[7].bricked == true then return end 

    if k == 1 then
      if Config.Puzzle[2].one == false then
        hack1 = hack1 + 1

        SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
        TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
       
        if Config.MainMinigame == 'hacking' then
        exports['hacking']:OpenHackingGame(Config.YachtTime, Config.YachtBlocks, Config.YachtRepeat, function(bool)
          OnHackDone(bool)
        end)
        elseif Config.MainMinigame == 'mhacking' then
          TriggerEvent("mhacking:show")
          TriggerEvent("mhacking:start", math.random(Config.MinChar, Config.MaxChar), Config.Time, function(bool)
            OnHackDone(bool)
        end)
        elseif Config.MainMinigame == 'ps-ui' then
            exports['ps-ui']:VarHack(function(bool)
                OnHackDone(bool)
            end, Config.MainBlocks, Config.MainTime) 
        end
      end
    elseif k == 2 then
      if Config.SecondaryMinigame == 'ps-ui' then
        if Config.Puzzle[3].two == false then
          hack2 = hack2 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
       
            exports['ps-ui']:VarHack(function(success)
              if success then
                ClearPedTasks(ped)
                TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 3)
                if Config.Puzzle[8].word == 1 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[1].url)
              
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 2 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[2].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 3 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[6].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 4 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[1].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                end
              else
        
                ClearPedTasks(ped)
              end
            end, Config.Blocks, Config.Time) 
        end
      elseif Config.SecondaryMinigame == 'memorygame' then
        if Config.Puzzle[3].two == false then
          hack2 = hack2 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
        
          exports["memorygame"]:thermiteminigame(Config.Blocks, Config.Attempts, Config.Show, Config.Time, function() 
            DeleteObject(tabletObject)
            ClearPedTasks(ped)
              TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 3)
              if Config.Puzzle[8].word == 1 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[1].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 2 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[2].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 3 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[6].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 4 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[1].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              end
              end, function() 
                ClearPedTasks(ped)
            end)
          end
      elseif Config.SecondaryMinigame == 'hacking' then
        if Config.Puzzle[3].two == false then
          hack2 = hack2 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
       
          exports['hacking']:OpenHackingGame(Config.YachtTime_Two, Config.YachtBlocks_Two, Config.YachtRepeat_Two, function(success)
            if success then
              ClearPedTasks(ped)
              TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 3)
              if Config.Puzzle[8].word == 1 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[1].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 2 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[2].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 3 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[6].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 4 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 2, Config.Screens[1].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              end
            else
      
              ClearPedTasks(ped)
            end
          end) 
      end
    end
    elseif k == 3 then
      if Config.SecondaryMinigame == 'ps-ui' then
        if Config.Puzzle[4].three == false then
          hack3 = hack3 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
        
   
          exports['ps-ui']:VarHack(function(success)
            if success then
      
              ClearPedTasks(ped)
              TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 4)
              if Config.Puzzle[8].word == 1 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[5].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 2 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[7].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 3 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[14].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 4 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[13].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              end
            else
            
              ClearPedTasks(ped)
            end
          end, Config.Blocks, Config.Time)
        end
      elseif Config.SecondaryMinigame == 'memorygame' then
        if Config.Puzzle[4].three == false then
          hack3 = hack3 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
         
    
            exports["memorygame"]:thermiteminigame(Config.Blocks, Config.Attempts, Config.Show, Config.Time, function()
              
              ClearPedTasks(ped)
                TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 4)
                if Config.Puzzle[8].word == 1 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[5].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 2 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[7].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 3 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[14].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 4 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[13].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                end
              end, function() 
              
                ClearPedTasks(ped)
              end)
          end
      elseif Config.SecondaryMinigame == 'hacking' then
        if Config.Puzzle[4].three == false then
          hack3 = hack3 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
         
     
            exports['hacking']:OpenHackingGame(Config.YachtTime_Two, Config.YachtBlocks_Two, Config.YachtRepeat_Two, function(success)
              if success then
        
                ClearPedTasks(ped)
                TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 4)
                if Config.Puzzle[8].word == 1 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[5].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 2 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[7].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 3 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[14].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 4 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 7, Config.Screens[13].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                end
              else
              
                ClearPedTasks(ped)
              end
            end)
        end
      end
    elseif k == 4 then
      if Config.SecondaryMinigame == 'ps-ui' then
        if Config.Puzzle[5].four == false then
          hack4 = hack4 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
        
          exports['ps-ui']:VarHack(function(success)
            if success then
          
              ClearPedTasks(ped)
              TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 5)
              if Config.Puzzle[8].word == 1 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[12].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 2 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[11].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 3 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[10].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 4 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[12].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              end
            else
              ClearPedTasks(ped)
            
            end
          end, Config.Blocks, Config.Time) 
        end
    elseif Config.SecondaryMinigame == 'memorygame' then
      if Config.Puzzle[5].four == false then
        hack4 = hack4 + 1

        SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
        TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
        
          exports["memorygame"]:thermiteminigame(Config.Blocks, Config.Attempts, Config.Show, Config.Time, function() 
            ClearPedTasks(ped)
          
              TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 5)
              if Config.Puzzle[8].word == 1 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[12].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 2 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[11].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 3 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[10].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              elseif Config.Puzzle[8].word == 4 then
                TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[12].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
              end
            end, function() 
              ClearPedTasks(ped)
            
            end)
        end
      elseif Config.SecondaryMinigame == 'hacking' then
        if Config.Puzzle[5].four == false then
          hack4 = hack4 + 1
          SD.utils.LoadAnim('anim@heists@prison_heistig1_p1_guard_checks_bus')
          TaskPlayAnim(ped, "anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", 8.0, 8.0, 50000, 49, 1, 0, 0, 0)
          
            exports['hacking']:OpenHackingGame(Config.YachtTime_Two, Config.YachtBlocks_Two, Config.YachtRepeat_Two, function(success)
              if success then
            
                ClearPedTasks(ped)
                TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 5)
                if Config.Puzzle[8].word == 1 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[12].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 2 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[11].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 3 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[10].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                elseif Config.Puzzle[8].word == 4 then
                  TriggerServerEvent('sd-yachtheist:server:ChangeScreen', 4, Config.Screens[12].url)
SD.ShowNotification(Lang:t('success.screen_revealed'), 'success')
                end
              else
                ClearPedTasks(ped)
              
              end
            end) 
        end
      end
    end
end)

function openDoorAnim()
  SD.utils.LoadAnim("anim@heists@keycard@") 
  TaskPlayAnim( PlayerPedId(), "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0 )
  Wait(400)
  ClearPedTasks(PlayerPedId())
end

RegisterNetEvent('sd-yachtheist:client:EnterVault', function()
    if Config.Puzzle[10].vault then
      openDoorAnim()
      Wait(250)
      DoScreenFadeOut(250)
      Wait(2000)
      SetEntityCoords(PlayerPedId(), Config.EnterVaultPlayerCoords.x, Config.EnterVaultPlayerCoords.y, Config.EnterVaultPlayerCoords.z, 0, 0, 0, false)
      SetEntityHeading(PlayerPedId(), Config.EnterVaultPlayerCoords.w)
      DoScreenFadeIn(250)
      Wait(100)
    else
      SD.ShowNotification(Lang:t('error.vault_door_locked'), 'error')
    end
end)

RegisterNetEvent('sd-yachtheist:client:ExitVault', function()
    if Config.Puzzle[10].vault then
      openDoorAnim()
      Wait(250)
      DoScreenFadeOut(250)
      Wait(2000)
      SetEntityCoords(PlayerPedId(), Config.ExitVaultPlayerCoords.x, Config.ExitVaultPlayerCoords.y, Config.ExitVaultPlayerCoords.z, 0, 0, 0, false)
      SetEntityHeading(PlayerPedId(), Config.ExitVaultPlayerCoords.w)
      DoScreenFadeIn(250)
      Wait(100)
    else
      SD.ShowNotification(Lang:t('error.exploit_attempt'), 'error')
    end
end)

RegisterNetEvent('sd-yachtheist:client:SetCabinBusy', function(cabin, busy)
    Config.Cabins[cabin].isBusy = busy
end)

RegisterNetEvent('sd-yachtheist:client:SetCabinSearched', function(cabin, searched)
    Config.Cabins[cabin].isSearched = searched
end)

local openingDroor = false
local inAction = false

function LockpickAnim(cabin)
  openingDroor = true
  CreateThread(function()
      while true do
          if openingDroor then
              TaskPlayAnim(PlayerPedId(), Config.Cabins[cabin].animDic, Config.Cabins[cabin].animName, 3.0, 3.0, -1, 16, 0, 0, 0, 0)
          else
              StopAnimTask(PlayerPedId(), Config.Cabins[cabin].animDic, Config.Cabins[cabin].animName, 1.0)
              break
          end
          Wait(1000)
      end
  end)
end

function searchCabin(cabin)
  local ped = PlayerPedId()

  SetEntityHeading(ped, Config.Cabins[cabin].coords.w)
  LockpickAnim(cabin)
  TriggerServerEvent('sd-yachtheist:client:SetCabinBusy', cabin, true)
  inAction = true
  FreezeEntityPosition(ped, true)

  ClearPedTasks(PlayerPedId())
  SD.utils.LoadAnim(Config.Cabins[cabin].animDic)
  TaskPlayAnim(ped, Config.Cabins[cabin].animDic, Config.Cabins[cabin].animName, 3.0, 3.0, -1, 16, 0, 0, 0, 0)

  SD.StartProgress('cabin_search', Lang:t("progress.cabin_search"), math.random(12000, 18000),  -- Note: Increased time to compensate for both actions
      function()  -- When it's successful
        FreezeEntityPosition(ped, false)
        TriggerServerEvent('sd-yachtheist:server:CabinReward', cabin)
        TriggerServerEvent('sd-yachtheist:server:SetCabinSearched', cabin, true)
        TriggerServerEvent('sd-yachtheist:server:SetCabinBusy', cabin, false)
        ClearPedTasks(ped)
        openingDroor = false
        inAction = false
      end,
      function()  -- When it's cancelled
        ClearPedTasks(ped)
        TriggerServerEvent('sd-yachtheist:server:SetCabinBusy', cabin, false)
        openingDroor = false
        inAction = false
        FreezeEntityPosition(ped, false)
      end)
end

RegisterNetEvent("sd-yachtheist:client:SearchCabinet", function()
  local ped = PlayerPedId()
  local pos = GetEntityCoords(ped)
  local dist = 2
  for k, v in pairs(Config.Cabins) do
      if #(pos - vector3(Config.Cabins[k].coords.x, Config.Cabins[k].coords.y, Config.Cabins[k].coords.z)) < 2.5 then
          if not Config.Cabins[k].isSearched then
              if not Config.Cabins[k].isBusy then
                if not inAction then
                    searchCabin(k)
                end
              end
          end
      end
  end
end)

RegisterNetEvent('sd-yachtheist:client:ScreensTapped', function()
  ScreensTapped = true
end)

RegisterNetEvent('sd-yachtheist:client:SetStuffDone', function(k)
    if k == 1 then
      Config.Puzzle[k].screens = true
    elseif k == 2 then
      Config.Puzzle[k].one = true
    elseif k == 3 then
      Config.Puzzle[k].two = true
    elseif k == 4 then
      Config.Puzzle[k].three = true
    elseif k == 5 then
      Config.Puzzle[k].four = true
    elseif k == 7 then
      Config.Puzzle[k].bricked = true
    elseif k == 8 then
      Config.Puzzle[k].word = math.random(1, 4)
    elseif k == 9 then
      Config.Puzzle[k].button = true
    elseif k == 10 then
      Config.Puzzle[k].vault = true
    elseif k == 11 then
      Config.Puzzle[k].case = true
    elseif k == 12 then
      Config.Puzzle[k].codes = true
    end
end)

local function CheckSuccess()
  return screenThree and screenTwo and screenOne
end

CreateThread(function()
  while true do
      Wait(1000)
      
      if StartedScreens and inYacht then
          if screenTaps >= 3 then
            if not CheckSuccess() then
              screenTaps = 0
              screenOne = false
              screenTwo = false
              screenThree = false
              StartedScreens = false
              TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "metaldetected", 1.0)
              if Config.GiveHints then 
                  SD.ShowNotification(Lang:t("error.the_hack_incorrect"), 'error')
              end
            end
          end
      end
  end
end)

-- Event that sets lever sequence
RegisterNetEvent('sd-yachtheist:client:setMonitorSequence', function(sequence)
  MonitorSequence = sequence
  ScreensInteracted = {}
  ScreenTapCount = 0
end)

-- Function to check if two sequences are equal
AreSequencesEqual = function(seq1, seq2)
for i = 1, #seq1 do
    if seq1[i] ~= seq2[i] then
        return false
    end
end
return true
end

function TapScreen(k)
  if not ScreensTapped and not Config.PuzzleStarted then
      SD.ShowNotification(Lang:t('error.security_system_active'), 'error')
      return
  end

  if ScreensTapped then
      SD.ShowNotification(Lang:t("error.system_already_hacked"), 'error')
      return
  end


  if Config.PuzzleStarted then
      table.insert(ScreensInteracted, k)
      ScreenTapCount = ScreenTapCount + 1

      if not ScreensTapped then
          SD.ShowNotification(Lang:t("success.setup_screen_k") .. tostring(k), 'success')
      end

      if ScreenTapCount == 3 then
          if AreSequencesEqual(ScreensInteracted, MonitorSequence) then
              SD.ShowNotification(Lang:t("success.deactivated_pressure_regulators"), 'success')
              TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "ringing", 0.5)
              TriggerServerEvent('sd-yachtheist:server:SetStuffDone', 1)
              TriggerServerEvent('sd-yachtheist:server:ScreensTapped')
              TriggerEvent('sd-yachtheist:client:StartPressureDecrease')
              Wait(1500)
              if Config.GiveHints then
                  SD.ShowNotification(Lang:t("error.pressure_control_needed"), 'success')
                  SD.ShowNotification(Lang:t("error.hack_areas_info"), 'success')
              end
          else
              TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "metaldetected", 1.0)
              if Config.GiveHints then 
                SD.ShowNotification(Lang:t("error.the_hack_incorrect"), 'error')
              end
              ScreensInteracted = {}
              ScreenTapCount = 0
          end
      end
  end
end

function TapTheScreen(k)
  Wait(1000)
  screenIndex = k
  if Config.UseDataCrack then
    exports["datacrack"]:Start(5)
  else
    TapScreen(screenIndex)
  end
end

if Config.UseDataCrack then
  AddEventHandler("datacrack", function(output) 
    if output then
        TapScreen(screenIndex)
    else
      TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "metaldetected", 1.0)
    end
  end)
end

RegisterNetEvent('sd-yachtheist:client:CreateTargets', function()
  for k, v in pairs(Config.Items) do
    local itemName = 'items_'..k
    Zones[itemName] = SD.target.AddBoxZone(itemName, vector3(Config.Items[k].coords.x, Config.Items[k].coords.y, Config.Items[k].coords.z), 1.00, 2.00, {
        heading = Config.Items[k].coords.w,
        distance = 1.0,
        options = {
            {
                action = function() GrabItem(k) end,
                icon = 'fas fa-hands',
                label = Lang:t("target.grab"),
                canInteract = function()
                    return not v.taken
                end
            }
        }
    }, Config.YachtDebug)
end

for k1, v1 in pairs(Config.Cabins) do
    local cabinName = 'yacht_cabin_'..k1
    Zones[cabinName] = SD.target.AddBoxZone(cabinName, vector3(Config.Cabins[k1].coords.x, Config.Cabins[k1].coords.y, Config.Cabins[k1].coords.z), 1.00, 2.00, {
        heading = Config.Cabins[k1].coords.w,
        distance = 1.0,
        options = {
            {
                event = 'sd-yachtheist:client:SearchCabinet',
                icon = 'fas fa-search',
                label = Lang:t("target.search"),
                canInteract = function()
                    return not v1.isSearched and not v1.isBusy
                end
            }
        }
    }, Config.YachtDebug)
end

for k2, v2 in pairs(Config.CashTrays) do
    local pileName = 'yach_cash_gold'..k2
    Zones[pileName] = SD.target.AddBoxZone(pileName, vector3(Config.CashTrays[k2].coords.x, Config.CashTrays[k2].coords.y, Config.CashTrays[k2].coords.z), 2, 2, {
        heading = Config.CashTrays[k2].coords.w,
        distance = 2.0,
        options = {
            {
                event = 'sd-yachtheist:client:CashOrGold',
                icon = 'fas fa-hand-paper',
                label = Lang:t("target.grab"),
                canInteract = function()
                    return not v2.isSearched
                end
            }
        }
    }, Config.YachtDebug)
end


Zones['yacht_screen_one'] = SD.target.AddBoxZone('yacht_screen_one', vector3(Config.ScreenLocation_One.x, Config.ScreenLocation_One.y, Config.ScreenLocation_One.z), 1.00, 2.00, {
  heading = 3.6,
  distance = 2.0,
  options = {
      {
          action = function()
              TapTheScreen(1)
          end,
          icon = 'fas fa-fingerprint',
          label = Lang:t("target.setup_1"),
      }
  }
}, Config.YachtDebug)

Zones['yacht_screen_two'] = SD.target.AddBoxZone('yacht_screen_two', vector3(Config.ScreenLocation_Two.x, Config.ScreenLocation_Two.y, Config.ScreenLocation_Two.z), 1.00, 2.00, {
  heading = 3.6,
  distance = 2.0,
  options = {
      {
          action = function()
              TapTheScreen(2)
          end,
          icon = 'fas fa-fingerprint',
          label = Lang:t("target.setup_2"),
      }
  }
}, Config.YachtDebug)

Zones['yacht_screen_three'] = SD.target.AddBoxZone('yacht_screen_three', vector3(Config.ScreenLocation_Three.x, Config.ScreenLocation_Three.y, Config.ScreenLocation_Three.z), 1.00, 2.00, {
  heading = 3.6,
  distance = 2.0,
  options = {
      {
          action = function()
              TapTheScreen(3)
          end,
          icon = 'fas fa-fingerprint',
          label = Lang:t("target.setup_3"),
      }
  }
}, Config.YachtDebug)

Zones['yacht_start_puzzle'] = SD.target.AddBoxZone('yacht_start_puzzle', vector3(Config.PuzzleStartLocation.x, Config.PuzzleStartLocation.y, Config.PuzzleStartLocation.z), 1.00, 2.00, {
  heading = 177.26,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:InputCodes',
          icon = 'fas fa-terminal',
          label = Lang:t("target.access_terminal"),
      }
  }
}, Config.YachtDebug)

Zones['enter_vault_yacht'] = SD.target.AddBoxZone('enter_vault_yacht', vector3(Config.EnterVaultLocation.x, Config.EnterVaultLocation.y, Config.EnterVaultLocation.z), 1.00, 2.00, {
  heading = 177.26,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:EnterVault',
          icon = 'fas fa-dungeon',
          label = Lang:t("target.enter_vault"),
      }
  }
}, Config.YachtDebug)

Zones['exit_vault_yacht'] = SD.target.AddBoxZone('exit_vault_yacht', vector3(Config.ExitVaultLocation.x, Config.ExitVaultLocation.y, Config.ExitVaultLocation.z), 1.00, 2.00, {
  heading = 177.26,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:ExitVault',
          icon = 'fas fa-dungeon',
          label = Lang:t("target.exit_vault"),
      }
  }
}, Config.YachtDebug)

Zones['open_final_case'] = SD.target.AddBoxZone('open_final_case', vector3(Config.FinalBriefcaseLocation.x, Config.FinalBriefcaseLocation.y, Config.FinalBriefcaseLocation.z), 1.00, 2.00, {
  heading = 177.26,
  distance = 1.5,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:OpenFinalCase',
          icon = 'fas fa-briefcase',
          label = Lang:t("target.open_briefcase"),
          canInteract = function()
              if Config.Puzzle[11].case then 
                  return false
              end
              return true
          end
      },
      {
          type = 'client',
          event = 'sd-yachtheist:client:ViewContents',
          icon = 'fas fa-folder',
          label = Lang:t("target.view_contents"),
          canInteract = function()
              if not Config.Puzzle[11].case then 
                  return false
              end
              return true
          end
      }
  }
}, Config.YachtDebug)

Zones['yacht_red_button'] = SD.target.AddBoxZone('yacht_red_button', vector3(Config.RedButtonLocation.x, Config.RedButtonLocation.y, Config.RedButtonLocation.z), 1.00, 2.00, {
  heading = 177.26,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:PressTheButton',
          icon = 'fas fa-circle',
          label = Lang:t("target.press_button")
      }
  }
}, Config.YachtDebug)

Zones['pressure_valve'] = SD.target.AddBoxZone('pressure_valve', vector3(Config.PressureValveLocation.x, Config.PressureValveLocation.y, Config.PressureValveLocation.z), 2.00, 2.00, {
  heading = 125.76,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:IncreasePressure',
          icon = 'fas fa-temperature-high',
          label = Lang:t("target.increase_pressure"),
      },
      {
          type = 'client',
          event = 'sd-yachtheist:client:LowerPressure',
          icon = 'fas fa-temperature-low',
          label = Lang:t("target.lower_pressure")
      }
  }
}, Config.YachtDebug)

Zones['pressure_valve_two'] = SD.target.AddBoxZone('pressure_valve_two', vector3(Config.PressureValveLocation_Two.x, Config.PressureValveLocation_Two.y, Config.PressureValveLocation_Two.z), 2.00, 2.00, {
  heading = 125.76,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:IncreasePressure_Two',
          icon = 'fas fa-temperature-high',
          label = Lang:t("target.increase_pressure"),
      },
      {
          type = 'client',
          event = 'sd-yachtheist:client:LowerPressure_Two',
          icon = 'fas fa-temperature-low',
          label = Lang:t("target.lower_pressure")
      }
  }
}, Config.YachtDebug)

Zones['check_pressure'] = SD.target.AddBoxZone('check_pressure', vector3(Config.CheckPressureLocation.x, Config.CheckPressureLocation.y, Config.CheckPressureLocation.z), 1.00, 2.00, {
  heading = 150.52,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:CheckPressure',
          icon = 'fas fa-clock',
          label = Lang:t("target.check_pressure"),
      }
  }
}, Config.YachtDebug)

local hackDetails = {
  heading = 335.33,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:LaptopHack',
          icon = 'fas fa-user-secret',
          label = Lang:t("target.insert_usb"),
      }
  }
}

local hackLocations = {
  ['hack_location_one'] = Config.HackLocation_1,
  ['hack_location_two'] = Config.HackLocation_2,
  ['hack_location_three'] = Config.HackLocation_3,
  ['hack_location_four'] = Config.HackLocation_4,
}

for zone, loc in pairs(hackLocations) do
  Zones[zone] = SD.target.AddBoxZone(zone, vector3(loc.x, loc.y, loc.z), 1.00, 2.00, hackDetails, Config.YachtDebug)
end

Zones['attempt_final_code'] = SD.target.AddBoxZone('attempt_final_code', vector3(Config.AttemptPasswordLocation.x, Config.AttemptPasswordLocation.y, Config.AttemptPasswordLocation.z), 1.00, 2.00, {
  heading = 335.33,
  distance = 2.0,
  options = {
      {
          type = 'client',
          event = 'sd-yachtheist:client:AttemptPassword',
          icon = 'fas fa-user-secret',
          label = Lang:t("target.enter_codes"),
      }
  }
}, Config.YachtDebug)
end)

RegisterNetEvent('sd-yachtheist:client:reset', function()
    Config.PuzzleStarted = false
    Config.Puzzle[1].screens = false
    Config.Puzzle[2].one = false
    Config.Puzzle[3].two = false
    Config.Puzzle[4].three = false
    Config.Puzzle[5].four = false
    Config.Puzzle[7].bricked = false
    Config.Puzzle[9].button = false
    Config.Puzzle[10].vault = false
    Config.Puzzle[11].case = false
    Config.Puzzle[12].codes = false
end)

RegisterNetEvent('sd-yachtheist:client:AttemptSpawn', function()
  SD.ServerCallback("sd-yachtheist:server:cooldown", function(cooldown) 
      if not cooldown then
          SD.ServerCallback("sd-yachtheist:server:GetCops", function(copCount)
              if copCount >= Config.MinimumCops then
                  if not hasSpawnedInYacht then
                      if Config.CheckForItem then
                          SD.ServerCallback('sd-yachtheist:server:hasItem', function(hasItem)
                              if hasItem then
                                  TriggerServerEvent('sd-yachtheist:server:startCooldown')
                              end
                          end, Config.UsedItems.YachtCodes)
                      else
                          TriggerServerEvent('sd-yachtheist:server:startCooldown')
                      end
                  end
              end
          end)
      end
  end)
end)

if Config.ForceAnimation then
  CreateThread(function()   
      while true do
          local player = PlayerPedId()
          
          -- Checking for secured_safe item
          if SD.HasItem(Config.UsedItems.Safe, 1) then
              if not IsEntityPlayingAnim(player, 'anim@heists@box_carry@', 'idle', 3) then
                  SD.utils.LoadAnim('anim@heists@box_carry@')
                  TaskPlayAnim(player, 'anim@heists@box_carry@', 'idle', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
              end
              if itemProp == nil then
                  itemProp = CreateObject(GetHashKey("prop_ld_int_safe_01"), 0, 0, 0, true, true, true)
                  AttachEntityToEntity(itemProp, player, GetPedBoneIndex(player, 60309), 0.030, 0.080, 0.255, -130.0, 110.0, 0.0, true, false, false, true, 0, true) 
              end
          else
              if itemProp ~= nil then
                  DeleteEntity(itemProp)
                  itemProp = nil
                  ClearPedTasks(player)
              end
          end

          -- Checking for yachtcodes item
          if SD.HasItem(Config.UsedItems.YachtCodes, 1) then
              if not IsEntityPlayingAnim(player, 'missheistdocksprep1hold_cellphone', 'static', 3) then
                  SD.utils.LoadAnim('missheistdocksprep1hold_cellphone')
                  TaskPlayAnim(player, 'missheistdocksprep1hold_cellphone', 'static', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
              end
              if codesProp == nil then
                  codesProp = CreateObject(GetHashKey("prop_security_case_01"), 0, 0, 0, true, true, true)
                  AttachEntityToEntity(codesProp, player, GetPedBoneIndex(player, 57005), 0.1, 0.0, 0.0, 300.0, 280.0, -13.0, 1, 1, 0, true, 2, 1) 
              end
          else
              if codesProp ~= nil then
                  DeleteEntity(codesProp)
                  codesProp = nil
                  ClearPedTasks(player)
              end
          end

          -- Checking for casinocodes item
          if SD.HasItem(Config.UsedItems.CasinoCodes, 1) then
              if not IsEntityPlayingAnim(player, 'missheistdocksprep1hold_cellphone', 'static', 3) then
                  SD.utils.LoadAnim('missheistdocksprep1hold_cellphone')
                  TaskPlayAnim(player, 'missheistdocksprep1hold_cellphone', 'static', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
              end
              if ccodesProp == nil then
                  ccodesProp = CreateObject(GetHashKey("prop_security_case_01"), 0, 0, 0, true, true, true)
                  AttachEntityToEntity(ccodesProp, player, GetPedBoneIndex(player, 57005), 0.1, 0.0, 0.0, 300.0, 280.0, -13.0, 1, 1, 0, true, 2, 1) 
              end
          else
              if ccodesProp ~= nil then
                  DeleteEntity(ccodesProp)
                  ccodesProp = nil
                  ClearPedTasks(player)
              end
          end

          Wait(1500)
      end
  end)
end

RegisterNetEvent('sd-yachtheist:client:syncItems', function()
  ItemsSpawned = true
end)

RegisterNetEvent('sd-yachtheist:client:syncItems2', function()
  ItemsSpawned = false
end)


AddEventHandler("spawnBeachAliveYacht", function()
	local loadin = true
	CreateThread(function()
		while loadin do
			if not IsScreenFadedOut() then
				DoScreenFadeOut(100)
			end
			Citizen.Wait(0)
		end
	end)
	local ped = PlayerPedId()
	SetEntityCoords(ped, Config.BeachWashupLocation.x, Config.BeachWashupLocation.y, Config.BeachWashupLocation.z)
  SetEntityHeading(ped, Config.BeachWashupLocation.w)
	Wait(5000)
	loadin = false
  if SD.Framework == 'qb' then
    TriggerEvent('hospital:client:ReviveLittle')
  end
	DoScreenFadeIn(500)

end)

RegisterNetEvent('sd-yachtheist:client:ViewYachtCodes', function()
  SD.ServerCallback('sd-yachtheist:server:GetYachtCode', function(retrievedCode)
    Config.YachtCodesFirstHalf = retrievedCode
    SD.menu.OpenMenuList({
      {
          header = retrievedCode,
          txt = Lang:t('menu.first_half_yacht_codes'),
          icon = "fas fa-folder",
          centered = true,
          params = {
              event = 'sd_bridge:client:CloseMenuList',
          },
      },
    })
  end)
end)

RegisterNetEvent('sd-yachtheist:client:ViewCasinoCodes', function()
  SD.menu.OpenMenuList({
    {
        header = Config.CasinoCodesFirstHalf,
        txt = Lang:t('menu.first_half_casino_codes'),
        icon = "fas fa-folder",
        centered = true,
        params = {
            event = 'sd_bridge:client:CloseMenuList',
        },
    },
  })
end)

RegisterNetEvent('sd-yachtheist:client:addPlayer', function()
  local p = promise.new() 
    SD.ServerCallback("sd-yachtheist:server:addPlayerCallback", function(added) 
      p:resolve(added)
    end)
    return Citizen.Await(p)
end)


yacht:onPlayerInOut(function(isPointInside)
  if isPointInside then
    inYacht = true
    TriggerEvent('sd-yachtheist:client:addPlayer')
    TriggerEvent('sd-yachtheist:client:AttemptSpawn')
    if SD.Framework == 'qb' then
      TriggerEvent('qb-ambulancejob:client:InYacht')
    end

  else
    inYacht = false
    TriggerServerEvent('sd-yachtheist:server:removePlayer')
    if SD.Framework == 'qb' then
      TriggerEvent('qb-ambulancejob:client:OutYacht')
    end
  end
end)

