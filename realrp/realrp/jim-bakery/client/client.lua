local Targets, Props, CraftLock, propTable, Ped = {}, {}, false, {}, nil

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()	QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job onDuty = PlayerJob.onduty end) Ped = PlayerPedId() end)
RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)
AddEventHandler('onResourceStart', function(r) if GetCurrentResourceName() ~= r then return end
	QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job onDuty = PlayerJob.onduty end)
	Ped = PlayerPedId()
end)

CreateThread(function()
	for i = 1, #Config.Locations do
		local loc = Config.Locations[i]
		local bossroles = {}
		if QBCore.Shared.Jobs and not QBCore.Shared.Jobs[loc.job] then print("^5Debug^7: ^1Can't find the job ^7'^6"..loc.job.."^7' ^1in the core shared files^7") else
			for grade in pairs(QBCore.Shared.Jobs[loc.job].grades) do
				if QBCore.Shared.Jobs[loc.job].grades[grade].isboss == true then
					if bossroles[loc.job] then
						if bossroles[loc.job] > tonumber(grade) then bossroles[loc.job] = tonumber(grade) end
					else bossroles[loc.job] = tonumber(grade) end
				end
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

		if loc.blip then makeBlip({ coords = loc.blip, sprite = loc.blipsprite, col = loc.blipcolor, scale = loc.blipscale, disp = loc.blipdiosp, category = loc.blipcat, name = loc.label }) end

		if i == 1 then --[[HANES]]--
			propTable[#propTable+1] = { prop = "v_res_mchopboard", coords = vec4(58.01, -119.38, 55.39, 340.0) }
			propTable[#propTable+1] = { prop = "prop_food_tray_01", coords = vec4(54.2, -125.94, 55.47, 340.0) }
			propTable[#propTable+1] = { prop = "p_kitch_juicer_s", coords = vec4(60.26, -120.36, 55.38, 340.0)}
			propTable[#propTable+1] = { prop = "prop_food_bs_soda_01", coords = vec4(61.37, -121.82, 55.37, 250.0) }
			propTable[#propTable+1] = { prop = "prop_atm_01", coords = vec4(53.18, -135.23, 55.46-1.25, 340.0) }

			Targets["bakeCabinet"] =
				exports['qb-target']:AddBoxZone("bakeCabinet", vec3(56.52, -126.77, 55.06), 0.8, 1.5, { name="bakeCabinet", heading = 340.0, debugPoly=Config.Debug, minZ=54.76, maxZ=55.76 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-temperature-low", label = Loc[Config.Lan].targetinfo["open_cabinet"], id = "Cabinet", job = loc.job, coords = vec3(56.52, -126.77, 55.06-1) }, },
					distance = 1.5 })

			Targets["bakeStash"] =
				exports['qb-target']:AddBoxZone("bakeStash", vec3(56.14, -123.8, 55.45-1), 2.5, 0.8, { name="bakeStash", heading = 248.0, debugPoly=Config.Debug, minZ=54.65, maxZ=57.05 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Prepared", job = loc.job, coords = vec3(56.14, -123.8, 55.45-1) }, },
					distance = 2.0 })
			Targets["bakeShop"] =
				exports['qb-target']:AddBoxZone("bakeShop", vec3(60.24, -125.15, 55.45-1), 1.1, 0.9, { name="bakeShop", heading = 248.0, debugPoly=Config.Debug, minZ=52.45, maxZ=56.45 },
					{ options = { {  event = "jim-bakery:Shop", icon = "fas fa-temperature-low", label = Loc[Config.Lan].targetinfo["open_store"], job = loc.job, shop = Config.Items, coords = vec3(60.24, -125.15, 55.45-1) }, },
					distance = 2.0 })

			Targets["bakeBoard"] =
				exports['qb-target']:AddBoxZone("bakeBoard", vec3(58.01, -119.38, 55.15), 0.5, 0.55, { name="bakeBoard", heading = 339.0, debugPoly=Config.Debug, minZ=55.25, maxZ=55.65 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-shop", label = Loc[Config.Lan].targetinfo["prepare_food"], job = loc.job, craftable = Crafting.Sandwich, header = Loc[Config.Lan].menu["chopping_board"], coords = vec3(58.01, -119.38, 55.15-1) }, },
					distance = 1.5 })
			Targets["bakePrepare"] =
				exports['qb-target']:AddBoxZone("bakePrepare", vec3(60.57, -123.16, 55.15), 0.5, 0.4, { name="bakePrepare", heading = 347.0, debugPoly=Config.Debug, minZ=55.25, maxZ=55.65 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-shop", label = Loc[Config.Lan].targetinfo["prepare_food"], job = loc.job, craftable = Crafting.Prepare, header = Loc[Config.Lan].menu["preparation"], coords = vec3(60.57, -123.16, 55.15-1) }, },
					distance = 1.5 })
			Targets["bakeCoffee"] =
				exports['qb-target']:AddBoxZone("bakeCoffee", vec3(61.34, -120.53, 55.45), 1.3, 1.15, { name="bakeCoffee", heading = 340.0, debugPoly=Config.Debug, minZ=55.25, maxZ=56.05 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_coffee"], job = loc.job, craftable = Crafting.Coffee, header = Loc[Config.Lan].menu["coffee_machine"], coords = vec3(61.34, -120.53, 55.45-1) }, },
					distance = 1.5 })
			Targets["bakeBlend"] =
				exports['qb-target']:AddBoxZone("bakeBlend", vec3(60.26, -120.36, 55.45), 0.5, 0.5, { name="bakeBlend", heading = 340.0, debugPoly=Config.Debug, minZ=55.25, maxZ=55.85 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_drinks"], job = loc.job, craftable = Crafting.Drinks, header = Loc[Config.Lan].menu["blender"], coords = vec3(60.26, -120.36, 55.45-1) }, },
					distance = 1.5 })
			Targets["bakeOven"] =
				exports['qb-target']:AddBoxZone("bakeOven", vec3(60.9, -122.55, 55.45-1), 0.7, 0.7, { name="bakeOven", heading = 339.0, debugPoly=Config.Debug, minZ=54.05, maxZ=55.55+1 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-fire", label = Loc[Config.Lan].targetinfo["use_oven"], job = loc.job, craftable = Crafting.Oven, header = Loc[Config.Lan].menu["oven_menu"], coords = vec3(60.9, -122.55, 55.45-1) }, },
					distance = 1.5 })

			Targets["bakeSoda"] =
				exports['qb-target']:AddBoxZone("bakeSoda", vec3(61.37, -121.82, 55.37), 0.5, 0.7, { name="bakeSoda", heading = 250.0, debugPoly=Config.Debug, minZ=55.05, maxZ=56.05 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-fire", label = Loc[Config.Lan].targetinfo["use_soda_machine"], job = loc.job, craftable = Crafting.Soda, header = Loc[Config.Lan].menu["soda_dispenser"], coords = vec3(61.37, -121.82, 55.37-1) }, },
					distance = 1.5 })

			Targets["bakeTray"] =
				exports['qb-target']:AddBoxZone("bakeTray", vec3(54.2, -125.94, 55.46), 0.35, 0.55, { name="bakeTray", heading = 340.0, debugPoly=Config.Debug, minZ=55.06, maxZ=55.96 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-search", label = Loc[Config.Lan].targetinfo["open_tray"], id = "Tray", }, },
					distance = 1.5 })
			Targets["bakeWash"] =
				exports['qb-target']:AddBoxZone("bakeWash", vec3(59.4, -119.74, 55.45-1), 1.0, 1.0, { name="bakeWash", heading = 340.0, debugPoly=Config.Debug, minZ=54.45, maxZ=55.85 },
				{ options = { { event = "jim-bakery:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], coords = vec3(59.4, -119.74, 55.45)}, },
					distance = 1.5 })
			Targets["bakeWash2"] =
				exports['qb-target']:AddBoxZone("bakeWash2", vec3(54.82, -120.89, 55.45-1), 2.1, 0.65, { name="bakeWash2", heading = 340.0, debugPoly=Config.Debug, minZ=54.45, maxZ=55.85 },
				{ options = { { event = "jim-bakery:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], coords = vec3(54.82, -120.89, 55.45) }, },
					distance = 1.5 })

			Targets["bakeReceipt"] =
				exports['qb-target']:AddBoxZone("bakeReceipt", vec3(55.44, -126.37, 55.46), 0.6, 0.6, { name="bakeReceipt", heading = 340.0, debugPoly=Config.Debug, minZ=55.35, maxZ=56.06 },
				{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = loc.job,
								img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/8/86/TreyBaker-GTAV-TshirtLogo.png width=225px></p>" },
				},	distance = 2.0 })

			Targets["bakeClockin"] =
				exports['qb-target']:AddBoxZone("bakeClockin", vec3(54.83, -126.16, 55.46), 0.6, 0.6, { name="bakeClockin", heading = 340.0, debugPoly=Config.Debug, minZ=55.35, maxZ=56.06 },
				{ options = {
					{ event = "QBCore:ToggleDuty", icon = "fas fa-user-check", type = "server", label = Loc[Config.Lan].targetinfo["toggle_duty"], job = loc.job },
					{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = Loc[Config.Lan].targetinfo["open_bossmenu"], job = bossroles, },
				},	distance = 2.0 })

			--Tables
			Targets["bakeTable1"] =
			exports['qb-target']:AddBoxZone("bakeTable1", vec3(56.28, -130.91, 55.46-1), 0.9, 1.2, { name="bakeTable1", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05, },
				{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table1", coords = vec3(56.28, -130.91, 55.46-1) }, },
				distance = 2.0 })
			Targets["bakeTable2"] =
			exports['qb-target']:AddBoxZone("bakeTable2", vec3(55.15, -134.0, 55.46-1), 0.9, 1.2, { name="bakeTable2", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
				{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table2", coords = vec3(55.15, -134.0, 55.46-1) }, },
				distance = 2.0 })
			Targets["bakeTable3"] =
			exports['qb-target']:AddBoxZone("bakeTable3", vec3(51.32, -127.59, 55.46-1), 1.0, 1.0, { name="bakeTable3", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
				{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table3", coords = vec3(51.32, -127.59, 55.46-1) }, },
				distance = 2.0 })
			Targets["bakeTable4"] =
			exports['qb-target']:AddBoxZone("bakeTable4", vec3(50.45, -129.96, 55.46-1), 1.0, 1.0, { name="bakeTable4", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
				{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table4", coords = vec3(56.28, -130.91, 55.46-1) }, },
				distance = 2.0 })
		elseif i == 2 then --[[K4MB1]]--
			propTable[#propTable+1] = { prop = "prop_atm_01", coords = vec4(54.54, -136.04, 55.1-0.8, 340.0) }
			propTable[#propTable+1] = { prop = "prop_food_bs_soda_01", coords = vec4(59.27, -134.47, 55.36, 160.0) }
			propTable[#propTable+1] = { prop = "v_res_mchopboard", coords = vec4(60.58, -134.94, 55.36, 160.0) }

			Targets["bakeStash"] =
				exports['qb-target']:AddBoxZone("bakeStash", vec3(54.4, -131.48, 55.46-1), 1.6, 0.6, { name="bakeStash", heading = 340.0, debugPoly=Config.Debug, minZ=54.56, maxZ=55.36 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Prepared", job = loc.job, coords = vec3(54.4, -131.48, 55.46) }, },
					distance = 2.0 })

			Targets["bakeCabinet"] =
				exports['qb-target']:AddBoxZone("bakeCabinet", vec3(53.57, -134.13, 55.46-1), 1.2, 0.8, { name="bakeCabinet", heading = 340.0, debugPoly=Config.Debug, minZ=54.46, maxZ=55.86 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-temperature-low", label = Loc[Config.Lan].targetinfo["open_cabinet"], id = "Cabinet", job = loc.job, coords = vec3(53.57, -134.13, 55.46) }, },
					distance = 1.5 })

			Targets["bakeCoffee"] =
				exports['qb-target']:AddBoxZone("bakeCoffee", vec3(56.35, -131.25, 55.46), 0.6, 0.4, { name="bakeCoffee", heading = 340.0, debugPoly=Config.Debug, minZ=55.46, maxZ=56.06 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_coffee"], job = loc.job, craftable = Crafting.Coffee, header = Loc[Config.Lan].menu["coffee_machine"], coords = vec3(56.35, -131.25, 55.46) }, },
					distance = 1.5 })
			Targets["bakeBlend"] =
				exports['qb-target']:AddBoxZone("bakeBlend", vec3(56.13, -131.83, 55.46), 0.6, 0.4, { name="bakeBlend", heading = 340.0, debugPoly=Config.Debug, minZ=55.46, maxZ=56.46 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-mug-hot", label = Loc[Config.Lan].targetinfo["prepare_drinks"], job = loc.job, craftable = Crafting.Drinks, header = Loc[Config.Lan].menu["blender"], coords = vec3(56.13, -131.83, 55.46) }, },
					distance = 1.5 })

			Targets["bakeSoda"] =
				exports['qb-target']:AddBoxZone("bakeSoda", vec3(59.27, -134.47, 55.46), 0.6, 1.0, { name="bakeSoda", heading = 340.0, debugPoly=Config.Debug, minZ=55.36, maxZ=56.16 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-fire", label = Loc[Config.Lan].targetinfo["use_soda_machine"], job = loc.job, craftable = Crafting.Soda, header = Loc[Config.Lan].menu["soda_dispenser"], coords = vec3(59.27, -134.47, 55.46) }, },
					distance = 1.5 })

			Targets["bakeWash"] =
				exports['qb-target']:AddBoxZone("bakeWash", vec3(56.0, -132.7, 55.26), 0.8, 0.6, { name="bakeWash", heading = 340.0, debugPoly=Config.Debug, minZ=55.26, maxZ=56.06 },
					{ options = { { event = "jim-bakery:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], coords = vec3(56.0, -132.7, 55.26)}, },
					distance = 1.5 })
			Targets["bakeWash2"] =
				exports['qb-target']:AddBoxZone("bakeWash2", vec3(57.3, -131.83, 55.16), 1.2, 0.6, { name="bakeWash2", heading = 340.0, debugPoly=Config.Debug, minZ=55.26, maxZ=56.06 },
					{ options = { { event = "jim-bakery:washHands", icon = "fas fa-hand-holding-water", label = Loc[Config.Lan].targetinfo["wash_hands"], coords = vec3(57.3, -131.83, 55.16) }, },
					distance = 1.5 })

			Targets["bakeTray"] =
				exports['qb-target']:AddBoxZone("bakeTray", vec3(54.24, -131.93, 55.46-0.1), 0.6, 0.8, { name="bakeTray", heading = 340.0, debugPoly=Config.Debug, minZ=55.36, maxZ=55.76 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-search", label = Loc[Config.Lan].targetinfo["open_tray"], id = "Tray", }, },
					distance = 1.5 })

			Targets["bakeOven"] =
				exports['qb-target']:AddBoxZone("bakeOven", vec3(62.0, -129.13, 55.46-1), 0.6, 1.2, { name="bakeOven", heading = 340.0, debugPoly=Config.Debug, minZ=54.56, maxZ=56.56 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-fire", label = Loc[Config.Lan].targetinfo["use_oven"], job = loc.job, craftable = Crafting.Oven, header = Loc[Config.Lan].menu["oven_menu"], coords = vec3(62.0, -129.13, 55.46) }, },
					distance = 1.5 })

			Targets["bakeShop"] =
				exports['qb-target']:AddBoxZone("bakeShop", vec3(60.51, -128.59, 54.46), 0.6, 1.8, { name="bakeShop", heading = 340.0, debugPoly=Config.Debug, minZ=54.56, maxZ=56.76 },
					{ options = { {  event = "jim-bakery:Shop", icon = "fas fa-temperature-low", label = Loc[Config.Lan].targetinfo["open_store"], job = loc.job, shop = Config.Items, coords = vec3(60.51, -128.59, 55.46) }, },
							distance = 2.0 })

			Targets["bakeBoard"] =
				exports['qb-target']:AddBoxZone("bakeBoard", vec3(60.58, -134.94, 55.26), 0.4, 0.8, { name="bakeBoard", heading = 340.0, debugPoly=Config.Debug, minZ=55.26, maxZ=56.06 },
					{ options = { {  event = "jim-bakery:Crafting", icon = "fas fa-shop", label = Loc[Config.Lan].menu["chopping_board"], job = loc.job, craftable = Crafting.Sandwich, header = Loc[Config.Lan].menu["chopping_board"], coords = vec3(60.58, -134.94, 55.26) },
									{  event = "jim-bakery:Crafting", icon = "fas fa-shop", label = Loc[Config.Lan].targetinfo["prepare_food"], job = loc.job, craftable = Crafting.Prepare, header = Loc[Config.Lan].menu["preparation"], coords = vec3(60.58, -134.94, 55.26) }, },
							distance = 1.5 })

			Targets["bakeReceipt"] =
				exports['qb-target']:AddBoxZone("bakeReceipt", vec3(53.86, -132.69, 55.46-0.5), 0.6, 0.6, { name="bakeReceipt", heading = 340.0, debugPoly = Config.Debug, minZ=55.06, maxZ=55.86 },
					{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan].targetinfo["charge_customer"], job = loc.job, img = "<center><p><img src=https://static.wikia.nocookie.net/gtawiki/images/8/86/TreyBaker-GTAV-TshirtLogo.png width=225px></p>" },
									{ type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = Loc[Config.Lan].targetinfo["toggle_duty"], job = loc.job },
									{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = Loc[Config.Lan].targetinfo["open_bossmenu"], job = bossroles, }, },
								distance = 2.0 })

		--Tables
			Targets["bakeTable1"] =
				exports['qb-target']:AddBoxZone("bakeTable1", vec3(55.74, -126.6, 55.46-0.5), 1.0, 1.0, { name="bakeTable1", heading = 340.0, debugPoly=Config.Debug, minZ=54.66, maxZ=55.66, },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table1", coords = vec3(55.74, -126.6, 55.46) }, },
					distance = 2.0 })
			Targets["bakeTable2"] =
				exports['qb-target']:AddBoxZone("bakeTable2", vec3(52.7, -128.95, 55.46-0.5), 0.8, 1.0, { name="bakeTable2", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table2", coords = vec3(52.7, -128.95, 55.46) }, },
					distance = 2.0 })
			Targets["bakeTable3"] =
				exports['qb-target']:AddBoxZone("bakeTable3", vec3(51.88, -131.35, 55.46-0.5), 0.8, 1.0, { name="bakeTable3", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table3", coords = vec3(51.88, -131.35, 55.46) }, },
					distance = 2.0 })
			Targets["bakeTable4"] =
				exports['qb-target']:AddBoxZone("bakeTable4", vec3(49.19, -131.18, 55.46-0.5), 0., 2.0, { name="bakeTable4", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table4", coords = vec3(49.19, -131.18, 55.46) }, },
					distance = 2.0 })
			Targets["bakeTable5"] =
				exports['qb-target']:AddBoxZone("bakeTable5", vec3(50.13, -128.61, 55.46-0.5), 1.0, 2.0, { name="bakeTable5", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table4", coords = vec3(50.13, -128.61, 55.46) }, },
					distance = 2.0 })
			Targets["bakeTable6"] =
				exports['qb-target']:AddBoxZone("bakeTable6", vec3(51.99, -126.43, 55.46-0.5), 1.2, 2.0, { name="bakeTable6", heading = 340.0, debugPoly=Config.Debug, minZ=54.65, maxZ=56.05 },
					{ options = { {  event = "jim-bakery:Stash", icon = "fas fa-box-open", label = Loc[Config.Lan].targetinfo["prepared_food"], id = "Table4", coords = vec3(51.99, -126.43, 55.46) }, },
					distance = 2.0 })

			end
			for _, prop in pairs(propTable) do Props[#Props+1] = makeProp(prop, true, false) end
		end
	end
end)

RegisterNetEvent('jim-bakery:washHands',function(data)
	lookEnt(data.coords)
	local cam = createTempCam(PlayerPedId(), data.coords)
	if progressBar({ label = Loc[Config.Lan].progressbar["washing_hands"], time = 5000, cancel = true, dict = "mp_arresting", anim = "a_uncuff", flag = 8, icon = "fas fa-hand-holding-droplet", cam = cam }) then
		triggerNotify(nil, Loc[Config.Lan].success["have_washed_hands"], 'success')
	else
		triggerNotify(nil, Loc[Config.Lan].error["cancelled"], 'error')
	end
	ClearPedTasks(Ped)
end)

--[[ CRAFTING ]]--
RegisterNetEvent('jim-bakery:Crafting:MakeItem', function(data)
	if not CraftLock then CraftLock = true else return end
	local cam = createTempCam(PlayerPedId(), data.coords)
	if (data.amount and data.amount ~= 1) then data.craft["amount"] = data.amount
		for k in pairs(data.craft[data.item]) do data.craft[data.item][k] *= data.amount end
		data.anim.bartime *= data.amount
		data.anim.bartime *= 0.9
	end
	local cam = createTempCam(PlayerPedId(), data.coords)
	CreateThread(function() while CraftLock do playAnim(data.anim.animDict, data.anim.anim, data.anim.bartime, 32) Wait(GetAnimDuration(data.anim.animDict, data.anim.anim)*1000) end stopAnim(data.anim.animDict, data.anim.anim)	end)
	if progressBar({ label = data.anim.bartext.." "..QBCore.Shared.Items[data.item].label, time = data.anim.bartime, cancel = true, icon = data.item, cam = cam }) then
		CraftLock = false
		TriggerServerEvent('jim-bakery:Crafting:GetItem', data.item, data.craft)
		Wait(500)
		TriggerEvent("jim-bakery:Crafting", data)
	else
		CraftLock = false
	end
end)

RegisterNetEvent('jim-bakery:Crafting', function(data)
	if CraftLock then return end
	if not jobCheck() then return end
	local Menu = {}
	if Config.Menu == "qb" then
		Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true }
		Menu[#Menu + 1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan].menu["close"], params = { event = "" } }
	end
	for i = 1, #data.craftable do
		for k, v in pairs(data.craftable[i]) do
			if not QBCore.Shared.Items[k] then print("^5Debug^7: ^2Item not found in server^7: '^6"..k.."^7'") else
				if k ~= "amount" then
					local canShow, disable, setheader, settext, checktable = true, false, "", "", {}
					for l, b in pairs(data.craftable[i][tostring(k)]) do
						if not QBCore.Shared.Items[l] then
							print("^5Debug^7: ^3Ingredient Item^2 not found in server^7: '^6"..l.."^7'") canShow = false
						else
							settext = settext..QBCore.Shared.Items[l].label..(b > 1 and " x"..b or "")..(Config.Menu == "ox" and "\n" or "<br>")
							checktable[l] = HasItem(l, b)
						end
					end
					if canShow then
						for _, v in pairs(checktable) do if v == false then disable = true break end end
						setheader = QBCore.Shared.Items[k].label..(not disable and " ✔️" or "")
						local event = "jim-bakery:Crafting:MakeItem"
						if Config.MultiCraft then event = "jim-bakery:Crafting:MultiCraft" end
						Menu[#Menu + 1] = {
							disabled = disable,
							icon = "nui://"..Config.img..QBCore.Shared.Items[tostring(k)].image,
							header = setheader, txt = settext, --qb-menu
							params = { event = event, args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, anim = data.craftable["anim"], coords = data.coords } }, -- qb-menu
							title = setheader, description = settext, -- ox_lib
							event = event, args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header, anim = data.craftable["anim"], coords = data.coords }, -- ox_lib
						}
					end
				end
			end
		end
	end
	if Config.Menu == "ox" then exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu }) exports.ox_lib:showContext("Crafting")
	elseif Config.Menu == "qb" then exports['qb-menu']:openMenu(Menu) end
	lookEnt(data.coords)
end)

RegisterNetEvent('jim-bakery:Crafting:MultiCraft', function(data)
    local success = Config.MultiCraftAmounts local Menu = {}
    for k in pairs(success) do success[k] = true
        for l, b in pairs(data.craft[data.item]) do
            local has = HasItem(l, (b * k)) if not has then success[k] = false break else success[k] = true end
		end end
    if Config.Menu == "qb" then Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true } end
	Menu[#Menu + 1] = { icon = "fas fa-arrow-left", title = Loc[Config.Lan].menu["back"], header = "", txt = Loc[Config.Lan].menu["back"], params = { event = "jim-bakery:Crafting", args = data }, event = "jim-bakery:Crafting", args = data }
	for k in pairsByKeys(success) do
		Menu[#Menu + 1] = {
			disabled = not success[k],
			icon = "nui://"..Config.img..QBCore.Shared.Items[data.item].image, header = QBCore.Shared.Items[data.item].label.." [x"..k.."]", title = QBCore.Shared.Items[data.item].label.." [x"..k.."]",
			event = "jim-bakery:Crafting:MakeItem", args = { item = data.item, craft = data.craft, craftable = data.craftable, header = data.header, anim = data.anim, amount = k, coords = data.coords },
			params = { event = "jim-bakery:Crafting:MakeItem", args = { item = data.item, craft = data.craft, craftable = data.craftable, header = data.header, anim = data.anim, amount = k, coords = data.coords } }
		}
	end
	if Config.Menu == "ox" then exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu })	exports.ox_lib:showContext("Crafting")
	elseif Config.Menu == "qb" then exports['qb-menu']:openMenu(Menu) end
end)

--[[STASH SHOPS]]--
RegisterNetEvent('jim-bakery:Stash', function(data)
	if data.job and not jobCheck() then return end
	if Config.Inv == "ox" then exports.ox_inventory:openInventory('stash', "Bakery_"..data.id)
	else TriggerEvent("inventory:client:SetCurrentStash", "Bakery_"..data.id)
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "Bakery_"..data.id) end
	lookEnt(data.coords)
end)

RegisterNetEvent('jim-bakery:Shop', function(data)
	if not jobCheck() then return end
	local event = "inventory:server:OpenInventory"
	if Config.JimShop then event = "jim-shops:ShopOpen"
	elseif Config.Inv == "ox" then  exports.ox_inventory:openInventory('shop', { type = 'bakeShop', }) end
	TriggerServerEvent(event, "shop", "bakeShop", Config.Items)
	lookEnt(data.coords)
end)

-- [[CONSUME]] --
local function ConsumeSuccess(itemName, type)
    ExecuteCommand("e c")
    toggleItem(false, itemName, 1)
	local change = { thirst = QBCore.Shared.Items[itemName].thirst, hunger = QBCore.Shared.Items[itemName].thirst }
    if change.hunger then
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + change.hunger)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + change.hunger)
    end
    if change.thirst then
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + change.thirst)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + change.thirst)
    end
    if type == "alcohol" then alcoholCount += 1
        if alcoholCount > 1 and alcoholCount < 4 then TriggerEvent("evidence:client:SetStatus", "alcohol", 200) elseif alcoholCount >= 4 then TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200) AlienEffect() end
    end
    if Config.RewardItem == itemName then toggleItem(true, Config.RewardPool[math.random(1, #Config.RewardPool)], 1) end
end

RegisterNetEvent('jim-bakery:client:Consume', function(itemName, type)
	local emoteTable = {
		["tbbread"] = "bread", ["tbwhitebread"] = "breadroll4", ["tbbrownbread"] = "breadroll1", ["breadslice"] = "breadslice", ["tbbirthdaycake"] = "cake1", ["tbcake"] = "cake2",
		["tbcakebase"] = "cake2", ["tbcupcake"] = "cupcake1", ["tbchoccake"] = "cake3",	["tbcookie"] = "cookie", ["tbbrownie"] = "donut", ["tbcroissant"] = "croissant",
		["tbchoccroiss"] = "choccroiss", ["tbsweetroll"] = "sweetroll",	["chocolate"] = "egobar",

		["strawberrymilkshake"] = "flute", ["milkshake"] = "flute", ["chocolatemilkshake"] = "flute", ["ecola"] = "ecola", ["ecolalight"] = "ecola", ["sprunk"] = "sprunk", ["sprunklight"] = "sprunk",
	}
	local progstring, defaultemote = Loc[Config.Lan].progressbar["drinking"], "drink"
	if type == "food" then progstring = Loc[Config.Lan].progressbar["eating"] defaultemote = "burger" end
	ExecuteCommand("e "..(emoteTable[itemName] or defaultemote))
	if progressBar({label = progstring..QBCore.Shared.Items[itemName].label.."..", time = math.random(3000, 6000), cancel = true, icon = itemName}) then
		ConsumeSuccess(itemName, type)
	else
		ExecuteCommand("e c")
	end
end)

AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
	if GetResourceState("qb-target") == "started" or GetResourceState("ox_target") == "started" then
		for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
		for k in pairs(Props) do DeleteEntity(Props[k]) end
		exports['qb-menu']:closeMenu()
	end
end)