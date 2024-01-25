Config = {}
Config.MaxMembers = 20 -- Max members per gang
Config.Framework = "QBCore" -- QBCore or ESX
Config.TargetSystem = "qtarget" -- qtarget or qb-target, if you are using ox_target leave it as qtarget

--- NPC sell function (only compatible with ox, ps, qb and lj inventory)
Config.Inventory = "ox_inventory" -- Available options: "ox_inventory", "qb-inventory", "lj-inventory" or "ps-inventory"
Config.Items = {
    ['meth1g'] = { -- item the npc can sell
        -- item name, and the min/max amount u will receive per item sold
        itemName = "money", amount = {min = 20, max = 50}
    },
}
Config.Slots = 5 -- amount of slots for gang member stash
Config.Weight = 10000 -- (10000 = 10kg) stash weight
Config.SellTime = 15 -- Every X minutes random npc gang members will sell their items

Config.CheckGang = "gang:check" -- Verify your current gang command
Config.RegisterGangCommand = "gang:register" -- Command to create gangs in game
Config.SetGangBossCommand = "gang:boss" -- Command for add a boss to a gang
Config.RemoveGangMember = "gang:remove" -- Command for removing a gang member/boss
Config.DeleteGang = "gang:wipe" -- Removes the full gang and members
Config.AdminLevel = "admin" -- Admin level required to access commands ^^^
Config.SprayItem = 'spraygang' -- Used to place graffiti
Config.SprayRemover = 'spraygangremover' -- Used to remove graffitis
Config.PlaceSprayTime = 30 -- in seconds
Config.RemoveSprayTime = 200 -- in seconds
Config.SprayTime = 24 -- (hours) Time before the spray item becomes totally unuseable, if the gang doesn't use it that time then GG
Config.ItemLimit = { -- How many of this item can a gang buy per server restart
    [Config.SprayItem] = 30,
    [Config.SprayRemover] = 30,
}
Config.NPC = {
    -- model = NPC model for spray and remover shop https://docs.fivem.net/docs/game-references/ped-models/
    -- coords = x, y, z, heading
    {model = `a_m_m_eastsa_01`, coords = {-297.21, -1332.04, 30.3, 317.49}},
}
Config.SprayPrice = 100 -- Spray base price
Config.SprayMultiplier = 0.05 -- Multiplier for spray price (SprayPrice * SprayMultiplier * Graffitis Count)
Config.SprayRemoverPrice = 500
Config.ShopAccount = "bank" -- Account used to buy spray/spray_remover
Config.SprayDistance = 12 -- How far from wall you can spray / remove a graffiti using remover item
Config.MinMembersForSpray = 1 -- Min members online to place a graffiti
Config.MinMembersForRemover = 1 -- Min members online to remove their graffiti
Config.ShowBlips = "gang:blips" -- Command to show/remove spray blips on map
Config.ZoneRadius = 109.0 -- Gang zone radius created around the spray, applies for both zone and blip.
Config.SprayGivesEXP = 5 -- Gang receives EXP when creating a graffiti or false, each 100 points is 1 level for Gangs, Max 5 levels (500 points)
Config.RemoveSprayGivesEXP = 15 -- Remove other Gang Spray will give you EXP or false
Config.RobAccount = "cash" -- Your money account, used when you rob a gang member
Config.RobMoney = {min = 25, max = 100} -- Amount of money you can rob from a rival gang NPC
Config.Sprays = { -- Only registered gangs will be able to use spray and spray remover + rob NPC members
    ["ballas"] = { -- Gang name
        Grafiti = "spray_ballas", -- Graffiti model name (without .ydr)
        blipColor = 27, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_f_y_ballas_01", "g_m_y_ballaeast_01"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["snowgang"] = { -- Gang name
        Grafiti = "spray_snowgang", -- Graffiti model name (without .ydr)
        blipColor = 50, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["medellincartel"] = { -- Gang name
        Grafiti = "spray_cartel", -- Graffiti model name (without .ydr)
        blipColor = 46, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["pinkgangdrillas"] = { -- Gang name
        Grafiti = "spray_pinkboy", -- Graffiti model name (without .ydr)
        blipColor = 3, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["diablosmc"] = { -- Gang name
        Grafiti = "spray_diablos", -- Graffiti model name (without .ydr)
        blipColor = 2, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["luciferangelsmc"] = { -- Gang name
        Grafiti = "spray_LAMC", -- Graffiti model name (without .ydr)
        blipColor = 85, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["sonsofanarchymc"] = { -- Gang name
        Grafiti = "spray_SOA", -- Graffiti model name (without .ydr)
        blipColor = 0, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["califamily"] = { -- Gang name
        Grafiti = "spray_cali", -- Graffiti model name (without .ydr)
        blipColor = 17, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    ["lamc"] = { -- Gang name
        Grafiti = "spray_lucifer", -- Graffiti model name (without .ydr)
        blipColor = 1, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        ped = {"g_m_m_mexboss_01", "g_m_y_armgoon_02"} -- https://docs.fivem.net/docs/game-references/ped-models/
    },
    
}