Config = {}


------------------------------ BIKE IN CLUB HOUSE ------------------------------
Config.bike = {
    ['coords'] = vector4(1991.16, 3047.22, 46.96, 237.71),
    ['bike'] =  'nocturnoII', -- BIKE MODEL 
    ['plate'] = 'LOSTMC', --NUMBER PLATE  Make sure only 8 characters
}
r, g, b = 0, 0, 0  -- bike colour RGB



CreateThread(function()
    local model = GetHashKey(Config.bike['bike'])
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
    local veh = CreateVehicle(model, Config.bike['coords'].x, Config.bike['coords'].y, Config.bike['coords'].z-0.5, false, false)
    SetModelAsNoLongerNeeded(model)
    SetEntityAsMissionEntity(veh, true, true)
    SetVehicleOnGroundProperly(veh)
    SetEntityInvincible(veh,true)
    SetVehicleDirtLevel(veh, 0.0)
    SetVehicleDoorsLocked(veh, 3)
    SetEntityHeading(veh,Config.bike['coords'].w)
    SetVehicleCustomPrimaryColour(veh, r, g, b) -- bike colour
    SetVehicleCustomSecondaryColour(veh, r, g, b) -- bike colour
    SetVehicleExtraColours(veh, 1, 1)-- bike colour
    FreezeEntityPosition(veh, true)
    SetVehicleNumberPlateText(veh, Config.bike['plate'])
end)



------------------------------ CLEAR PEDS FROM AREA ------------------------------
CreateThread(function()
    while true do
        ClearAreaOfPeds(1988.02, 3047.88, 47.21, 20.0); 
        -- ClearAreaOfVehicles(1452.67, -2605.99, 48.52, 15.0, false, false, false, false, false);
        Wait(100)
    end
end)

------------------------------ REMOVE OLD YELLOWJACK MLO ------------------------------


CreateThread(function()
    local oldinterior = GetInteriorAtCoordsWithType(1986.71606, 3048.85059, 46.2284966, 'v_hicksbar')
    DisableInterior(oldinterior, true)
    UnpinInterior(oldinterior)
end)