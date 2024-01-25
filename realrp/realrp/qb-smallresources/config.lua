Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.DisableAmbience = false -- Disabled distance sirens, distance car alarms, etc

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.Density = {
    ['parked'] = 0.05,
    ['vehicle'] = 0.05,
    ['multiplier'] = 0.05,
    ['peds'] = 0.2,
    ['scenario'] = 0.0,
}

ConsumablesEat = {
    ["sandwich"] = math.random(5, 10),
    ["tosti"] = math.random(5, 10),
    ["twerks_candy"] = math.random(5, 10),
    ["snikkel_candy"] = math.random(5, 10),
	["apple"] = math.random(5, 7),
    ["beef"] = math.random(10, 20),
	-- Casino Bar Snacks
	["casino_burger"] = math.random(25, 40),
	["casino_psqs"] = math.random(25, 40),
	["casino_ego_chaser"] = math.random(25, 40),
	["casino_sandwitch"] = math.random(25, 40),
	["casino_donut"] = math.random(25, 40)
}

ConsumablesDrink = {
    ["water_bottle"] = math.random(10, 11),
    ["kurkakola"] = math.random(5, 8),
    ["coffee"] = math.random(5, 9),
	["apple_juice"] = math.random(25, 45),
	["dbcocktail"] = math.random(5, 15),
	["hulkcocktail"] = math.random(5, 15),
	-- Casino Bar Drinks
	["casino_beer"] = math.random(25, 40),
	["casino_coke"] = math.random(25, 40),
	["casino_sprite"] = math.random(25, 40),
	["casino_luckypotion"] = math.random(25, 40),
	["casino_coffee"] = math.random(25, 40),
	["slushy"] = math.random(35, 54)
}

ConsumablesAlcohol = {
    ["whiskey"] = math.random(10, 13),
    ["beer"] = math.random(10, 13),
    ["vodka"] = math.random(10, 13),
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = false,
    [`LUXOR`] = false,
    [`LUXOR2`] = true,
    [`JET`] = false,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = false,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
   -- [2] = {
    --    [1] = {
    --        coords = vector4(909.49, -1589.22, 30.51, 92.24),
    --        ["AllowVehicle"] = false,
    --        drawText = '[E] Enter Coke Processing'
    --    },
    --    [2] = {
    --        coords = vector4(1088.81, -3187.57, -38.99, 181.7),
     --       ["AllowVehicle"] = false,
     --       drawText = '[E] Leave'
     --   },
    --},
	--POLICE PRISON
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [4] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}
