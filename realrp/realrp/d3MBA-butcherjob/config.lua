-- If you need any help join discord server and open a ticket with your TRANSACTION ID! 😃

-- Author: d3MBA#0001
-- Discord server: discord.gg/d3MBA

Config = {}

Config.DebugPolyZone = false -- [true/false] - If you want to see polyzone borders, set it to 'true' (Config.DebugPolyZone = true) 

Config.ClearAreaOfPeds = {
    Use = true, -- [true/false] - If you want to clear area of peds, set it to 'true' (Config.ClearAreaOfPeds.Use = true) 
    Radius = 60.0, -- [float] - Radius of area to clear peds
}

Config.KickReason = "[d3MBA-ButcherJob] | Protection!" 

-- Config.JobRequired = "JOB_NAME" -- if you want to disable it just set it to 'false' (Config.JobRequired = false) 
Config.JobRequired = false -- Job name e.g. Config.JobRequired = "JOB_NAME"

-- Particles synchronization   
Config.SyncParticlesWithAllPlayers = { -- If is false particles will see only the player who triggered it. 
    LineWater = true,  
    LineBlood = true,
    GrindingMachine = true,
}

Config.SyncAnimationsObjects = true -- [true/false] - If you want to sync animations objects(props) with all players, set it to 'true' (Config.SyncAnimationsObjects = true)

Config.Items = { 
    -- Change item names here for every action.
    Knife = "butcher_knife", 
    Chicken = "butcher_chicken",  
    GroundChicken = "butcher_ground_chicken",
    UnpluckedChicken = "butcher_unplucked_chicken",
    PluckedChicken = "butcher_plucked_chicken", 

    ChickenGizzard = "butcher_chicken_gizzard", 
    ChickenDrumstick = "butcher_chicken_drumstick",
    ChickenBreast = "butcher_chicken_breast",
    ChickenThigh = "butcher_chicken_thigh",
    ChickenWing = "butcher_chicken_wing",
    ChickenBack = "butcher_chicken_back",
    ChickenStockBones = "butcher_chicken_stock_bones",
    ChickenLeg = "butcher_chicken_leg",

    Order = "butcher_order",
} 


Config.Blip = { -- Main blip configuration
    -- https://docs.fivem.net/docs/game-references/blips/
    Pos = vector3(-71.8795, 6266.969, 31.220),
    Use = true, 
    Sprite = 268,
    Scale = 0.6,
    Color = 5,
    Label = "[Butcher job] - Company", 
}

Config.Instructions = { 
    SetPedInvisable = true, -- [true/false] - If you want to set ped invisable during instructions set it to 'true' (Config.Instructions.SetPedInvisable = true)
    SetRentPedBlockingOtherEvents = true, -- [true/false] - If you want to set rent ped blocking other events, set it to 'true' (Config.Instructions.SetRentPedBlockingOtherEvents = true) 

    -- Link for ped models - https://docs.fivem.net/docs/game-references/ped-models/
    Peds = {
        {Model = "s_m_y_factory_01", Pos = vector4(-69.5339, 6251.109, 30.090, 67.36)},
        {Model = "s_m_y_factory_01", Pos = vector4(-83.3295, 6240.623, 30.090, 219.09)},
        {Model = "s_m_y_factory_01", Pos = vector4(-104.515, 6197.471, 30.025, 349.06)},
        {Model = "s_m_y_factory_01", Pos = vector4(-67.4014, 6269.020, 30.313, 72.58)},

    },
}   

Config.ChangeClothes = {
    Use = true, -- [true/false] - If you want to use change clothes, set it to 'true' (Config.ChangeClothes.Use = true)
    CheckBeforeAnyInteraction = false,  -- [true/false] - If you want to check before any interaction, if player wearing job uniform set it to 'true' (Config.ChangeClothes.CheckBeforeAnyInteraction = true)

    -- This thing you should ajust to your server. Numbers for clothes you should find in your clothing shop!
    Male = { 
        ["tops"] = {item = 22, texture = 0},
        ["legs"] = {item = 36, texture = 0},
        ["arms"] = {item = 85, texture = 0},
        ["t-shirt"] = {item = 23, texture = 0},
        -- ... add more clothing items as needed
    },

    Female = {
        ["tops"] = {item = 22, texture = 0},
        ["legs"] = {item = 36, texture = 0},
        ["arms"] = {item = 85, texture = 0},
        ["t-shirt"] = {item = 23, texture = 0},
        -- ... add more clothing items as needed
    }
    
    -- All clothing variations (that you can use to edit male/female clothing configuration above)

    -- ["face"] 
    -- ["mask"] 
    -- ["hair"] 
    -- ["torso"]
    -- ["legs"]
    -- ["parachute_bag"]
    -- ["shoes"] 
    -- ["accessories"]
    -- ["undershirt"] 
    -- ["body_armor"] 
    -- ["decals_logos"] 
    -- ["tops"] 
    -- ["jackets"]
    -- ["helmets"]
    -- ["glasses"]
    -- ["pants"] 
    -- ["ears"] 
    -- ["watches"] 
    -- ["bracelets"] 
    -- ["arms"] 
    -- ["t-shirt"] 
    -- ["t-shirt2"] 
}


Config.CatchingChickens = { 
    SyncSpawnedChickensWithAllPlayers = false, -- [true/false] - THIS OPTIONS IS DISABLED FOR NOW!!!

    Model = "a_m_m_farmer_01", -- https://docs.fivem.net/docs/game-references/ped-models/
    Pos = vector4(2386.534, 5028.433, 46.016 -1, 317.7),
    PedInteractDistance = 1.0,

    TimeCheck = { 
        Use = true, -- [true/false] - If you want to use time check, set it to 'true'  
        CheckTime = 3, -- Every 3 sec script will check in game time. 
        OpeningTime = 6, -- 6:00 AM 
        ClosingTime = 20, -- 8:00 PM 
    },
    
    -- Experience system - (⚠️chances for catching chicken you can change in client-customize.lua file (client/client-customize.lua))
    IncreaseExperience = {
        Min = 1, -- [Min] - Minimum experience to increase
        Max = 3  -- [Max] - Maximum experience to increase
    },

    ExperienceChance = { 
        -- [Experience] = Chance in % 
        [0] = 20, -- 0 experience = 20% chance to catch chicken
        [10] = 25, -- 10 experience = 25% chance to catch chicken
        [20] = 30, 
        [30] = 35, 
        [40] = 40, 
        [50] = 50, 
        [60] = 60, 
        [70] = 70, 
        [80] = 80, 
        [90] = 90, 
        -- You can add more experience and chances here. e.g. [Experience] = Chance in % 
    }, 

    -- Blip 
    Blip = {
        -- https://docs.fivem.net/docs/game-references/blips/
        Use = true, 
        Sprite = 273,
        Scale = 0.6,
        Color = 5,
        Label = "[Butcher job] - Catching chicken",
    },

    -- Chickens spawn coords 
    Loc = { 
        vector4(2371.622, 5054.904, 46.440, 238.02),
        vector4(2380.598, 5060.250, 46.444, 207.76),
        vector4(2384.747, 5055.103, 46.444, 172.27),
        vector4(2384.219, 5048.453, 46.422, 134.64),
        vector4(2379.462, 5049.521, 46.447, 353.94),
        vector4(2374.155, 5051.911, 46.445, 56.18),
        vector4(2375.212, 5056.521, 46.445, 266.63),
        vector4(2385.173, 5056.305, 46.444, 171.05),
        vector4(2379.042, 5053.210, 46.445, 159.61),
        vector4(2378.026, 5043.742, 46.402, 96.45),
        vector4(2369.989, 5049.423, 46.393, 298.47),
        vector4(2384.465, 5048.929, 46.425, 50.41),
        vector4(2385.624, 5058.794, 46.443, 66.32),
        vector4(2376.642, 5059.959, 46.444, 207.6),
        vector4(2381.644, 5045.542, 46.379, 58.02),
        vector4(2387.359, 5050.353, 46.495, 45.44),
        vector4(2385.027, 5060.254, 46.443, 84.41),
    }
}

Config.JobVehicle = {
    Ped = {
        Model = "s_m_y_factory_01", -- https://docs.fivem.net/docs/game-references/ped-models/
        Pos = vector4(-58.1390, 6270.676, 30.392, 302.45),
    },
    
    Model = "speedo", -- https://wiki.rage.mp/index.php?title=Vehicles 

    JobVehicleBlip = {
        Use = true, -- [true/false] - If you want to use blip, set it to 'true'
        Sprite = 477,
        Color = 2,
        Scale = 0.6,
        Label = "[Butcher job] - Job vehicle",
    },

    ReturnVehilclePos = vector3(-54.05, 6277.41, 31.36), -- return vehicle 

    ReturnVehicleBlip = {
        Use = true, -- [true/false] - If you want to use blip, set it to 'true'
        Sprite = 477,
        Color = 1,
        Scale = 0.6,
        Label = "[Butcher job] - Return vehicle",
    },
    

    SpawnPos = vector4(-51.4351, 6279.174, 30.970, 301.52), -- vehicle spawn position

    SetPedIntoVehicle = true, -- if true, ped will be set into vehicle after spawning. 
    FullFuel = true, -- if true, vehicle will be spawned with full fuel. 

    Deposit = {
        Use = true, -- [true/false] - If you want to use deposit system, set it to 'true'
        Account = "cash", -- ("cash", "bank")
        Amount = 100, -- amount of money to deposit
    },

    SpawnPointCheck = { -- It will check spawn point. To prevent spawning vehicle on vehicle. 
        Use = true,
        Radius = 3.5 -- Default radius 3.5
    }, 
}

Config.ChickenLine = {
    PuttingTime = 2.5, -- Time to put chicken on the line (in seconds) 
    SlideSpeed = 1.2, -- Speed of the chicken sliding on the line (default 1.2)
}

Config.ProcessingTable = {    

    IncreaseExperience = { 
        Min = 1, -- [Min] - Minimum experience to increase
        Max = 3 -- [Max] - Maximum experience to increase
    },

    Duration = { -- Processing chicken time (in seconds)
        -- [Player's experience] = time (in seconds)
        [5] = 20,
        [15] = 17, 
        [25] = 15, 
        [35] = 12, 
        [45] = 10, 
        [55] = 8, 
        [65] = 6, 
        [80] = 5, 
        -- You can add more experience and time here. e.g. [Experience] = time (in seconds)
    },

    Items = { 
        -- [ITEM_NAME] = AMOUNT or {MinAmount = MIN, MaxAmount = MAX}
        [Config.Items.ChickenGizzard] = 1,   
        [Config.Items.ChickenBreast] = 1,  
        [Config.Items.ChickenWing] = 2,  
        [Config.Items.ChickenThigh] = 1, 
        [Config.Items.ChickenDrumstick] = 2, 
        [Config.Items.ChickenBack] = 1, 
        [Config.Items.ChickenStockBones] = {MinAmount = 3, MaxAmount = 10}, 
    },
}

Config.GrindingMeat = {
    GrindingTime = 15, -- Time to grind meat (in seconds) 

    GrinderMenu = {
        ["50"] = { -- 50 = 50 grams of gound meat 
            [Config.Items.ChickenLeg] = 4,
            [Config.Items.ChickenGizzard] = 1,
            [Config.Items.ChickenBreast] = 1,
            [Config.Items.ChickenWing] = 2,
            [Config.Items.ChickenThigh] = 1,
            [Config.Items.ChickenDrumstick] = 2,
            [Config.Items.ChickenStockBones] = 25,
            [Config.Items.ChickenBack] = 1,
        }, 

        ["150"] = { -- 150 = 150 grams of gound meat
            [Config.Items.ChickenLeg] = 12,
            [Config.Items.ChickenGizzard] = 3,
            [Config.Items.ChickenBreast] = 3,
            [Config.Items.ChickenWing] = 6,
            [Config.Items.ChickenThigh] = 3,
            [Config.Items.ChickenDrumstick] = 6,
            [Config.Items.ChickenStockBones] = 75,
            [Config.Items.ChickenBack] = 3,
        },

        ["500"] = { -- 500 = 500 grams of gound meat
            [Config.Items.ChickenLeg] = 40,
            [Config.Items.ChickenGizzard] = 10,
            [Config.Items.ChickenBreast] = 10,
            [Config.Items.ChickenWing] = 20,
            [Config.Items.ChickenThigh] = 10,
            [Config.Items.ChickenDrumstick] = 20,
            [Config.Items.ChickenStockBones] = 250,
            [Config.Items.ChickenBack] = 10,
        }   
        -- You can add more if you want. 
    }
} 

Config.InstantSell = { 
    Use = true, -- [true/false] - If you want to use instant sell system, set it to 'true' 

    Ped = {
        Model = "s_m_m_migrant_01", -- https://docs.fivem.net/docs/game-references/ped-models/
        Pos = vector4(-155.499, 6139.765, 31.335, 319.86),
    }, 

    Blip = { -- https://docs.fivem.net/docs/game-references/blips/
        Use = true, -- [true/false] - If you want to use blip, set it to 'true'
        Sprite = 514,
        Color = 5,
        Scale = 0.6,
        Label = "[Butcher job] - Sell point",
    },

    DynamicPrices = {
        Use = true, -- [true/false] - If you want to use dynamic prices, set it to 'true'
        PriceMinMultiplier = 0.7, -- Min price multiplier, 70% of original price
        PriceMaxMultiplier = 1.5, -- Max price multiplier, 150% of original price
    }, 

    Account = "cash", -- ("cash", "bank")

    SellMenu = {
        {ItemName = Config.Items.GroundChicken, Price = 5},
        {ItemName = Config.Items.ChickenLeg, Price = 5},
        {ItemName = Config.Items.ChickenGizzard, Price = 8},
        {ItemName = Config.Items.ChickenBreast, Price = 9},
        {ItemName = Config.Items.ChickenWing, Price = 9},
        {ItemName = Config.Items.ChickenThigh, Price = 8},
        {ItemName = Config.Items.ChickenDrumstick, Price = 8},
        {ItemName = Config.Items.ChickenStockBones, Price = 3},
        {ItemName = Config.Items.ChickenBack, Price = 10},
        -- You can add more items here.
    }
}

Config.Delivery = { 
    PedModels = {
        "s_m_m_migrant_01", -- https://docs.fivem.net/docs/game-references/ped-models/
    },

    Account = "cash", -- ("cash", "bank")

    WaitingTime = { -- Time to find order (in seconds)  
        Min = 30, -- [Min] - Minimum time to find order (delivery point) (in seconds)
        Max = 60, -- [Max] - Maximum time to find order (delivery point) (in seconds)
    },

    Blip = {
        Use = true, -- [true/false] - If you want to use blip, set it to 'true'
        Sprite = 514,
        Color = 47,
        Scale = 0.6,
        Label = "[Butcher job] - Delivery point",
    },

    DeliveryPoints = { -- Delivery points
        vector4(1734.031, 6409.151, 35.000, 132.51),
        vector4(1655.135, 4874.198, 42.069, 275.72),
        vector4(1963.889, 3739.070, 32.351, 238.64),
        vector4(916.3735, 3576.821, 33.561, 264.65),
        vector4(-1177.91, -892.363, 13.754, 318.38), -- BurgerShoot
        vector4(78.53101, 274.6932, 110.21, 160.22), -- Up-n-Atom
        vector4(412.7020, -1905.91, 25.504, 43.76),
        vector4(195.5339, -1764.04, 29.361, 86.36),
        vector4(6.011523, -1602.32, 29.294, 46.91),
        vector4(23.65342, -1349.79, 29.326, 222.24),
        vector4(45.90279, -999.194, 29.347, 333.86),
        vector4(-708.427, -917.119, 19.214, 174.23),
        vector4(-1654.28, -1037.47, 13.152, 51.19),
        vector4(-1529.19, -908.699, 10.169, 153.18),
        -- You can add more delivery points here.
    }, 

    NumberOfItems = { -- Number of items per order 
        Min = 3, -- [Min] - Minimum number of items per order
        Max = 6, -- [Max] - Maximum number of items per order
    },

    DynamicPrices = {
        Use = true, -- [true/false] - If you want to use dynamic prices, set it to 'true'
        PriceMinMultiplier = 0.8, -- Min price multiplier, 70% of original price
        PriceMaxMultiplier = 1.9, -- Max price multiplier, 150% of original price
    }, 

    DistanceMultiplier = {
        Use = true, -- [true/false] - If you want to use distance multiplier, set it to 'true'
        PriceMultiplier = 0.1, -- Adittional earn for each meter - (distance between company and delivery point) default 0.1$ per meter
    },

    PackagingTime = 10, -- Time to pack items (in seconds) 

    DeliveryItems = { -- Items that can be delivered
        {ItemName = Config.Items.GroundChicken, Price = 6, Amount = {Min = 5, Max = 20}},
        {ItemName = Config.Items.ChickenLeg, Price = 6, Amount = {Min = 4, Max = 22}},
        {ItemName = Config.Items.ChickenGizzard, Price = 9, Amount = {Min = 5, Max = 10}},
        {ItemName = Config.Items.ChickenBreast, Price = 9, Amount = {Min = 2, Max = 6}},
        {ItemName = Config.Items.ChickenWing, Price = 9, Amount = {Min = 5, Max = 12}},
        {ItemName = Config.Items.ChickenThigh, Price = 8, Amount = {Min = 2, Max = 8}},
        {ItemName = Config.Items.ChickenDrumstick, Price = 8, Amount = {Min = 2, Max = 10}},
        {ItemName = Config.Items.ChickenStockBones, Price = 3, Amount = {Min = 10, Max = 35}},
        {ItemName = Config.Items.ChickenBack, Price = 10, Amount = {Min = 3, Max = 7}},
    }
}

function DrawText3D(coords, text, scale2)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)
    
    -- Experimental math to scale the text down
    local scale = 200 / (GetGameplayCamFov() * dist)

    -- Format the text
    SetTextScale(0.0, scale2 * scale)
    SetTextFont(6)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextOutline()
    SetTextDropShadow()
    SetTextCentre(true)

    -- Diplay the text
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(coords, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end