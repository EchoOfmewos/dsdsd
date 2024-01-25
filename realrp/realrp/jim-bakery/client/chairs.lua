local bakerseat = 0
local sitting = false
local Chairs = {}
local chairlist = {}
if Config.Locations[1].zoneEnable then
	-- Inside
	chairlist[#chairlist+1] = { coords = vec4(56.58, -129.62, 55.46, 160.0) }
	chairlist[#chairlist+1] = { coords = vec4(55.62, -132.16, 55.46, 340.0) }

	chairlist[#chairlist+1] = { coords = vec4(55.46, -132.59, 55.46, 160.0) }
	chairlist[#chairlist+1] = { coords = vec4(54.53, -135.14, 55.46, 340.0) }

	chairlist[#chairlist+1] = { coords = vec4(49.72, -131.35, 55.46, 340.0) }
	chairlist[#chairlist+1] = { coords = vec4(51.67, -130.39, 55.46, 70.0) }
	chairlist[#chairlist+1] = { coords = vec4(48.97, -129.4, 55.46, 250.0) }

	chairlist[#chairlist+1] = { coords = vec4(52.57, -128.05, 55.46, 70.0) }
	chairlist[#chairlist+1] = { coords = vec4(49.8, -127.0, 55.46, 250.0) }

	-- Outside
	chairlist[#chairlist+1] = { coords = vec4(51.08, -138.56, 55.10, 260.0), stand = vec3(51.06, -139.1, 55.2-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(52.92, -139.2, 55.10, 70.0), stand = vec3(52.57, -139.65, 55.17-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(52.16, -137.66, 55.10, 170.0), stand = vec3(51.53, -137.64, 55.18-0.5) }

	chairlist[#chairlist+1] = { coords = vec4(52.98, -136.43, 55.10, 250.0), stand = vec3(53.31, -137.16, 55.13-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(53.79, -137.81, 55.12, 340.0), stand = vec3(53.31, -137.16, 55.13-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(55.28, -137.27, 55.08, 65.0), stand = vec3(55.04, -138.03, 55.09-0.5) }

elseif Config.Locations[2].zoneEnable then
	chairlist[#chairlist+1] = { coords = vec4(52.86, -128.3, 55.46, 160.0), stand = vec3(53.63, -128.4, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(52.53, -129.58, 55.46, 342.0), stand = vec3(52.94, -129.78, 55.46-0.5) }

	chairlist[#chairlist+1] = { coords = vec4(52.14, -130.71, 55.46, 160.0), stand = vec3(52.66, -130.88, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(51.68, -132.01, 55.46, 343.0), stand = vec3(52.12, -132.28, 55.46-0.5) }

	chairlist[#chairlist+1] = { coords = vec4(49.32, -132.24, 55.46, 345.0), stand = vec3(49.84, -132.39, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(48.35, -131.93, 55.46, 335.0), stand = vec3(48.71, -132.49, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(49.76, -130.68, 55.46, 160.0), stand = vec3(50.37, -130.79, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(48.89, -130.37, 55.46, 166.0), stand = vec3(49.49, -130.07, 55.46-0.5) }

	chairlist[#chairlist+1] = { coords = vec4(50.19, -129.48, 55.46, 342.0), stand = vec3(50.77, -129.68, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(49.34, -129.18, 55.46, 335.0), stand = vec3(49.61, -129.79, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(49.79, -127.54, 55.46, 160.0), stand = vec3(50.39, -127.38, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(50.79, -127.94, 55.46, 160.0), stand = vec3(51.31, -128.14, 55.46-0.5) }

	chairlist[#chairlist+1] = { coords = vec4(50.4, -125.89, 55.56, 250.0), stand = vec3(50.64, -126.84, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(51.84, -125.08, 55.56, 160.0), stand = vec3(53.4, -126.38, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(52.72, -125.37, 55.56, 160.0), stand = vec3(53.4, -126.38, 55.46-0.5) }

	chairlist[#chairlist+1] = { coords = vec4(55.09, -126.28, 55.46, 252.0), stand = vec3(54.89, -126.75, 55.46-0.5) }
	chairlist[#chairlist+1] = { coords = vec4(56.52, -126.73, 55.46, 70.0), stand = vec3(56.33, -127.26, 55.46-0.5) }
end

CreateThread(function()
	for k, v in pairs(chairlist) do
		Chairs["BakeryChair"..k] =
		exports['qb-target']:AddBoxZone("BakeryChair"..k, vec3(v.coords.x, v.coords.y, v.coords.z-1), 0.6, 0.6, { name="BakeryChair"..k, heading = v.coords.w, debugPoly=Config.Debug, minZ = v.coords.z-1.2, maxZ = v.coords.z+0.1 },
			{ options = { { event = "jim-bakery:Chair", icon = "fas fa-chair", label = Loc[Config.Lan].targetinfo["sit_down"], loc = v.coords, stand = v.stand }, },
				distance = 2.2
		})
	end
end)

RegisterNetEvent('jim-bakery:Chair', function(data)
	local canSit = true
	local sitting = false
	local Ped = PlayerPedId()
	for _, v in pairs(QBCore.Functions.GetPlayersFromCoords(data.loc.xyz, 0.6)) do
		local dist = #(GetEntityCoords(GetPlayerPed(v)) - data.loc.xyz)
		if dist <= 0.4 then triggerNotify(nil, Loc[Config.Lan].error["someone_sitting_here"]) canSit = false end
	end
	if canSit then
		if not IsPedHeadingTowardsPosition(Ped, data.loc.xyz, 20.0) then TaskTurnPedToFaceCoord(Ped, data.loc.xyz, 1500) Wait(1500)	end
		if #(data.loc.xyz - GetEntityCoords(Ped)) > 1.5 then TaskGoStraightToCoord(Ped, data.loc.xyz, 0.5, 1000, 0.0, 0) Wait(1100) end
		TaskStartScenarioAtPosition(Ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", data.loc.x, data.loc.y, data.loc.z-0.5, data.loc[4], 0, 1, true)
		bakerseat = data.stand
		sitting = true
	end
	while sitting do
		if sitting then
			if IsControlJustReleased(0, 202) and IsPedUsingScenario(Ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER") then
				sitting = false
				ClearPedTasks(Ped)
				if bakerseat then SetEntityCoords(Ped, bakerseat) end
				bakerseat = nil
			end
		end
		Wait(5) if not IsPedUsingScenario(Ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER") then sitting = false end
	end
end)



AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
	if GetResourceState("qb-target") == "started" or GetResourceState("ox_target") == "started" then
		for k, v in pairs(Chairs) do exports['qb-target']:RemoveZone(k) end
	end
end)