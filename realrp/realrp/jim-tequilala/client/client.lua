local QBCore = exports[Config.Core]:GetCoreObject()
RegisterNetEvent('QBCore:Client:UpdateObject', function() QBCore = exports[Config.Core]:GetCoreObject() end)

PlayerJob = {}
local Targets, Props, Blips, onDuty, alcoholCount = {}, {}, {}, false, 0

local function jobCheck() canDo = true if not onDuty then triggerNotify(nil, Loc[Config.Lan].error["not_clocked_in"], 'error') canDo = false end return canDo end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job if PlayerData.job.onduty then if PlayerData.job.name == Config.Locations[1].job then TriggerServerEvent("QBCore:ToggleDuty") end end
    end)
end)
RegisterNetEvent('QBCore:Client:OnJobUpdate') AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty') AddEventHandler('QBCore:Client:SetDuty', function(duty) onDuty = duty end)

AddEventHandler('onResourceStart', function(r)
	if GetCurrentResourceName() == r then QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job if PlayerData.job.name == Config.Locations[1].job then onDuty = PlayerJob.onduty end end)
	end
end)

CreateThread(function()
	local loc = Config.Locations[1]
	local bossroles = {}
	if not QBCore.Shared.Jobs[loc.job] then print("^1Error^7: ^1Stopping Script^7. ^2Can't find the job ^7'^6"..loc.job.."^7' ^2in ^6QBCore^7.^6Shared^7.^6Jobs^7") return end
	for grade in pairs(QBCore.Shared.Jobs[loc.job].grades) do
		if QBCore.Shared.Jobs[loc.job].grades[grade].isboss == true then
			if bossroles[loc.job] then
				if bossroles[loc.job] > tonumber(grade) then bossroles[loc.job] = tonumber(grade) end
			else bossroles[loc.job] = tonumber(grade) end
		end
	end
	if loc.zoneEnable then
		JobLocation = PolyZone:Create(loc.zones, { name = loc.label, debugPoly = Config.Debug })
		JobLocation:onPlayerInOut(function(isPointInside)
			if PlayerJob.name == loc.job then
				if loc.autoClock and loc.autoClock.enter then if isPointInside and not onDuty then TriggerServerEvent("QBCore:ToggleDuty") end end
				if loc.autoClock and loc.autoClock.exit then if not isPointInside and onDuty then TriggerServerEvent("QBCore:ToggleDuty") end end
			end
		end)
	end

	Blips[#Blips+1] = makeBlip({ coords = loc.blip, sprite = loc.blipsprite, col = loc.blipcolor, scale = loc.blipscale, disp = loc.blipdisp, category = loc.blipcat, name = loc.label })

	local propTable = {
		{prop = "v_res_mchopboard", coords = vec4(-562.81, 288.66, 82.18+1.1, -270.0)}, {prop = "v_res_mchopboard", coords = vec4(-566.03, 287.47, 85.38+1.1, -270.0)},
		{prop = "prop_coffee_mac_02", coords = vec4(-562.76, 289.95, 82.18+1.1, -300.0)}, {prop = "prop_coffee_mac_02", coords = vec4(-566.02, 288.01, 85.38+1.1, -300.0)},
		{prop = "prop_laptop_01a", coords = vec4(-560.62, 289.25, 82.18+1.12, -75.0)}
	}
	if loc.MLO == "base" and Config.useDLC then
		propTable[#propTable+1] = { prop = "sf_prop_sf_drum_kit_01a", coords = vec4(-550.89, 284.21, 82.98, -75.0) }
		propTable[#propTable+1] = { prop = "v_ilev_fos_mic", coords = vec4(-551.78, 286.25, 82.98, -75.0) }
		propTable[#propTable+1] = { prop = "v_ilev_fos_mic", coords = vec4(-552.05, 282.87, 82.98, -75.0) }
		propTable[#propTable+1] = { prop = "sf_prop_sf_guitar_case_01a", coords = vec4(-550.35, 287.01, 82.98, 0.0) }
		propTable[#propTable+1] = { prop = "sf_prop_sf_guitar_case_01a", coords = vec4(-550.82, 281.7, 82.98, -180.0) }
		CreateModelHide(vec3(-549.85, 284.39, 82.98), 1.5, -1682380775, true)
		CreateModelHide(vec3(-552.55, 284.92, 82.98), 10.5, 134974407, true)
		CreateModelHide(vec3(-552.55, 284.92, 82.98), 10.5, 395681893, true)
		CreateModelHide(vec3(-552.55, 284.92, 82.98), 10.5, 61087258, true)
	end
	CreateModelHide(vec3(-562.26, 288.59, 82.18), 1.5, -1720513558, true)
	CreateModelHide(vec3(-564.27, 279.39, 82.98), 1.5, -501934650, true)
	CreateModelHide(vec3(-565.5, 287.46, 85.38), 1.5, -242975151, true)
	CreateModelHide(vec3(-565.5, 287.46, 85.38), 1.5, 1923645595, true)
	CreateModelHide(vec3(-562.15, 289.79, 82.18), 1.5, 1923645595, true)
	CreateModelHide(vec3(-562.15, 289.79, 82.18), 1.5, -242975151, true)

	for _, prop in pairs(propTable) do makeProp(prop, true, false) end

	Targets["TeqFridge"] =
		exports['qb-target']:AddBoxZone("TeqFridge", vec3(-562.82, 285.87, 82.18-1), 1.9, 0.2, { name="TeqFridge", heading = 355.0, debugPoly=Config.Debug, minZ = 81.18, maxZ=82.18 },
			{ options = { {  event = "jim-tequilala:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_fridge"], job = loc.job, shop = Config.DrinkItems, coords = vec3(-562.82, 285.87, 82.18), shopname = "teqfridge" }, }, distance = 1.5 })
	Targets["TeqFridge2"] =
		exports['qb-target']:AddBoxZone("TeqFridge2", vec3(-562.66, 287.85, 82.18-1), 2.0, 0.2, { name="TeqFridge2", heading = 355.0, debugPoly=Config.Debug, minZ = 81.18, maxZ=82.18 },
			{ options = { {  event = "jim-tequilala:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_fridge"], job = loc.job, shop = Config.DrinkItems, coords = vec3(-562.66, 287.85, 82.18), shopname = "teqfridge" }, }, distance = 1.5	})
	Targets["TeqFridge3"] =
		exports['qb-target']:AddBoxZone("TeqFridge3", vec3(-562.47, 289.47, 82.18-1), 1.2, 0.2, { name="TeqFridge3", heading = 355.0, debugPoly=Config.Debug, minZ = 81.18, maxZ=82.18 },
			{ options = { {  event = "jim-tequilala:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_fridge"], job = loc.job, shop = Config.DrinkItems, coords = vec3(-562.47, 289.47, 82.18), shopname = "teqfridge" }, }, distance = 1.5	})
	Targets["TeqFridge4"] =
		exports['qb-target']:AddBoxZone("TeqFridge4", vec3(-566.03, 285.29, 85.38-1), 1.6, 0.2, { name="TeqFridge4", heading = 355.0, debugPoly=Config.Debug, minZ = 84.38, maxZ=85.38 },
			{ options = { {  event = "jim-tequilala:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_fridge"], job = loc.job, shop = Config.DrinkItems, coords = vec3(-566.03, 285.29, 85.38), shopname = "teqfridge" }, }, distance = 1.5 })
	Targets["TeqFridge5"] =
		exports['qb-target']:AddBoxZone("TeqFridge5", vec3(-565.94, 286.94, 85.38-1), 1.6, 0.2, { name="TeqFridge5", heading = 355.0, debugPoly=Config.Debug, minZ = 84.38, maxZ=85.38 },
			{ options = { {  event = "jim-tequilala:Shop", icon = "fas fa-archive", label = Loc[Config.Lan].targetinfo["open_fridge"], job = loc.job, shop = Config.DrinkItems, coords = vec3(-565.94, 286.94, 85.38), shopname = "teqfridge" }, }, distance = 1.5 })
	--HAND WASHES
	Targets["TeqWash"] =
		exports['qb-target']:AddBoxZone("TeqWash", vec3(-561.32, 286.1, 82.18), 0.5, 0.35, { name="TeqWash", heading = 355.0, debugPoly=Config.Debug, minZ = 81.78,  maxZ=82.18 },
			{ options = { { event = "jim-tequilala:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], coords = vec3(-561.32, 286.1, 82.18) }, }, distance = 1.5 })
	Targets["TeqWash2"] =
		exports['qb-target']:AddBoxZone("TeqWash2", vec3(-561.2, 287.4, 82.18), 0.5, 0.35, { name="TeqWash2", heading = 355.0, debugPoly=Config.Debug, minZ = 81.78,  maxZ=82.18 },
			{ options = { { event = "jim-tequilala:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], coords = vec3(-561.2, 287.4, 82.18) }, }, distance = 1.5 })
	--COUNTERS
	Targets["TeqCounter"] =
		exports['qb-target']:AddBoxZone("TeqCounter", vec3(-560.91, 287.37, 82.18), 0.45, 0.25, { name="TeqCounter", heading = 353.0, debugPoly=Config.Debug, minZ = 82.18, maxZ=82.58 },
			{ options = { { event = "jim-tequilala:Stash", icon = "fas fa-wine-glass-alt", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter1", coords = vec3(-560.91, 287.37, 82.18) },
				}, distance = 2.0 })
	Targets["TeqCounter2"] =
		exports['qb-target']:AddBoxZone("TeqCounter2", vec3(-561.02, 286.07, 82.18), 0.45, 0.25, { name="TeqCounter2", heading = 356.0, debugPoly=Config.Debug, minZ = 82.18, maxZ=82.58 },
			{ options = { { event = "jim-tequilala:Stash", icon = "fas fa-wine-glass-alt", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter2", coords = vec3(-561.02, 286.07, 82.18) },
				}, distance = 2.0 })
	Targets["TeqCounter3"] =
		exports['qb-target']:AddBoxZone("TeqCounter3", vec3(-561.16, 284.79, 82.18), 0.45, 0.25, { name="TeqCounter3", heading = 353.0, debugPoly=Config.Debug, minZ = 82.18, maxZ=82.58 },
			{ options = { { event = "jim-tequilala:Stash", icon = "fas fa-wine-glass-alt", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter3", coords = vec3(-561.16, 284.79, 82.18) },
				}, distance = 2.0 })
	Targets["TeqCounter4"] =
		exports['qb-target']:AddBoxZone("TeqCounter4", vec3(-564.12, 286.87, 85.38), 0.45, 0.25, { name="TeqCounter4", heading = 356.0, debugPoly=Config.Debug, minZ = 85.38, maxZ=85.98 },
			{ options = { { event = "jim-tequilala:Stash", icon = "fas fa-wine-glass-alt", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter4", coords = vec3(-564.12, 286.87, 85.38) },
				}, distance = 2.0 })
	--Targets["TeqCounter5"] =
	--	exports['qb-target']:AddBoxZone("TeqCounter5", vec3(-564.24, 285.57, 85.38), 0.45, 0.25, { name="TeqCounter5", heading = 353.0, debugPoly=Config.Debug, minZ = 85.38, maxZ=85.98 },
	--		{ options = { { event = "jim-tequilala:Stash", icon = "fas fa-wine-glass-alt", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter5", coords = vec3(-564.24, 285.57, 85.38) },
	--			}, distance = 2.0 })
	Targets["TeqCounter6"] =
		exports['qb-target']:AddBoxZone("TeqCounter6", vector3(-562.89034423828, 284.45748901367, 82.176292419434), 0.45, 0.25, { name="TeqCounter6", heading = 353.0, debugPoly=Config.Debug, minZ = 85.38, maxZ=85.98 },
			{ options = { { event = "jim-tequilala:Stash", icon = "fas fa-wine-glass-alt", label = Loc[Config.Lan].targetinfo["open_counter"], stash = "Counter5", coords = vector3(-562.89034423828, 284.45748901367, 82.176292419434) },
				}, distance = 2.0 })				
	--CASH REGISTERS
	Targets["TeqReceipt"] =
		exports['qb-target']:AddBoxZone("TeqReceipt", vec3(-562.97, 287.49, 82.18), 0.4, 0.4, { name="TeqReceipt", heading = 350.0, debugPoly=Config.Debug, minZ = 82.18, maxZ=82.78 },
			{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = loc.job, coords = vec3(-562.97, 287.49, 82.18),
							img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/8/8a/Tequilala-GTAV-Logo.png width=100px></p>"
							} }, distance = 2.0 })
	Targets["TeqReceipt2"] =
		exports['qb-target']:AddBoxZone("TeqReceipt2", vec3(-566.27, 284.69, 85.38), 0.4, 0.4, { name="TeqReceipt2", heading = 0.0, debugPoly=Config.Debug, minZ = 85.38, maxZ=86.03 },
			{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = loc.job, coords = vec3(-566.27, 284.69, 85.38),
							img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/8/8a/Tequilala-GTAV-Logo.png width=100px></p>"
							} }, distance = 2.0 })
	--COCKTAIL CHOPPING BOARDS
	Targets["TeqCocktails"] =
		exports['qb-target']:AddBoxZone("TeqCocktails", vec3(-562.81, 288.67, 82.18), 0.6, 0.4, { name="TeqCocktails", heading = 0.0, debugPoly=Config.Debug, minZ = 82.18, maxZ=82.58 },
			{ options = { { event = "jim-tequilala:Crafting", icon = "fas fa-cocktail", label = Loc[Config.Lan].targetinfo["prepare_cocktails"], job = loc.job, craftable = Crafting.Cocktails, header = Loc[Config.Lan].menu["prepare_cockt"], coords = vec3(-562.81, 288.67, 82.18),
				}, }, distance = 2.0 })
	Targets["TeqCocktails2"] =
		exports['qb-target']:AddBoxZone("TeqCocktails2", vec3(-566.03, 287.48, 85.38), 0.6, 0.4, { name="TeqCocktails2", heading = 0.0, debugPoly=Config.Debug, minZ = 85.38, maxZ=85.98 },
			{ options = { { event = "jim-tequilala:Crafting", icon = "fas fa-cocktail", label = Loc[Config.Lan].targetinfo["prepare_cocktails"], job = loc.job, craftable = Crafting.Cocktails, header = Loc[Config.Lan].menu["prepare_cockt"], coords = vec3(-566.03, 287.48, 85.38),
				}, }, distance = 2.0 })
	--BEER TAPS
	Targets["TeqTap"] =
		exports['qb-target']:AddBoxZone("TeqTap", vec3(-560.94, 288.04, 82.18), 0.65, 0.2, { name="TeqTap", heading = 355.0, debugPoly=Config.Debug, minZ = 82.23, maxZ=82.98 },
			{ options = { { event = "jim-tequilala:Crafting", icon = "fas fa-beer", label = Loc[Config.Lan].targetinfo["pour_beer"], job = loc.job, craftable = Crafting.Beer, header = Loc[Config.Lan].menu["beer_menu"], coords = vec3(-560.94, 288.04, 82.18), },
				}, distance = 1.5 })
	Targets["TeqTap2"] =
		exports['qb-target']:AddBoxZone("TeqTap2", vec3(-561.17, 285.42, 82.18), 0.65, 0.2, { name="TeqTap2", heading = 355.0, debugPoly=Config.Debug, minZ = 82.23, maxZ=82.98 },
			{ options = { { event = "jim-tequilala:Crafting", icon = "fas fa-beer", label = Loc[Config.Lan].targetinfo["pour_beer"], job = loc.job, craftable = Crafting.Beer, header = Loc[Config.Lan].menu["beer_menu"], coords = vec3(-561.17, 285.42, 82.18), },
				}, distance = 1.5 })
	Targets["TeqTap3"] =
		exports['qb-target']:AddBoxZone("TeqTap3", vec3(-564.21, 286.28, 85.38), 0.65, 0.2, { name="TeqTap3", heading = 355.0, debugPoly=Config.Debug, minZ = 85.38, maxZ=86.18 },
			{ options = { { event = "jim-tequilala:Crafting", icon = "fas fa-beer", label = Loc[Config.Lan].targetinfo["pour_beer"], job = loc.job, craftable = Crafting.Beer, header = Loc[Config.Lan].menu["beer_menu"], coords = vec3(-564.21, 286.28, 85.38), },
				}, distance = 1.5 })
	--COFFEE
	Targets["TeqCoffee"] =
		exports['qb-target']:AddBoxZone("TeqCoffee", vec3(-562.76, 289.95, 82.18), 0.6, 0.4, { name="TeqCoffee", heading = 40.0, debugPoly=Config.Debug, minZ = 82.23, maxZ=82.78 },
			{ options = { { event = "jim-tequilala:JustGive", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["pour_coffee"], job = loc.job, id = "coffee" }, }, distance = 2.0 })
	Targets["TeqCoffee2"] =
		exports['qb-target']:AddBoxZone("TeqCoffee2", vec3(-566.02, 288.01, 85.38), 0.2, 0.4, { name="TeqCoffee2", heading = 347.0, debugPoly=Config.Debug, minZ = 85.38, maxZ=85.98 },
			{ options = { { event = "jim-tequilala:JustGive", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["pour_coffee"], job = loc.job, id = "coffee" }, }, distance = 2.0 })

	--CLOCKIN
	Targets["TeqClockin"] =
		exports['qb-target']:AddBoxZone("TeqClockin", vec3(-560.68, 289.25, 82.18), 0.6, 0.6, { name="TeqClockin", heading = 15.0, debugPoly=Config.Debug, minZ = 82.18, maxZ=82.68 },
			{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].targetinfo["toggle_duty"], job = loc.job, coords = vec3(-560.68, 289.25, 82.18) },
						{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = Loc[Config.Lan].targetinfo["open_bossmenu"], job = bossroles, coords = vec3(-560.68, 289.25, 82.18) },
						}, distance = 2.0 })

	if loc.MLO == "base" then
		--DOOR TELEPORTS
		Targets["TeqDoor"] =
			exports['qb-target']:AddBoxZone("TeqDoor", vec3(-561.63, 290.16, 82.18-1), 0.2, 1.15, { name="UniDoor", heading = 355.0, debugPoly=Config.Debug, minZ = 81.23, maxZ=83.33 },
				{ options = { { event = "jim-tequilala:Door", icon = "fas fa-door-open", label = Loc[Config.Lan].targetinfo["top_bar_access"], job = loc.job, door = 2 }, }, distance = 2.0 })
		Targets["TeqDoor2"] =
			exports['qb-target']:AddBoxZone("TeqDoor2", vec3(-565.28, 284.32, 85.38-1), 0.2, 1.2, { name="UniDoor2", heading = 355.0, debugPoly=Config.Debug, minZ = 84.38, maxZ=86.78 },
				{ options = { { event = "jim-tequilala:Door", icon = "fas fa-door-open", label = Loc[Config.Lan].targetinfo["top_bar_exit"], job = loc.job, door = 1 }, }, distance = 2.0 })
		--ENTRANCE CHARGE
		Targets["TeqReceipt3"] =
			exports['qb-target']:AddBoxZone("TeqReceipt3", vec3(-562.79, 279.08, 82.98), 0.4, 0.4, { name="TeqReceipt3", heading = 340.0, debugPoly=Config.Debug, minZ = 82.78, maxZ=83.58 },
			{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = loc.job,
							img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/8/8a/Tequilala-GTAV-Logo.png width=100px></p>"
							} }, distance = 2.0 })
		if Config.useDLC then
		--Instruments
			Targets["TeqDrums"] =
				exports['qb-target']:AddBoxZone("TeqDrums", vec3(-550.68, 284.58, 82.97-1), 1.8, 1.0, { name="TeqDrums", heading = 353.0, debugPoly=Config.Debug, minZ = 81.97, maxZ=83.57 },
					{ options = { { event = "jim-tequilala:anim", icon = "fas fa-drum", label = Loc[Config.Lan].targetinfo["use_drum_kit"], anim= "drummer", } }, distance = 2.0 })

			Targets["TeqGuitar"] =
				exports['qb-target']:AddBoxZone("TeqGuitar", vec3(-550.33, 287.31, 82.98-1), 1.4, 0.6, { name="TeqGuitar", heading = 0.0, debugPoly=Config.Debug, minZ = 81.98, maxZ=82.78 },
					{ options = { { event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["acoustic"], anim= "guitar", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["flying_v"], anim= "guitarelectric", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["gibson"], anim= "guitarelectric2", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["love_fist_quitar"], anim= "guitarelectric4", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["dime_green"], anim= "guitarelectric3", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["dime_red"], anim= "guitarelectric5", },
								}, distance = 2.0 })
			Targets["TeqGuitar2"] =
				exports['qb-target']:AddBoxZone("TeqGuitar2", vec3(-550.82, 281.41, 82.98-1), 1.4, 0.6, { name="TeqGuitar2", heading = 0.0, debugPoly=Config.Debug, minZ = 81.98, maxZ=82.78 },
					{ options = { { event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["acoustic"], anim= "guitar", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["flying_v"], anim= "guitarelectric", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["gibson"], anim= "guitarelectric2", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["love_fist_quitar"], anim= "guitarelectric4", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["dime_green"], anim= "guitarelectric3", },
								{ event = "jim-tequilala:anim", icon = "fas fa-guitar", label = Loc[Config.Lan].targetinfo["dime_red"], anim= "guitarelectric5", },
							}, distance = 2.0 })
		end
	elseif loc.MLO == "hass" then
		--ENTRANCE CHARGE
		Targets["TeqReceipt3"] =
			exports['qb-target']:AddBoxZone("TeqReceipt3", vec3(-563.28, 278.75, 83.14), 0.45, 0.35, { name="TeqReceipt3", heading = 0.0, debugPoly=Config.Debug, minZ = 83.14, maxZ=83.54 },
				{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = loc.job,
					img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/8/8a/Tequilala-GTAV-Logo.png width=100px></p>"
					} }, distance = 2.0 })
	end
end)

RegisterNetEvent('jim-tequilala:anim', function(data)
	local ped = PlayerPedId()
	if data.anim == "drummer" then
		FreezeEntityPosition(ped, false)
		ExecuteCommand("e "..data.anim)
		SetEntityCoords(ped, -549.95, 284.37, 82.98-0.8, 0, 0, 0, false)
        SetEntityHeading(ped, 111.6)
		Wait(100)
		ExecuteCommand("e "..data.anim)
	else
		ExecuteCommand("e "..data.anim)
	end
end)

RegisterNetEvent('jim-tequilala:Door', function(data)
	local ped = PlayerPedId()
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do Citizen.Wait(10) end
	if data.door == 1 then
		SetEntityCoords(ped, -561.78, 289.85, 82.18, 0, 0, 0, false)
        SetEntityHeading(ped, 174.28)
	elseif data.door == 2 then
		SetEntityCoords(ped, -565.27, 284.67, 85.38, 0, 0, 0, false)
        SetEntityHeading(ped, 355.47)
	end
	DoScreenFadeIn(1000)
    Wait(100)
end)

RegisterNetEvent('jim-tequilala:washHands', function(data)
	if Config.ProgressBar == "ox" then
		if exports.ox_lib:progressBar({ duration = 5000, label = Loc[Config.Lan].progressbar["washing_hands"], useWhileDead = false, canCancel = true, anim = { dict = "mp_arresting",	clip = "a_uncuff", flag = 8 }, disable = { combat = true },}) then
			triggerNotify(nil, Loc[Config.Lan].success["success_washed_hands"], 'success')
		else TriggerEvent('inventory:client:busy:status', false) triggerNotify(nil, Loc[Config.Lan].error["cancelled"], 'error')
		end
	else
		QBCore.Functions.Progressbar('washing_hands', Loc[Config.Lan].progressbar["washing_hands"], 5000, false, false, {
			disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
			{ animDict = "mp_arresting", anim = "a_uncuff", flags = 8, }, {}, {}, function()
			triggerNotify(nil, Loc[Config.Lan].success["success_washed_hands"], 'success')
		end, function()
			TriggerEvent('inventory:client:busy:status', false)
			triggerNotify(nil, Loc[Config.Lan].error["cancelled"], 'error')
		end, data.icon)
	end
end)

RegisterNetEvent('jim-tequilala:Stash', function(data)
	if data.job and not jobCheck() then return end
	if Config.Inv == "ox" then exports.ox_inventory:openInventory('stash', "Tequila_"..data.stash)
	else
		TriggerEvent("inventory:client:SetCurrentStash", "Tequila_"..data.stash)
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "Tequila_"..data.stash)
	end
	lookEnt(data.coords)
end)

RegisterNetEvent('jim-tequilala:Shop', function(data)
	if not jobCheck() then return end
	local event = "inventory:server:OpenInventory"
	if Config.JimShop then event = "jim-shops:ShopOpen"
	elseif Config.Inv == "ox" then	exports.ox_inventory:openInventory('shop', { type = data.shopname, id = 1 }) end
	TriggerServerEvent(event, "shop", "tequilala", data.shop)
	lookEnt(data.coords)
end)

RegisterNetEvent('jim-tequilala:Crafting:MakeItem', function(data)
	local bartext = ""
	for i = 1, #Crafting.Cocktails do
		for k, v in pairs(Crafting.Cocktails[i]) do
			if data.item == k then
				bartext = Loc[Config.Lan].menu["mixing"]
				bartime = 2000
				animDictNow = "anim@heists@prison_heiststation@cop_reactions"
				animNow = "cop_b_idle"
			end
		end
	end
	for i = 1, #Crafting.Beer do
		for k, v in pairs(Crafting.Beer[i]) do
			if data.item == k then
				bartext = Loc[Config.Lan].menu["pouring"]
				bartime = 2000
				animDictNow = "mp_ped_interaction"
				animNow = "handshake_guy_a"
			end
		end
	end
	if data.item == "coffee" then bartext = Loc[Config.Lan].menu["pouring"] bartime = 2000 animDictNow = "mp_ped_interaction" animNow = "handshake_guy_a" end
	if Config.ProgressBar == "ox" then
		if exports.ox_lib:progressBar({ duration = bartime,	label = bartext..QBCore.Shared.Items[data.item].label, useWhileDead = false, canCancel = true, anim = { dict = animDictNow,	clip = animNow, flag = 8 },disable = { combat = true },}) then
			TriggerServerEvent('jim-tequilala:Crafting:GetItem', data.item, data.craft) Wait(500) TriggerEvent("jim-tequilala:Crafting", data) else	TriggerEvent('inventory:client:busy:status', false)
		end
	else
		QBCore.Functions.Progressbar('making_food', bartext..QBCore.Shared.Items[data.item].label, bartime, false, true, { disableMovement = true, disableCarMovement = false, disableMouse = false, disableCombat = false, },
		{ animDict = animDictNow, anim = animNow, flags = 8, },
		{}, {}, function()
			TriggerServerEvent('jim-tequilala:Crafting:GetItem', data.item, data.craft)
			Wait(500)
			TriggerEvent("jim-tequilala:Crafting", data)
		end, function() -- Cancel
			TriggerEvent('inventory:client:busy:status', false)
		end, data.item)
	end
end)

RegisterNetEvent('jim-tequilala:Crafting', function(data)
	if not jobCheck() then return end
	local Menu = {}
	if Config.Menu == "qb" then
		Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true }
		Menu[#Menu + 1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan].menu["close"], params = { event = "" } }
	end
	for i = 1, #data.craftable do
		for k, v in pairs(data.craftable[i]) do
			if k ~= "amount" then
				local text = ""
				setheader = QBCore.Shared.Items[tostring(k)].label
				if data.craftable[i]["amount"] ~= nil then setheader = setheader.." x"..data.craftable[i]["amount"] end
				local disable, checktable = false, {}
				--local checktable = {}
				for l, b in pairs(data.craftable[i][tostring(k)]) do
					if b == 1 then number = "" else number = " x"..b end
					if not QBCore.Shared.Items[l] then print("^3Error^7: ^2Script can't find ingredient item in QB-Core items.lua - ^1"..l.."^7") return end
					if Config.Menu == "ox" then text = text..QBCore.Shared.Items[l].label..number.."\n" end
					if Config.Menu == "qb" then text = text.."- "..QBCore.Shared.Items[l].label..number.."<br>" end
					settext = text
					checktable[l] = HasItem(l, b)
				end
				for _, v in pairs(checktable) do if v == false then disable = true break end end
				if not disable then setheader = setheader.." ✔️" end
				Menu[#Menu + 1] = {
					disabled = disable,
					image = "nui://"..Config.img..QBCore.Shared.Items[tostring(k)].image,
					icon = "nui://"..Config.img..QBCore.Shared.Items[tostring(k)].image,
					header = setheader, txt = settext, --qb-menu
					title = "**"..setheader.."**", description = settext, -- ox_lib
					event = "jim-tequilala:Crafting:MakeItem", -- ox_lib
					args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header }, -- ox_lib
					params = { event = "jim-tequilala:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header } } -- qb-menu
				}
				settext, setheader = nil
			end
		end
	end
	if Config.Menu == "ox" then
		exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu })
		exports.ox_lib:showContext("Crafting")
	elseif Config.Menu == "qb" then
		exports['qb-menu']:openMenu(Menu)
	end
	lookEnt(data.coords)
end)

function FoodProgress(ItemMake, craftable)
	if Config.ProgressBar == "ox" then
		if exports.ox_lib:progressBar({ duration = math.random(3000, 6000),	label = Loc[Config.Lan].progressbar["pouring_prog"]..QBCore.Shared.Items[ItemMake].label, useWhileDead = false, canCancel = true, disable = { combat = true }, anim = { dict = "mp_ped_interaction", clip = "handshake_guy_a", flag = 8, }, }) then
			TriggerServerEvent('jim-tequilala:Crafting:GetItem', ItemMake, craftable)
		else
			TriggerEvent('inventory:client:busy:status', false)
			triggerNotify(nil, "Cancelled!", 'error')
		end
	else
			QBCore.Functions.Progressbar('making_food', Loc[Config.Lan].progressbar["pouring_prog"]..QBCore.Shared.Items[ItemMake].label, 3000, false, false, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
		{ animDict = "mp_ped_interaction", anim = "handshake_guy_a", flags = 8, },
		{}, {}, function()
			TriggerServerEvent('jim-tequilala:Crafting:GetItem', ItemMake, craftable)
		end, function() -- Cancel
			TriggerEvent('inventory:client:busy:status', false)
			triggerNotify(nil, "Cancelled!", 'error')
		end, ItemMake)
	end
end

RegisterNetEvent('jim-tequilala:JustGive', function(data) if not onDuty then triggerNotify(nil, Loc[Config.Lan].error["not_clocked_in"], 'error') else FoodProgress(data.id) end end)

local function ConsumeSuccess(itemName, type)
	ExecuteCommand("e c")
	toggleItem(false, itemName, 1)
	if QBCore.Shared.Items[itemName].hunger then
		TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger)
		--TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger)
	end
	if QBCore.Shared.Items[itemName].thirst then
		TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
		--TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst)
	end
	if type == "alcohol" then alcoholCount += 1
		if alcoholCount > 1 and alcoholCount < 4 then TriggerEvent("evidence:client:SetStatus", "alcohol", 200)	elseif alcoholCount >= 4 then TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200) AlienEffect() end
	end
	if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1) end
end

RegisterNetEvent('jim-tequilala:client:Consume', function(itemName, type)
	local emoteTable = {
		--Beers
		["ambeer"] = "beer3", ["dusche"] = "beer1", ["logger"] = "beer2", ["pisswasser"] = "beer4", ["pisswasser2"] = "beer5", ["pisswasser3"] = "beer6",
		--Cocktails
		["b52"] = "whiskey", ["brussian"] = "whiskey", ["bkamikaze"] = "whiskey", ["cappucc"] = "whiskey", ["ccookie"] = "whiskey", ["iflag"] = "whiskey", ["kamikaze"] = "whiskey", ["sbullet"] = "whiskey", ["voodoo"] = "whiskey", ["woowoo"] = "whiskey",
		--Spirits
		["icream"] = "icream", ["rum"] = "rumb", ["gin"] = "ginb", ["scotch"] = "whiskeyb", ["vodka"] = "vodkab", ["amaretto"] = "vodkab", ["curaco"] = "vodkab",
		--Drinks
		["sprunk"] = "sprunk", ["sprunklight"] = "sprunk",
		["ecola"] = "ecola", ["ecolalight"] = "ecola",
		["cranberry"] = "wine",
		--Food
		["crisps"] = "crisps",
	}
	local progstring, defaultemote = Loc[Config.Lan].progress["drinking"], "drink"
	if type == "food" then progstring = Loc[Config.Lan].progress["eating"] defaultemote = "burger" end
	ExecuteCommand("e "..(emoteTable[itemName] or defaultemote))
	if Config.ProgressBar == "ox" then
		if exports.ox_lib:progressBar({ duration = math.random(3000, 6000),	label = progstring..QBCore.Shared.Items[itemName].label.."..", useWhileDead = false, canCancel = true, disable = { combat = true },}) then
			ConsumeSuccess(itemName, type)
		else ExecuteCommand("e c") end
	else
		QBCore.Functions.Progressbar("consume", progstring..QBCore.Shared.Items[itemName].label.."..", math.random(3000, 6000), false, true, {
				disableMovement = false, disableCarMovement = false, disableMouse = false,  disableCombat = true, }, {}, {}, {}, function() -- Done
			ConsumeSuccess(itemName, type)
		end, function() -- Cancel
			ExecuteCommand("e c")
		end, itemName)
	end
end)

AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
	if GetResourceState("qb-target") == "started" or GetResourceState("ox_target") == "started" then
		for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
		for _, v in pairs(Props) do DeleteEntity(v) end
	end
end)