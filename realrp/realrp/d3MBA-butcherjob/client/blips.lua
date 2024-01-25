local Framework = exports['d3MBA-lib']:GetFrameworkObject()


-- https://docs.fivem.net/docs/game-references/blips/

-- Catching chickens ped blip 
CreateThread(function() 
    if Config.CatchingChickens.Blip.Use == true then 
        CatchingChickensBlip = AddBlipForCoord(Config.CatchingChickens.Pos)
        SetBlipSprite(CatchingChickensBlip, Config.CatchingChickens.Blip.Sprite)
        SetBlipDisplay(CatchingChickensBlip, 4)
        SetBlipScale(CatchingChickensBlip, Config.CatchingChickens.Blip.Scale)
        SetBlipAsShortRange(CatchingChickensBlip, true)
        SetBlipCategory(CatchingChickensBlip, 10)
        SetBlipColour(CatchingChickensBlip, Config.CatchingChickens.Blip.Color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.CatchingChickens.Blip.Label)
        EndTextCommandSetBlipName(CatchingChickensBlip)
    end
    -- Main blip 
    if Config.Blip.Use == true then 
        mainBlip = AddBlipForCoord(Config.Blip.Pos)
        SetBlipSprite(mainBlip, Config.Blip.Sprite)
        SetBlipDisplay(mainBlip, 4)
        SetBlipScale(mainBlip, Config.Blip.Scale)
        SetBlipAsShortRange(mainBlip, true)
        SetBlipCategory(mainBlip, 10)
        SetBlipColour(mainBlip, Config.Blip.Color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.Label)
        EndTextCommandSetBlipName(mainBlip)
    end

    if Config.InstantSell.Blip.Use == true then 
        InstantSellBlip = AddBlipForCoord(Config.InstantSell.Ped.Pos)
        SetBlipSprite(InstantSellBlip, Config.InstantSell.Blip.Sprite)
        SetBlipDisplay(InstantSellBlip, 4)
        SetBlipScale(InstantSellBlip, Config.InstantSell.Blip.Scale)
        SetBlipAsShortRange(InstantSellBlip, true)
        SetBlipCategory(InstantSellBlip, 10)
        SetBlipColour(InstantSellBlip, Config.InstantSell.Blip.Color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.InstantSell.Blip.Label)
        EndTextCommandSetBlipName(InstantSellBlip)
    end 

    if Config.JobVehicle.JobVehicleBlip.Use == true then 
        JobVehicleBlip = AddBlipForCoord(Config.JobVehicle.Ped.Pos)
        SetBlipSprite(JobVehicleBlip, Config.JobVehicle.JobVehicleBlip.Sprite)
        SetBlipDisplay(JobVehicleBlip, 4)
        SetBlipScale(JobVehicleBlip, Config.JobVehicle.JobVehicleBlip.Scale)
        SetBlipAsShortRange(JobVehicleBlip, true)
        SetBlipCategory(JobVehicleBlip, 10)
        SetBlipColour(JobVehicleBlip, Config.JobVehicle.JobVehicleBlip.Color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.JobVehicle.JobVehicleBlip.Label)
        EndTextCommandSetBlipName(JobVehicleBlip)
    end

    if Config.JobVehicle.ReturnVehicleBlip.Use == true then 
        ReturnVehicleBlip = AddBlipForCoord(Config.JobVehicle.ReturnVehilclePos)
        SetBlipSprite(ReturnVehicleBlip, Config.JobVehicle.ReturnVehicleBlip.Sprite)
        SetBlipDisplay(ReturnVehicleBlip, 4)
        SetBlipCategory(ReturnVehicleBlip, 10)
        SetBlipScale(ReturnVehicleBlip, Config.JobVehicle.ReturnVehicleBlip.Scale)
        SetBlipAsShortRange(ReturnVehicleBlip, true)
        SetBlipColour(ReturnVehicleBlip, Config.JobVehicle.ReturnVehicleBlip.Color)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.JobVehicle.ReturnVehicleBlip.Label)
        EndTextCommandSetBlipName(ReturnVehicleBlip)
    end
end)