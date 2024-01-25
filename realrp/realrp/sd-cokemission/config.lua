Config = {}

-- General Settings
Config.MinimumPolice = 5 -- Minimum Police Required to start the Job!
Config.RunCost = 7000 -- Price for starting the Run
Config.Cooldown = 45 -- Minutes * Recommended to have some form of cooldown!

Config.SendEmail = true -- Starting Email (Only Triggers if Config.EnableMinigame is set to false. when Config.EnableMinigame is true the email event from the minigame will be triggered irregardless of what this is set to.)
-- (if Config.SendEmail & Config.EnableMinigame are false, it'll just put out a Notification and start the Run)
-- (reference Config.Phone in sd_lib/sh_config.lua and the util function SendEmail in sd_lib/client/cl_utils.lua)

-- Enable cache mode (true = cache, false = direct item output from underwater vehicles)
Config.UsingSealedCache = true

-- If using cache, specify the cache item and key item details
if Config.UsingSealedCache then
    Config.SealedCache = {
        Item = 'briefcasett',            -- Cache item name
        RequiresKeyToOpen = true,        -- Cache requires a key to open (true/false)
        KeyItem = 'cache_key',           -- Key item name
        KeyItemChance = 10,              -- Chance to get a key when looting a cache (in %)
        ChanceToRemoveKey = 35,          -- Chance to remove the key upon cache use (in %)
    }
end

-- Specify the reward items directly for both cases
Config.RewardItems = {
    { item = 'metallicaluminum' },
    { item = 'ironoxide' },
    { item = 'coke_raw' },
    { item = 'scrap' },
    -- { item = 'hello :)' },
    -- Add more reward items as needed
}

Config.RewardAmount = 180  -- Number of reward items to give from each cache item or from each vehicle (Depending on Config.UsingSealedCache)

Config.EnableAnimation = true -- Animation for the talking to the Ped.
Config.FlareTime = 15 -- Minutes (before the flares stop burning..)

Config.CheckForBlackout = false -- Set to true if you want the run to only be accessible when a blackout is active. (currently only supports qb-weathersync)
 
-- Minigame Settings -- (reference Config.Phone in sd_lib/sh_config.lua and the util function SendEmail in sd_lib/client/cl_utils.lua)
Config.EnableMinigame = false -- true, will direct players to complete the phone numbers minigame instead of directly starting the run. false = directly starts the run
Config.EnableMinigameTimeout = true -- When will the Minigame Timeout (Remove Zones, Blips and clear Variables)
Config.MinigameTimeout = 30 -- Minutes

Config.PhoneBooths = {
    { x = -1224.1, y = -322.62, z = 37.58, heading = 30.0 }, -- Booth 1
    { x = -1073.98, y = -397.78, z = 36.96, heading = 30.0 }, -- Booth 2
    { x = -523.79, y = -299.86, z = 35.35, heading = 30.0 }, -- Booth 3
    { x = -544.16, y = -157.43, z = 38.54, heading = 30.0 }, -- Booth 4
}

-- Blip Creation for Boss Peds
Config.Blip = {
    Enable = false, -- Change to false to disable blip creation
    Sprite = 480,
    Display = 4,
    Scale = 0.6,
    Colour = 1,
    Name = "Mysterious Person", -- Name of the blip
}

-- Ped Spawns
Config.BossPed = 's_m_y_uscg_01' -- The model name of the boss ped.
Config.BossLocation = { -- The locations where the boss can spawn.
    [1] = vector4(-1201.16, -266.51, 36.92, 44.09),
}

-- Boat Settings
Config.EnableBoat = true -- True if you want a boat to spawn in the Alamo Sea
Config.Boatspawn = vector3(2225.68, 4018.5, 36.33) -- Location where the boat will spawn!
Config.BoatTimeout = 5 -- Minutes (Till the Boat blip despawns)

-- Submerged Vehicle Settings
Config.CarModels = {
    'voodoo',
    'virgo3',
    'dukes3'
}

Config.CarSpawnList = {
    vector3(-3426.81, 1700.72, -61.1),
    vector3(-3604.48, 867.09, -51.46),
    vector3(-3085.08, 2819.58, -35.47),
    vector3(4015.3, 2989.85, -40.09),
    vector3(1992.59, -2970.79, -34.11),
    vector3(-422.34, 7211.27, -35.66),
    vector3(515.15, 7092.08, -17.56),
    vector3(1930.52, 6802.7, -31.53),
    vector3(-1477.38, 5625.07, -24.97)
} 

