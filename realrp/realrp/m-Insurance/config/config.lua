Config = {}

Config.Webhook = ""
Config.Commands = { -- Command for checking the car insurance
    Enable = false, -- Enable commands?
    Command = "checkinsurance",  -- Command
    NeedJob = true, -- Need job for making the command?
    Job = { -- Job Needed
        "police",
        "lspd",
    }
}

Config.JobSettings = {
    EnableJob = false, -- If true, only players can give insurance and registration to people
    Jobs = { -- List of job's can use the commands above
        "mechanic",
        "lscustoms"
        -- You can add more
    },
    commandRegistration = "registervehicle", -- Command to open the registration menu
    commandInsurance = "insurancevehicle", -- Command to open the insurance menu
    labelRegistration = "Open registration menu",
    labelRegistration = "Open insurance menu",
}

--------------------------
-- Utility
--------------------------
Config.Utility = {
    CoreName = "qb-core", -- Your core name
    SQL = "oxmysql", -- oxmysql or ghmattimysql
    Phone = "notify", -- qb-phone / qs-smartphone / gksphone / rodaphone / d-phone / renewed-phone / notify - if you dont use any phone
    Target = "ox", -- "qb" or "ox"
    TargetName = "ox_target", -- Name of your target
    TargetDistance = 10.0, -- Distance target
    Input = "qb-input", -- If you use Target = "qb" and uses other name 
    Menu = "ox", -- "qb" or "ox"
    MenuName = "qb-menu", -- If you use Menu = "qb" and uses other name 
    Inventory = "ox", -- "qb" or "ox"
    Management = "qb-management", -- Your qb-management name
    UseableItems = true, -- Can use items to show to close people
    MakeAnimation = true, -- Make animation when see the cards?
    EmoteMenu = "rpemotes", -- "dpemotes" or "rpemotes"
    Animation = "book", -- Animation
    UseSocietyAccount = false, -- If true, then the price goes to company
    Company = "mechanic", -- Job name to the price go
    Range = 5.0, -- Range to access ped with 3rd eye
    RenewedBanking = true, -- You use renewed banking?
    WaitTime = 3000, -- Time to complete the insurance
    CustomPlate = false, -- Use custom plates?
    Garages = "qb", -- "qb" or "qs"
    Peds = { -- Peds
        { type = 4, hash = GetHashKey("s_m_m_gaffer_01"), vector4 = vector4(802.20092773438, -807.09710693359, 25.18155670166, 179.55976867676) },
        { type = 4, hash = GetHashKey("s_m_m_gaffer_01"), vector4 = vector4(819.52160644531, -822.81469726563, 25.181299209595, 85.353256225586) },
        { type = 4, hash = GetHashKey("s_m_m_gaffer_01"), vector4 = vector4(835.26, -820.10, 25.33, 89.50) },
        -- You can add more peds if you want
    },
}

Config.Blips = {
    [1] = { Enable = true, Location = vector3(835.57, -812.3, 25.29), Sprite = 89, Display = 2, Scale = 0.8, Colour = 44, Name = "Car Insurance" },
    --[2] = { Enable = true, Location = vector3(835.57, -812.3, 25.29), Sprite = 89, Display = 2, Scale = 0.8, Colour = 44, Name = "Car Insurance" },
    --[3] = { Enable = true, Location = vector3(835.57, -812.3, 25.29), Sprite = 89, Display = 2, Scale = 0.8, Colour = 44, Name = "Car Insurance" },
    --[4] = { Enable = true, Location = vector3(835.57, -812.3, 25.29), Sprite = 89, Display = 2, Scale = 0.8, Colour = 44, Name = "Car Insurance" },
    -- You can add more blips if you want :)

}


Config.Time = { -- This works on car & health insurance
    [1] = 30, -- xTime in days
    [2] = 60, -- 2xTime in days
    [3] = 90, -- 3xTime in days
}

Config.Registration = { -- Even if Registration expire you can still get your insurance (update should come soon)
    Expire = false,
    ExpireTime = 5, -- in days
}

Config.Prices = { 
    Type = "cash", -- "cash" or "bank"
    ByVehicleCategory = true,
    Categories = { -- Multiplayer: 1.2; 1.5; etc...
        [0] = 1.0, --Compacts
        [1] = 1.1, --Sedans
        [2] = 1.2, --SUVs
        [3] = 1.3, --Coupes
        [4] = 1.3, --Muscle
        [5] = 1.5, --Sports Classics
        [6] = 2, --Sports
        [7] = 2.5, --Super
        [8] = 1.3, --Motorcycles
        [9] = 1.3, --Off-road
        [10] = 1.2, --Industrial
        [11] = 1.3, --Utility
        [12] = 1.3, --Vans
        [13] = 1.4, --Cycles
        --[14] = , --Boats
        --[15] = , --Helicopters
        --[16] = , --Planes
        --[17] = , --Service
        --[14] = , --Emergency
        --[19] = , --Military
        --[20] = , --Commercial
        --[21] = , --Trains
    },
    PricexTime = 150, -- Price for insurance x
    Price2xTime = 750, -- Price for insurance 2x
    Price3xTime = 2500, -- Price for insurance 3x
    Registration = 500, -- Price for car registration
}



--██████╗░███████╗██████╗░░█████╗░██╗██████╗░░██████╗
--██╔══██╗██╔════╝██╔══██╗██╔══██╗██║██╔══██╗██╔════╝
--██████╔╝█████╗░░██████╔╝███████║██║██████╔╝╚█████╗░
--██╔══██╗██╔══╝░░██╔═══╝░██╔══██║██║██╔══██╗░╚═══██╗
--██║░░██║███████╗██║░░░░░██║░░██║██║██║░░██║██████╔╝
--╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝╚═╝╚═╝░░╚═╝╚═════╝░

Config.Repairs = {
    Enable = false, -- Enable station's repairs if vehicle have insurance?
    Type = "bank", -- "bank" or "cash"
    Price = 500, -- Price to repair the vehicle
    UseSocietyAccount = true, -- If true, then the price goes to company
    Company = "mechanic", -- Job name to the price go
    Peds = { -- Peds
        { type = 4, hash = GetHashKey("a_m_y_genstreet_01"), vector4 = vector4(734.33, -1079.51, 21.17, 181.86) }, -- Near the insurance spot
        { type = 4, hash = GetHashKey("a_m_y_genstreet_01"), vector4 = vector4(-213.77, -1332.88, 29.89, 359.90) }, -- LS Custom's near the vehicleshop
        { type = 4, hash = GetHashKey("a_m_y_genstreet_01"), vector4 = vector4(1174.66, 2636.94, 36.75, 1.55) }, -- LS Custom's sandyr shores
        -- You can add more peds if you want
    },
}



--██╗░░██╗███████╗░█████╗░██╗░░░░░████████╗██╗░░██╗
--██║░░██║██╔════╝██╔══██╗██║░░░░░╚══██╔══╝██║░░██║
--███████║█████╗░░███████║██║░░░░░░░░██║░░░███████║
--██╔══██║██╔══╝░░██╔══██║██║░░░░░░░░██║░░░██╔══██║
--██║░░██║███████╗██║░░██║███████╗░░░██║░░░██║░░██║
--╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚══════╝░░░╚═╝░░░╚═╝░░╚═╝

Config.Health = {
    Enable = false, -- Enable health insurance?
    UseSocietyAccount = false, -- If true, then the price goes to company
    Company = "ambulance", -- Job name to the price go
    Peds = { -- Peds
        { type = 4, hash = GetHashKey("s_m_m_paramedic_01"), vector4 = vector4(351.29, -626.61, 29.24, 224.88) },
        -- You can add more peds if you want
    },
    Type = "cash", -- "bank" or "cash"
    Prices = {
        One = 250, -- 1 Month
        Two = 500, -- 2 Monts
        Three = 750, -- 3 Months
    }
}