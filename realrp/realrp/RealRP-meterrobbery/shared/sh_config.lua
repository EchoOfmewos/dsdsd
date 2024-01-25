Config = {}

-- Debug Configs --
Config.Debug = false
Config.DebugPoly = false

-- Police Configs --
Config.MinimumPolice = 5
Config.PoliceChance = 100
Config.PoliceJobs = { 'leo' }

-- Dispatch Function --
function Config.DispatchFunction(COORDS)
    exports["ps-dispatch"]:CustomAlert({
        coords = COORDS,
        jobs = Config.PoliceJobs,
        message = 'Parking Meter Robbery',
        dispatchCode = '10-??',
        firstStreet = COORDS,
        description = 'Parking Meter Robbery',
        radius = 0,
        sprite = 58,
        color = 1,
        scale = 1.0,
        length = 3,
    })
end

-- Minigame to Rob Meter --
Config.Minigame = {
    keys = {'1', '2', '3', '4'},
    difficulty = {
        {'easy', 'easy', 'medium'},
        {'easy', 'medium', 'medium'},
        {'easy', 'medium', 'medium', 'easy', 'easy'},
    }
}

-- Meter Payouts --
Config.Payout = {
    min = 300,
    max = 600
}

-- Time Configs --
Config.OpenMeterLength = 5
Config.RobbingLength = 15
Config.MeterCooldowns = 20

-- Accepted Items --
-- Table of items that can be used to rob the meters
-- Player only needs 1 of any of these items
Config.AcceptedItems = {
    'lockpick',
    'advancedlockpick'
}

-- Parking Meter Models --
Config.Models = {
    "prop_parknmeter_01",
    "prop_parknmeter_02"
}

-------------------------------------------------

QBCore = exports['qb-core']:GetCoreObject()