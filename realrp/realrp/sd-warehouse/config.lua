Config = {}

-- General Settings
Config.WareHouseDebug = false -- Change to true to enable green boxes for testing

Config.MinimumPolice = 6 -- Minimum police required to start heist
Config.Cooldown = 60  -- Cooldown in minutes

Config.ThermiteItem = "c4_bomb" -- you can change this..

Config.FirstHack = vector3(-1067.46, -2006.27, 14.91) -- First hack location
Config.SecondHack = vector3(-985.17, -2042.49, -19.65) -- Second hack location

Config.EnterLocation = vector3(-1057.23, -2003.95, 13.16)
Config.LeaveLocation = vector3(-952.58, -2044.05, -19.72)
Config.LeaveLocation2 = vector3(-988.01, -2040.27, -19.72)
Config.SecureWarehouse = vector3(-952.5, -2040.99, -19.56)

Config.EnableExplosion = true -- Enable Power Grid Explosion
Config.ExplosionType = 9 -- Google 'Explosion Types For FiveM' for reference

Config.Blip = {
	Enable = true, -- Change to false to disable blip creation
	Location = vector3(-1056.95, -2004.16, 13.16), -- Blip location
	Sprite = 473,
	Display = 4,
	Scale = 0.6,
	Colour = 18,
	Name = "Secured Warehouse", -- Name of the blip
}

-- Starting Minigame
Config.MainMinigame = 'ps-ui' -- memorygame/ps-ui 

if Config.MainMinigame == 'memorygame' then
Config.Blocks = "12" -- Number of correct blocks the player needs to click
Config.Attempts = "3" -- Number of incorrect blocks after which the game will fail
Config.Show = "6" -- Time in secs for which the right blocks will be shown
Config.Time = "45" -- Maximum time after timetoshow expires for player to select the right blocks
elseif Config.MainMinigame == 'ps-ui' then
Config.TimeP = "12" -- Time in Seconds
Config.GridP = "5" -- Grid Size of minigame - 5 and upwards is supported.
end

-- Escape Minigame
Config.EnableHacking = true -- Change to false to disable hacking
Config.SecondaryMinigame = 'hacking' -- mhacking/hacking/ps-ui

if Config.SecondaryMinigame == 'mhacking' then
Config.MinChar = "5" -- Characters Minimum
Config.MaxChar = "6" -- Characters Maximum
Config.Time = "30" -- Time
elseif Config.SecondaryMinigame == 'hacking' then
Config.BobTime = 15 -- How much time do they have to enter the hack?
Config.BobBlocks = 4 -- How many different blocks can the hack have?
Config.BobRepeat = 1 -- How many times in a row do they need to hack the system?
elseif Config.SecondaryMinigame == 'ps-ui' then
Config.UsePS = false -- if Enabled, disable the rest. (Lines 60 & 53)
Config.Type = 'numeric' -- (alphabet, numeric, alphanumeric, greek, braille, runes)
Config.TimeP2 = 25 -- Time in Seconds
Config.Mirrored = 0 -- (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
end

-- Items from Boxes
Config.MinAmountBox1 = 175 -- Min amount of items individually given per crate.
Config.MaxAmountBox1 = 250 -- Max amount of items individually given per crate.
Config.Box1 = {
    "metallicaluminum",
    "ironoxide"
}

Config.MinAmountBox2 = 4 -- Min amount of items individually given per crate.
Config.MaxAmountBox2 = 8 -- Max amount of items individually given per crate.
Config.Box2 = {
    "weapon_smg",
    "weapon_microsmg",
    "heavyarmor",
    "weapon_smokegrenade"
}

Config.MinAmountBox3 = 150 -- Min amount of items individually given per crate.
Config.MaxAmountBox3 = 175 -- Max amount of items individually given per crate.
Config.Box3 = {
    "diamond",
    "blackdiamond"
}

Config.MinAmountBox4 = 2 -- Min amount of items individually given per crate.
Config.MaxAmountBox4 = 3 -- Max amount of items individually given per crate.
Config.Box4 = {
    "laptop_green",
    "basicdecrypter"
}

Config.MinAmountBox5 = 4 -- Min amount of items individually given per crate.
Config.MaxAmountBox5 = 6 -- Max amount of items individually given per crate.
Config.Box5 = {
    "heavyarmor",

}

Config.MinAmountBox6 = 20 -- Min amount of items individually given per crate.
Config.MaxAmountBox6 = 25 -- Max amount of items individually given per crate.
Config.Box6 = {
    "coke_raw",
    "weed_bud",
    "heroin_syringe",
    "meth_syringe"

}

-- Prop Spawns
Config.WarehouseLoot = {
    [1] = "ex_prop_crate_closed_bc",
}

Config.WarehouseObjects = {
    [1] = "prop_boxpile_05a",
    [2] = "prop_boxpile_04a",
    [3] = "prop_boxpile_06b",
    [4] = "prop_boxpile_02c",
    [5] = "prop_boxpile_02b",
    [6] = "prop_boxpile_01a",
    [7] = "prop_boxpile_08a",
}

Config.LootLocations = {
    [1] 	= vector4(-972.0, -2050.94, -19.72, 208.37), -- Loot location 1
    [2] 	= vector4(-976.77, -2050.77, -19.72, 179.84), -- Loot location 2
    [3] 	= vector4(-976.72, -2039.4, -19.72, 1.85), -- Loot location 3
    [4] 	= vector4(-971.95, -2045.17, -19.72, 180.24), -- Loot location 4
    [5] 	= vector4(-964.62, -2050.96, -19.72, 183.32), -- Loot location 5
    [6] 	= vector4(-987.03, -2051.37, -19.72, 91.03) -- Loot location 6
}

Config.RandomLocations = {
    [1] 	= vector4(-962.16, -2051.28, -19.72, 4.35),
    [2] 	= vector4(-974.15, -2034.09, -19.72, 179.01),
    [3] 	= vector4(-967.13, -2051.17, -19.72, 355.9),
    [4] 	= vector4(-969.48, -2051.1, -19.72, 178.39),
    [5] 	= vector4(-974.31, -2050.8, -19.72, 183.04),
    [6] 	= vector4(-962.25, -2039.53, -19.72, 356.4),
    [7] 	= vector4(-964.64, -2039.44, -19.72, 357.97),
    [8]	    = vector4(-967.11, -2039.66, -19.72, 359.6),
    [9] 	= vector4(-969.44, -2039.41, -19.72, 352.74),
    [10] 	= vector4(-971.86, -2039.57, -19.72, 359.2),
    [11] 	= vector4(-974.27, -2039.59, -19.72, 349.94),
    [12] 	= vector4(-976.69, -2045.38, -19.72, 178.15),
    [13] 	= vector4(-974.35, -2045.28, -19.72, 177.82),
    [14]	= vector4(-969.58, -2045.26, -19.72, 182.38),
    [15]	= vector4(-967.04, -2045.21, -19.72, 181.18),
    [16] 	= vector4(-971.96, -2034.12, -19.72, 356.77),
    [17] 	= vector4(-962.2, -2045.29, -19.72, 180.05),
    [18] 	= vector4(-962.33, -2050.83, -19.72, 180.67),
    [19]	= vector4(-967.04, -2050.98, -19.72, 182.31),
    [20] 	= vector4(-953.61, -2053.86, -19.72, 267.37),
    [21] 	= vector4(-974.31, -2050.94, -19.72, 189.85),
    [22] 	= vector4(-986.89, -2053.83, -19.72, 91.57),
    [23] 	= vector4(-976.74, -2034.22, -19.72, 355.63),
    [24] 	= vector4(-953.63, -2036.46, -19.72, 271.51),
}

-- true = spawn guards, false = don't spawn guards
Config.SpawnGuards = true

Config.Guards = {
    [1] = {
        pos = {-983.6, -2052.69, -19.72, 288.53}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_SMG', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 50, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
    [2] = {
        pos = {-970.12, -2047.69, -19.72, 277.19}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_CARBINERIFLE', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 50, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
    [3] = {
        pos = {-980.27, -2034.33, -19.72, 199.45}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_SMG', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 50, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
    [4] = {
        pos = {-969.22, -2037.0, -19.72, 268.77}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_CARBINERIFLE', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 50, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
    [5] = {
        pos = {-959.58, -2035.86, -19.72, 208.54}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_CARBINERIFLE', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 50, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
    [6] = {
        pos = {-959.81, -2051.49, -19.72, 346.0}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_SMG', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 70, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
    [7] = {
        pos = {-957.5, -2052.67, -19.72, 356.54}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_SMG', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 70, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
    [8] = {
        pos = {-971.37, -2042.4, -19.72, 267.16}, -- guards position
        ped = 's_m_m_prisguard_01', -- guards hash
        weapon = 'WEAPON_SMG', -- guards weapon
        health = 1000, -- guards health
        range = 2, -- guards range
        accuracy = 70, -- guards accuracy
        aggresiveness = 2, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 2, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 200 -- guards armor 
    },
}