local Framework = exports['d3MBA-lib']:GetFrameworkObject()

CreateThread(function() 
    ProcessingChickenTableZone()
end)

PolyZoneTable = {}

function AddTargetInstructionPed(ped)
    exports[Framework.Target]:AddTargetEntity(ped, {
        options = {
            {
                icon = Config.TargetIcons["instructions_ped"],
                label = Config.TargetLabels["instructions_ped"],
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end
                end, 
                action = function()
                    startInstructions()
                end,
                job = Config.JobRequired,
            },
        },
        distance = 1.5
    })
end 

function AddTargetJobVehiclePed()
    exports[Framework.Target]:AddTargetEntity(JobVehiclePed, {
        options = {
            {
                icon = Config.TargetIcons["job_vehicle"],
                label = Config.TargetLabels["spawn_job_vehicle"],
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false and butcherJobVehicleSpawned == false then return true end
                end, 
                action = function()
                    if butcherJobVehicleSpawned == true then return end 
                    TriggerEvent("d3MBA-butcher:client:SpawnJobVehicle")
                end,
                job = Config.JobRequired,
            },
        },
        distance = 1.5
    })
end 

exports[Framework.Target]:AddCircleZone("ButcherJobOffice", vector3(-67.1068, 6253.2563, 31.4032), 0.40, {
    name = "ButcherJobOffice",
    useZ = true,
    debugPoly = Config.DebugPolyZone
    }, {
        options = {
        {
            icon = Config.TargetIcons["office"],
            label = Config.TargetLabels["office"],
            canInteract = function()
                if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end 
            end,
            action = function()
                TriggerEvent("d3MBA-butcher:client:OpenLaptopMenu")
            end,
            job = Config.JobRequired,

        }
    },
    distance = 2.0
})
table.insert(PolyZoneTable, "ButcherJobOffice")

local ChangeClothesCoords = {
    vector3(-75.91, 6250.72, 31.09),

    vector3(-101.66, 6191.65, 30.50),
    vector3(-105.28, 6195.48, 30.48),
}

CreateThread(function()  
    if Config.ChangeClothes.Use == true then 
        for i = 1, #ChangeClothesCoords do 
            exports[Framework.Target]:AddCircleZone("ButcherChangeClothes"..i, vector3(ChangeClothesCoords[i].x, ChangeClothesCoords[i].y, ChangeClothesCoords[i].z), 1.95, {
                name = "ButcherChangeClothes"..i,
                useZ = true,
                debugPoly = Config.DebugPolyZone
                }, {
                    options = {
                    {
                        icon = Config.TargetIcons["change_clothes"],
                        label = Config.TargetLabels["change_clothes"],
                        canInteract = function()
                            if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end 
                        end,
                        action = function()
                            ChangeClothes()
                        end,
                        job = Config.JobRequired,
            
                    }
                },
                distance = 2.0
            })
            table.insert(PolyZoneTable, "ButcherChangeClothes"..i)
        end 
    end
end)

-- Collect butcher knife 
exports[Framework.Target]:AddCircleZone("ButcherKnife", vector3(-86.37, 6211.92, 31.08), 1.38, {
    name = "ButcherKnife",
    useZ = true,
    debugPoly = Config.DebugPolyZone
    }, {
        options = {
        {
            icon = Config.TargetIcons["take"],
            label = Config.TargetLabels["collect_butcher_knife"],
            canInteract = function()
                if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end 
            end,
            action = function()
                local HasItemButcherKnife = Framework.TriggerServerCallback("d3MBA-butcher:server:CheckIfPlayerHasItem", Config.Items.Knife, 1)
                Wait(50)

                if HasItemButcherKnife == false then 
                    IsInAction = true 
                    LoadAnimDict('anim@amb@clubhouse@bar@drink@one')
                    FreezeEntityPosition(PlayerPedId(), true)
                    TaskPlayAnim(PlayerPedId(), 'anim@amb@clubhouse@bar@drink@one', 'one_player', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
                    Wait(1600)
                    IsInAction = false
                    FreezeEntityPosition(PlayerPedId(), false)
                    StopAnimTask(PlayerPedId(), 'anim@amb@clubhouse@bar@drink@one', 'one_player', 1.0)
                    TriggerServerEvent("d3MBA-butcher:server:CollectButcherKnife", vector3(-86.37, 6211.92, 31.08))
                else
                    TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications['you_already_have_butcher_knife'], Framework.NotificationsSettings.Error, 5000)
                end

            end,
            job = Config.JobRequired,

        }
    },
    distance = 2.0
})
table.insert(PolyZoneTable, "ButcherKnife")


-- Return vehicle 
CheckVehicle = false
CreateThread(function()
	local PolyZone = BoxZone:Create(vector3(-56.2115, 6276.945, 31.363), 11.6, 14.5, {
        name = 'ButcherVehicleZone',
        heading = 32,
        minZ = 29.56,
        maxZ = 34.96,
		debugPoly= Config.DebugPolyZone,
    })

    PolyZone:onPlayerInOut(function (inside)
        if inside then
            inVehicle = IsPedInVehicle(PlayerPedId(), butcherJobVehicle, true)
            if inVehicle then
                TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["return_vehicle"], Framework.NotificationsSettings.Info, 5000)
				ReturnVehicle()
            end
        else
			CheckVehicle = false
        end
    end)
    table.insert(PolyZoneTable, "ButcherVehicleZone")
end)

-- Return job vehicle function 
function ReturnVehicle()
    CheckVehicle = true
    CreateThread(function()
        while CheckVehicle do
			Wait(0)
			if CheckVehicle == false then break end
		if IsControlJustPressed(0, 38) then
			CheckVehicle = false
			local ped = PlayerPedId()
				if inVehicle then
					TaskLeaveVehicle(PlayerPedId(), butcherJobVehicle, 0)
					Wait(1000)
					NetworkFadeOutEntity(butcherJobVehicle, true, true)
					Wait(600)
                    TriggerEvent("d3MBA-buther:client:ReturnJobVehicle")
				end
			end
        end
    end)
end

function AddTargetEntityCatchingChickens()
    exports[Framework.Target]:AddTargetEntity(catchingPed, {
        options = {
            {
                icon = Config.TargetIcons["catching_ped"],
                label = Config.TargetLabels["catching_ped"],
                canInteract = function()
                    if isCatching == false and IsPedOnFoot(PlayerPedId()) then return true end 
                end, 
                action = function()
                    TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["go_catch_chickens"], Framework.NotificationsSettings.Info, 5000)
                    spawnChickens()
                end,
                job = Config.JobRequired,
            },

            {
                icon = Config.TargetIcons["stop_catching"],
                label = Config.TargetLabels["stop_catching"],
                canInteract = function()
                    if isCatching == true and IsPedOnFoot(PlayerPedId()) then return true end 
                end, 
                action = function()
                    StopCatchingChickens()
                end,
                job = Config.JobRequired,
            },


        },
        distance = Config.CatchingChickens.PedInteractDistance
    })
end 

exports[Framework.Target]:AddCircleZone("ButcherJobLine", vector3(-92.01, 6242.06, 31.74), 1.2, {
    name = "ButcherJobLine",    
    debugPoly = Config.DebugPolyZone,
    }, {
        options = {
            {
                icon = Config.TargetIcons["line"],
                label = Config.TargetLabels["put_chicken_on_line"],
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end 
                end,
                action = function()
                    if IsPlayerWearingJobUniform() == true then 
                        local HasItemUnpluckedChicken = Framework.TriggerServerCallback("d3MBA-butcher:server:CheckIfPlayerHasItem", Config.Items.UnpluckedChicken, 1)
                        if HasItemUnpluckedChicken == true then 
                            PutChickenOnTheLine()
                        else
                            TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["you_dont_have_unplucked_chicken"], Framework.NotificationsSettings.Error, 5000)
                        end
                    end
                end,
                job = Config.JobRequired,
            }, 

        },
        distance = 2.0
})
table.insert(PolyZoneTable, "ButcherJobLine")


exports[Framework.Target]:AddCircleZone("ButcherBoxOfMeat", vector3(-80.58, 6226.94, 30.84), 1.06, {
    name = "ButcherBoxOfMeat",
    useZ = true,
    debugPoly = Config.DebugPolyZone
    }, {
        options = {
        {
            icon = Config.TargetIcons["meat_box"],
            label = Config.TargetLabels["meat_box"],
            canInteract = function()
                if IsPedOnFoot(PlayerPedId()) then return true end 
            end,
            action = function()
                if IsPlayerWearingJobUniform() == true then 
                    if MeatBoxCount <= 0 then 
                        TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["no_meat_in_box"], Framework.NotificationsSettings.Error, 5000)
                    else
                        TriggerServerEvent("d3MBA-butcher:server:TakeChickenFromTheBox", vector3(-80.58, 6226.94, 30.84), MeatBoxCount)
                        MeatBoxCount = 0 
                        LoadAnimDict("anim@heists@narcotics@trash")
                        TaskPlayAnim(PlayerPedId(), 'anim@heists@narcotics@trash', 'pickup', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
                    end
                end
            end,
            job = Config.JobRequired,

        }
    },
    distance = 1.0
})
table.insert(PolyZoneTable, "ButcherBoxOfMeat")


LineControlTables = {
    vector3(-87.09, 6238.06, 31.14),
    vector3(-78.3936, 6225.0586, 31.1169)
}

for i = 1, #LineControlTables do 
    exports[Framework.Target]:AddCircleZone("ButcherLineControls" ..i, vector3(LineControlTables[i].x, LineControlTables[i].y, LineControlTables[i].z), 0.95, {
        name = "ButcherLineControls"..i,
        useZ = true,
        debugPoly = Config.DebugPolyZone
        }, {
            options = {
            {
                icon = Config.TargetIcons["open_line_controls"],
                label = Config.TargetLabels["open_line_controls"],
                action = function()
                    TriggerEvent("d3MBA-butcher:client:OpenLineControlsMenu")
                end,
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) then return true end 
                end,
                job = Config.JobRequired,
                
            }
        },
        distance = 1.0
    })
    table.insert(PolyZoneTable, "ButcherLineControls"..i)
end 

exports[Framework.Target]:AddCircleZone("ButcherLegsContainer", vector3(-86.36, 6233.19, 30.94), 1.41, {
    name = "ButcherLegsContainer",    
    debugPoly = Config.DebugPolyZone,
    }, {
        options = {
            {
                icon = Config.TargetIcons["legs_container"],
                label = Config.TargetLabels["legs_container"],
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end 
                end,
                action = function()
                    if IsPlayerWearingJobUniform() == true then 
                        if LegsBoxCount <= 0 then 
                            TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["no_legs_in_box"], Framework.NotificationsSettings.Error, 5000)
                        else 
                            TriggerServerEvent("d3MBA-butcher:server:TakeChickenLegs", vector3(-86.36, 6233.19, 30.94), LegsBoxCount)
                            LegsBoxCount = 0
                            LoadAnimDict("anim@heists@narcotics@trash")
                            TaskPlayAnim(PlayerPedId(), 'anim@heists@narcotics@trash', 'pickup', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
                        end                
                    end
                end,
                job = Config.JobRequired,
            }, 

        },
        distance = 2.0
})
table.insert(PolyZoneTable, "ButcherLegsContainer")


-- Chicken processing 
ProcessingTableCoords = {
    vector3(-87.06, 6226.08, 31.09),
    vector3(-88.1930, 6227.798, 31.09),
    vector3(-91.99, 6233.4, 31.09),
    vector3(-99.9908, 6201.966, 31.068),
    vector3(-81.35, 6238.6, 31.09),
    vector3(-95.16, 6207.53, 31.03),
}

function ProcessingChickenTableZone()
    for i = 1, #ProcessingTableCoords do 
        exports[Framework.Target]:AddCircleZone("BuctcherProcessingTable" ..i, vector3(ProcessingTableCoords[i].x, ProcessingTableCoords[i].y, ProcessingTableCoords[i].z), 0.9, {
            name = "BuctcherProcessingTable" ..i,
            debugPoly = Config.DebugPolyZone,
            }, {
                options = {
                    {
                        icon = Config.TargetIcons["circle"],
                        label = Config.TargetLabels["kill_chicken"],
                        canInteract = function()
                            if IsPedOnFoot(PlayerPedId()) and ChickenKilled == false and IsInAction == false then return true end 
                        end,
                        action = function()
                            if IsPlayerWearingJobUniform() == true then 
                                local HasItemChicken = Framework.TriggerServerCallback("d3MBA-butcher:server:CheckIfPlayerHasItem", Config.Items.Chicken, 1)
                                Wait(50)
                                local HasItemButcherKnife = Framework.TriggerServerCallback("d3MBA-butcher:server:CheckIfPlayerHasItem", Config.Items.Knife, 1)
                                Wait(50)
                                if HasItemChicken == true then 
                                    if HasItemButcherKnife == true then 
                                        KillChicken(i)
                                    else
                                        TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["you_dont_have_butcher_knife"], Framework.NotificationsSettings.Error, 5000)
                                    end 
                                else
                                    TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["you_dont_have_chicken"], Framework.NotificationsSettings.Error, 5000)
                                end
                            end
                        end, 
                        job = Config.JobRequired,
                    }, 


                    {
                        icon = Config.TargetIcons["circle"],
                        label = Config.TargetLabels["chicken_processing"],
                        canInteract = function()
                            if IsPedOnFoot(PlayerPedId()) and ChickenKilled == false and IsInAction == false then return true end 
                        end,
                        action = function()
                            if IsPlayerWearingJobUniform() == true then 
                                local HasItemPlackedChicken = Framework.TriggerServerCallback("d3MBA-butcher:server:CheckIfPlayerHasItem", Config.Items.PluckedChicken, 1)
                                Wait(50)
                                local HasItemButcherKnife = Framework.TriggerServerCallback("d3MBA-butcher:server:CheckIfPlayerHasItem", Config.Items.Knife, 1)
                                Wait(50)
                                if HasItemPlackedChicken == true then
                                    if HasItemButcherKnife == true then 
                                        ProcessingChicken(i)
                                    else
                                        TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["you_dont_have_butcher_knife"], Framework.NotificationsSettings.Error, 5000)
                                    end 
                                else
                                    TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["you_dont_have_plucked_chicken"], Framework.NotificationsSettings.Error, 5000)
                                end
                            end
                        end, 
                        job = Config.JobRequired,
                    }, 

                },
                distance = 1.0
        })
        table.insert(PolyZoneTable, "BuctcherProcessingTable" ..i)
    end
end 

local ButcherMachineCoords = {
    vector3(-86.1977, 6224.6641, 31.3169),
    vector3(-96.87, 6205.2563, 31.2902),
    vector3(-99.0556, 6203.0786, 31.285), 
}
 
for i = 1, #ButcherMachineCoords do 
    exports[Framework.Target]:AddCircleZone("ButcherMachine" ..i, vector3(ButcherMachineCoords[i].x, ButcherMachineCoords[i].y, ButcherMachineCoords[i].z), 0.40, {
        name = "ButcherMachine"..i,
        useZ = true,
        debugPoly = Config.DebugPolyZone
        }, {
            options = {
            {
                icon = Config.TargetIcons["butcher_machine"],
                label = Config.TargetLabels["grind_the_meat"],
                action = function()
                    if IsPlayerWearingJobUniform() == true then 
                        TriggerEvent("d3MBA-butcher:client:OpenGrinderMenu", i)
                    end 
                end,
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end 
                end,
                job = Config.JobRequired,
                
            }
        },
        distance = 1.0
    })
    table.insert(PolyZoneTable, "ButcherMachine"..i)
end 

function AddTargetInstantSellPed()
    exports[Framework.Target]:AddTargetEntity(InstantSellPed, {
        options = {
            {
                icon = Config.TargetIcons["instant_sell"],
                label = Config.TargetLabels["instant_sell"],
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end
                end, 
                action = function()
                    TriggerEvent("d3MBA-butcher:client:OpenInstantSellMenu")
                end,
                job = Config.JobRequired,
            },
        },
        distance = 1.5
    })
end 

exports[Framework.Target]:AddBoxZone("ButcherPackaging", vector3(-103.53, 6208.94, 29.03), 2.05, 13.6, {
    name="ButcherPackaging",
    heading=45,
    debugPoly = Config.DebugPolyZone,
    minZ = 28.43,
    maxZ = 34.03
	}, {
		options = {
			{
				icon = Config.TargetIcons["packaging"],
				label = Config.TargetLabels["packaging"],
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false and OrderPackaged == false then return true end
                end,
				action = function()
                    if OrderItems ~= nil and OrderPackaged == false then 
                        TriggerEvent("d3MBA-butcher:client:ShowOrderMenu", OrderItems)
                    else
                        TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["you_dont_have_order"], Framework.NotificationsSettings.Error, 5000)
                    end
				end,
				job = Config.JobRequired, 
			},
		},
		distance = 1.5
})
table.insert(PolyZoneTable, "ButcherPackaging")

function AddTargetDeliveryPed()
    exports[Framework.Target]:AddTargetEntity(DeliveryPed, {
        options = {
            {
                icon = Config.TargetIcons["delivery_ped"],
                label = Config.TargetLabels["delivery_ped"],
                canInteract = function()
                    if IsPedOnFoot(PlayerPedId()) and IsInAction == false then return true end
                end, 
                action = function() 
                    if OrderItems ~= nil then 
                        SellChickenOrder()
                    else
                        TriggerEvent('d3MBA-lib:sendNotification', Config.Notifications["no_order_to_sell"], Framework.NotificationsSettings.Error, 5000)
                    end 
                end,
                job = Config.JobRequired,
            },
        },
        distance = 1.5
    })
end 
