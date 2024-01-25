Config = {}

Config.bike = {
    ['coords'] = vector4(-712.88, -414.31, 34.76, 270.37),
    ['bike'] =  'nightblade',
    ['plate'] = 'APOLLO', -- Make sure only 8 characters
}
r, g, b = 0, 0, 0  -- RGB Colour



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

