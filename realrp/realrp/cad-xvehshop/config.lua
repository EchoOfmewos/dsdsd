Config = {}

-- \ Core resource name
Config.CoreExport = 'qb-core'      -- default: qb-core
-- \ Fuel resource name
Config.FuelExport = 'cdn-fuel'   -- default: LegacyFuel

-- \ Choose the PriorityMethod you want to fetch/save data
-- \ Remember if you choose discord then make sure you edit `config_discord.lua`
Config.PriorityMethod = 'discord' -- "discord", "sql"

-- \ Notification (Client Side Function)
SendNotification = function(msg, type)
    TriggerEvent("QBCore:Notify", msg, type)
end

-- \ Exclusive Shops
Config.ExclusiveShops = {
    ['exclusive'] = {
        ShopLabel = 'Exclusive Dealer Motorsport',           -- Shop Blip Label
        showBlip = true,                                     -- Shop Blip Display(Show/Not Show)
        blipSprite = 326,                                    -- Shop Blip Sprite
        blipColor = 3,                                       -- Shop Blip Colour
        Categories = {
            ['level1'] = 'ClubDiamond',                           -- Category Name | Label (can be anything)
            ['level2'] = 'Silver',                           -- Category Name | Label (can be anything)
            ['level3'] = 'Quinn',                             -- Category Name | Label (can be anything)
        },
        TestDriveTimeLimit = 0.0,                            -- Test Drive Time Limit
        Location = vector3(-1257.6, -367.5, 36.91),             -- Shop Location (Blip)
        ReturnLocation = vector4(-1233.5, -346.44, 37.33, 24.63), -- Return TestDrive Location
        VehicleSpawn = vector4(-1245.25, -330.03, 37.1, 298.9), -- Vehicle Spawn Location
        Zone = {  -- POLYZONE OF XVEHSHOP
            Shape = {
                vector2(-1234.1281738281, -335.5260925293),
                vector2(-1225.7338867188, -352.52774047852),
                vector2(-1267.3453369141, -376.65267944336),
                vector2(-1275.6800537109, -359.98114013672),
                vector2(-1271.9147949219, -354.57739257813)
            },
            minZ = 36.509433746338,
            maxZ = 37.332794189453,
            size = 2.75,
        },
        DisplayPlate = "EXCLUSIVE",
        DisplayVehicles = {  -- Vehicles to display (also used to swap vehicle)
            [1] = {
                coords = vector4(-1270.26, -358.7, 36.3, 249.95), -- Vehicle Spawn Location
                defaultVehicle = 'sayosemite', -- Default Vehicle (change this)
                chosenVehicle = 'sayosemite', -- Chosen Vehicle (change this)
            },
            [2] = {
                coords = vector4(-1268.83, -364.72, 36.3, 295.29), -- Vehicle Spawn Location
                defaultVehicle = 'jd_oraclev12', -- Default Vehicle (change this)
                chosenVehicle = 'jd_oraclev12', -- Chosen Vehicle (change this)
            },
            [3] = {
                coords = vector4(-1265.28, -354.75, 36.3, 205.81), -- Vehicle Spawn LocationGODz95GSX
                defaultVehicle = 'vigeross', -- Default Vehicle (change this)
                chosenVehicle = 'vigeross', -- Chosen Vehicle (change this)
            },
            [4] = {
                coords = vector4(-1256.2131347656, -366.8518371582, 36.726421356201, 343.6142578125), -- Vehicle Spawn LocationGODz95GSX
                defaultVehicle = 'detan', -- Default Vehicle (change this)
                chosenVehicle = 'detan', -- Chosen Vehicle (change this)
            },
            [5] = {
                coords = vector4(-1262.0993652344, -353.17761230469, 36.576362609863, 208.56817626953), -- Vehicle Spawn LocationGODz95GSX
                defaultVehicle = 'gauntletstx', -- Default Vehicle (change this)
                chosenVehicle = 'gauntletstx', -- Chosen Vehicle (change this)
            },
        }
    }
}