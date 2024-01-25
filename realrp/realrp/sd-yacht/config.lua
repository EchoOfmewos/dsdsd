Config = {}

-- General Settings..
Config.YachtDebug = true -- Change to true to enable PolyZone DebugPoly's for testing.

Config.MinimumCops = 0 -- How many on duty police required to start
Config.HasSpawnedOnYacht = false -- If you're testing the resource, please set this to false. If you restart the script, while having this as true, the script won't function. Make SURE to change this back to true for your Live Server

Config.Cooldown = 180 -- minutes 
Config.ResetYachtOnLeave = false -- if true, the yacht and the cooldown (therefore everything else) will reset, if the code hasn't been input yet and nobody is inside the Polyzone whilst the cooldown is active! (This is to avoid, people starting the robbery, then retreating and locking the yacht for everyone else without ever actually starting the 'robbery' section, till the cooldown is finished)
-- if false, the cooldown will count down as normal, regardless if the codes have been input.

-- Items used in our script.
Config.UsedItems = {
    USB = 'default_gateway_override',
    YachtCodes = 'yachtcodes',
    CasinoCodes = 'casinocodes',
    Safe = 'secured_safe',
    ReviveKit = 'revivekit',
}

-- Configuration for cash and gold tray rewards on the yacht heist.
Config.CashoutType = 'dirty' -- Options: 'clean' = distribute unmarked cash; 'dirty' = distribute marked bills with worth (or dirty_money as 1-1 in the case of ESX); 'custom' = distribute custom item as currency.
-- 'custom' mode allows specifying a custom item to be used as currency.
-- For example, setting a dirty money item where each unit is equivalent to $1. (This is already the case in default ESX, so you can use 'dirty' mode instead of 'custom' if you're using base ESX dirty_money)
if Config.CashoutType == 'custom' then
    Config.CustomCash = {
        CashItem = 'markedbills',  -- Example item identifier. Replace with the actual item identifier used on your server.
        -- 'CashQuantity' determines how the cash amount is given:
        -- If false, each item represents 1 unit of currency (e.g., 1 'markedbills' item = $1). The amount of 'CashItem' given will be determined in Config.CashTrays.
        -- If true, the number of Config.CustomCash.CashItem given will equal the value of 'CashAmount' as defined by your server's economy. (this is good if you have a moneywashing script where one 'markedbills' equals to $5000 for ex.)
        CashQuantity = false, CashAmount = {min = 1, max = 2},
    }
end

-- With the below config commented, the script will automatically generate a random sequence of screens to hack each robbery, if you want to set a specific sequence, uncomment the below config and set the sequence as needed.
-- Config.ScreenSequence = {3, 1, 2} -- The sequence of screens that need to be hacked in order to unlock the pressure regulation (eg. 3, 1, 2 = Pull Lever 3, then Lever 1, then Lever 2)

Config.FinalItems = {'casinocodes'}  -- These are the items you will recieve for completing the heist (You can continue the array, however long eg. {'casinocodes', 'phade'} )
Config.PasswordAttempts = 2 -- How many tries you get to enter the final password before failing the heist

Config.AlertPoliceOnEnter = true -- true = will alert police when someone enters the zone (and triggers the cooldown (eg. they're starting the heist)), false = will instead alert Police when the yacht codes have been inputted..

Config.GiveHints = true -- true = gives you hints on what to do, false = have fun finding out how to do the robbery..
Config.EnableExplosion = true -- true = if pressure reaches 0 the yacht will blow up, if false, the yacht will still seize up but not explode.
Config.PressureToExplode = 0 -- The pressure will cause the yacht to explode if it gets to or below this number

-- By how much does the Increase/Decrease pressure targets increase/decrease the pressure. Effectievely regulates, how often the pressure needs to be worked on.
Config.IncreasePressure1 = math.random(3, 5) -- You can change me! (Target1)
Config.IncreasePressure2 = math.random(5, 8) -- You can change me! (Target2)
Config.DecreasePressure1 = math.random(1, 3) -- You can change me! (Target1)
Config.DecreasePressure2 = math.random(5, 8) -- You can change me! (Target2)

Config.DecreaseTime = 3 -- How frequently (in seconds) does the pressure decrease by Config.DecreaseAmount
Config.DecreaseAmount = 1 -- By how much does the pressure decrease per Config.DecreaseTime

Config.ForceAnimation = true -- if true, the player will be forced into an animation, holding certain items

Config.SendToBeachOnSpawn = true -- TRUE = If the player spawns in at the yacht, it will send them to the beach, false = will do nothing (This is to avoid people exploting by logging and then spawning back on the Yacht at a later time)
Config.WashUpOnBeach = true -- Wash up on Beach after completing the heist (true = yes, false = no)
Config.SendBackOnReset = true -- True = You want players to be "wash up on the beach" if they are in the yacht area when the cooldown resets, False = You want nothing to happen to them
Config.UsingReviveKits = true -- If you want to Revivekits to work then set to true, if you don't want them to have a function, set to false..

Config.CheckForItem = true -- Will check that the users entering have at least Config.Items.YachtCodes, if they don't the robbery won't trigger.

Config.GiveAll = false -- If set to true, the player will receive all the items in the 'items' table of the searched cabin (Config.Cabins). If set to false, the player will receive a random item from the 'items' table of the searched cabin.

-- Blip Settings
Config.Blip = { -- Blip Settings
    Enable = true, -- Change to false to disable the Blip
    Location = vector3(-2031.6, -1038.13, 5.88), -- Change the blip coords here
    Sprite = 455,
    Display = 4,
    Scale = 0.6,
    Colour = 1,
    Name = "Secured Yacht", --Change the name to your liking
    Radius = { Enable = true, Size = 100.0 }  -- Add this line to configure the radius
}

-- Guards
Config.EnableGuards = true -- Enable NPC Guards for Yacht

Config.PedParameters = { -- Guard Settings
    Ped = "mp_m_bogdangoon",             -- The Model of the Ped, you'd like to use.
    Health = 200,                        -- The health of guards (both maximum and initial)
    Weapon = {"WEAPON_PISTOL", "WEAPON_SMG", "WEAPON_ASSAULTRIFLE"}, -- List of Weapons that the peds may have. (Randomized)
    MinArmor = 50,                       -- Minimum Amount of Armor the ped can have
    MaxArmor = 100,                      -- Maximum Amount of Armor the ped can have
    Headshots = true,                    -- Determines if guards can suffer critical hits (e.g., headshots)
    CombatAbility = 100,                 -- The combat ability of guards (0-100, 100 being the highest)
    Accuracy = 60,                       -- The accuracy of guards' shots (0-100, 100 being the highest)
    CombatRange = 2,                     -- The combat range of guards (0 = short, 1 = medium, 2 = long)
    CombatMovement = 2,                  -- The combat movement style of guards (0 = calm, 1 = normal, 2 = aggressive)
}

Config.Guards = { 
    {
        coords = {
            vector4(-2018.79, -1034.8, 2.44, 227.68),
            vector4(-2042.43, -1032.15, 2.58, 295.69),
            vector4(-2061.38, -1021.41, 3.06, 224.1),
            vector4(-2046.92, -1029.44, 12.17, 243.86),
            vector4(-2084.52, -1018.06, 12.68, 167.13),
            vector4(-2120.55, -1007.19, 7.97, 204.83),
            vector4(-2079.44, -1019.75, 5.88, 264.04),
            vector4(-2099.52, -1009.07, 5.88, 214.19),
            vector4(-2080.38, -1019.14, 8.95, 258.9),
            vector4(-2057.1, -1031.69, 8.97, 190.27)
        },
    },
}

Config.EnableLooting = true -- Do you want to be able to Loot the Guards.

-- Rewards from Looting Peds
-- Note that 'chance' does not need to add up to 100 across all categories. It's a weight indicating the likelihood of a particular category being chosen relative to others. So, a category with chance 20 is twice as likely to be chosen as a category with chance 10.
-- Only ONE 'isGunReward' can be chosen for each loot. This means that even if the 'itemRange' allows for 4 items, only 3 items will be chosen if all the 'isGunReward' are set to true, as only one gun reward can be given per loot. If you want the users to have a chance to receive multiple weapons from different categories per loot, you need to set 'isGunReward' to false for the additional weapon categories.
-- For example, if 'itemRange' is set to 4, and Pistol, Rare, SMG & Shotgun all have 'isGunReward' set to true, then a max of 3 items will be given (one of which is a weapon). To potentially get 4 items with more than one weapon, at least one of these categories must have 'isGunReward' set to false.
Config.Rewards = {
    weaponChance = 60, -- overall chance of getting any gun-related reward
    itemRange = {min = 2, max = 3}, -- 'itemRange' determines the minimum and maximum number of items a player can get from each loot
    PistolRewards = {
        items = {"weapon_heavypistol", "weapon_pistol", "weapon_pistol_mk2"}, -- 'items' is the list of possible rewards
        chance = 37, -- 'chance' is the percentage probability of getting a reward
        isGunReward = true -- 'isGunReward' indicates whether this category is gun-related. If true, only one item from this category will be chosen per loot, even if 'itemRange' allows for more items.
    },
    RareRewards = {
        items = {"weapon_assaultrifle", "weapon_compactrifle", "weapon_mg"}, -- Items
        chance = 15, -- %
        isGunReward = true -- 'isGunReward' indicates whether this category is gun-related. If true, only one item from this category will be chosen per loot, even if 'itemRange' allows for more items.
    },
    SMGRewards = {
        items = {"weapon_assaultsmg", "weapon_minismg", "weapon_combatpdw"}, -- Items
        chance = 32, -- %
        isGunReward = true -- 'isGunReward' indicates whether this category is gun-related. If true, only one item from this category will be chosen per loot, even if 'itemRange' allows for more items.
    },
    ShotgunRewards = {
        items = {"weapon_sawnoffshotgun", "weapon_pumpshotgun", "weapon_dbshotgun"}, -- Items
        chance = 25, -- %
        isGunReward = true -- 'isGunReward' indicates whether this category is gun-related. If true, only one item from this category will be chosen per loot, even if 'itemRange' allows for more items.
    },
    AmmoRewards = {
        items = {"pistol_ammo", "shotgun_ammo", "rifle_ammo", "smg_ammo"}, -- Items
        chance = 45, -- %
        amount = {min = 1, max = 2} -- specifying amount that can be given if AmmoRewards is picked.
    },
    MedicRewards = {
        items = {"bandage", "revivekit"}, -- Items
        chance = 45, -- %
        amount = {min = 1, max = 2} -- specifying amount that can be given if MedicRewards is picked.
    },
}

-- Hacking Settings for the First Symbol
Config.MainMinigame = 'hacking' -- hacking/mhacking/ps-ui

if Config.MainMinigame == 'ps-ui' then
    Config.MainBlocks = 4 -- The amount of blocks  
    Config.MainTime = 9 -- The amount of time you have to complete the minigame.
elseif Config.MainMinigame == 'hacking' then
    Config.YachtTime = 10 -- How much time do they have to enter the hack?
    Config.YachtBlocks = 4 -- How many different blocks can the hack have?
    Config.YachtRepeat = 2 -- How many times in a row do they need to hack the system?
elseif Config.MainMinigame == 'mhacking' then
    Config.MinChar = "3" -- Characters Minimum
    Config.MaxChar = "5" -- Characters Maximum
    Config.Time = "15" -- Time
end

-- Hacking for the rest of the letters
Config.SecondaryMinigame = 'hacking' -- ps-ui/memorygame/hacking -- Minigames for the (1st if set to ps-ui) 2nd, 3rd and 4th symbol

if Config.SecondaryMinigame == 'ps-ui' then
    Config.Blocks = 4 -- The amount of blocks  
    Config.Time = 9 -- The amount of time you have to complete the minigame.
elseif Config.SecondaryMinigame == 'memorygame' then
    Config.Blocks = "12" -- Number of correct blocks the player needs to click
    Config.Attempts = "3" -- Number of incorrect blocks after which the game will fail
    Config.Show = "6" -- Time in secs for which the right blocks will be shown
    Config.Time = "45" -- Maximum time after timetoshow expires for player to select the right blocks
elseif Config.SecondaryMinigame == 'hacking' then
    Config.YachtTime_Two = 10 -- How much time do they have to enter the hack?
    Config.YachtBlocks_Two = 4 -- How many different blocks can the hack have?
    Config.YachtRepeat_Two = 2 -- How many times in a row do they need to hack the system?
end

Config.UseDataCrack = true -- If you want to use the data crack hack with the screens (to disable pressure regulation)

-- Settings for the Puzzle -- Please don't mess with it, if you don't understand what you're doing..
Config.Puzzle = {
     [1] = {
         screens = false,
     },
     [2] = {
        one = false,
    },
    [3] = {
        two = false,
     },
     [4] = {
        three = false,
     },
     [5] = {
         four = false,
     },
     [6] = {
         pressure = 100,
     },
     [7] = {
         bricked = false,
     },
     [8] = {
        word = math.random(1, 4),
    },
    [9] = {
        button = false,
    },
    [10] = {
        vault = false,
    },
    [11] = {
        case = false,
    },
    [12] = {
        codes = false,
    },
 }

Config.BeachWashupLocation = vector4(-1839.39, -885.44, 1.68, 117.33) -- Where you wash up on the beach after completing the heist

Config.ScreenLocation_One = vector3(-2086.77, -1019.86, 12.53) -- The location of where the 1st screen is
Config.ScreenLocation_Two = vector3(-2086.66, -1017.5, 12.5) -- The location of where the 2nd screen is
Config.ScreenLocation_Three = vector3(-2085.31, -1015.74, 12.27) -- The location of where the 3rd screen is

Config.PuzzleStartLocation = vector3(-2029.52, -1033.62, 2.8) -- The location of where the puzzle gets started
Config.PressureValveLocation = vector3(-2063.6, -1025.01, 2.5) -- The location of where you increase / decrease the pressure
Config.PressureValveLocation_Two = vector3(-2052.57, -1032.55, 3.29) -- The second location of where you increase / decrease the pressure
Config.CheckPressureLocation = vector3(-2068.92, -1023.55, 3.1) -- The location to check the pressure
Config.AttemptPasswordLocation = vector4(-2074.1, -1024.5, 11.62, 251.28) -- The location to input the final code
Config.RedButtonLocation = vector3(-2030.78, -1037.69, 2.8) -- The location to start the engine once the first half of the codes are input
Config.EnterVaultLocation = vector3(-2071.36, -1018.63, 3.24) -- The location to enter the vault once its open
Config.ExitVaultLocation = vector3(-2072.83, -1018.49, 2.62) -- The location to exit the vault once its open
Config.EnterVaultPlayerCoords = vector4(-2072.94, -1018.59, 1.46, 72.14) -- The location to teleport the player to when entering
Config.ExitVaultPlayerCoords = vector4(-2071.04, -1018.72, 1.95, 246.56) -- The location to teleport the player to when exiting
Config.FinalBriefcaseLocation = vector4(-2074.31, -1018.11, 2.0, 72.12) -- The location of the briefcase inside the vault

-- Hacking Locations for Password..
Config.HackLocation_1 = vector3(-2079.38, -1015.88, 5.91)
Config.HackLocation_2 = vector3(-2081.64, -1022.54, 8.38)
Config.HackLocation_3 = vector3(-2072.3, -1019.0, 11.82)
Config.HackLocation_4 = vector3(-2072.3, -1021.66, 2.99)

Config.YachtCodesFirstHalf = "[21-65-31" -- The first half of the codes for yacht heist, or for dynamic version uncomment the one below (will change every time the script)
-- Config.YachtCodesFirstHalf = "[" .. tostring(math.random(10, 99)) .. "-" .. tostring(math.random(10, 99)) .. "-" .. tostring(math.random(10, 99))

Config.CasinoCodesFirstHalf = "[Z892-25B6-14R4-" -- The first half of the codes for yacht heist, or for dynamic version uncomment the one below

Config.ScreenLocationCenter = vector3(-2055.88, -1027.57, 4.28)-- The center of all the screen symbols

Config.ScreenPoints = { -- The locations and text for the 4 screens
    [1] = {
        coords = vector3(-2056.33032, -1028.51733, 3.16481071),
        url = '',
    },
    [2] = {
        coords = vector3(-2056.10645, -1027.82825, 3.16481071),
        url = '',
    },
    [3] = {
        coords = vector3(-2055.88232, -1027.13867, 3.16481071),
        url = '',
    },
    [4] = {
        coords = vector3(-2055.6582, -1026.44885, 3.16481071),
        url = '',
    },
    [5] = {
        coords = vector3(-2056.33032, -1028.51733, 2.66788249),
        url = '',
    },
    [6] = {
        coords = vector3(-2056.10645, -1027.82825, 2.66788249),
        url = '',
    },
    [7] = {
        coords = vector3(-2055.88232, -1027.13867, 2.66788249),
        url = '',
    },
    [8] = {
        coords = vector3(-2055.6582, -1026.44885, 2.66788249),
        url = '',
    },
}

Config.Items = {
    [1] = {
        model = 'prop_champ_01b',
        coords = vector4(-2093.58, -1015.22, 9.09, 63.29),
        item_name = 'expensive_champagne',
        item_label = 'Champagne',
        taken = false,
        networkID = 0,
    },
    [2] = {
        model = 'prop_champ_01b',
        coords = vector4(-2094.71, -1021.18, 8.85, 137.92),
        item_name = 'expensive_champagne',
        item_label = 'Champagne',
        taken = false,
        networkID = 0,
    },
    [3] = {
        model = 'prop_champ_01b',
        coords = vector4(-2097.4, -1017.0, 8.84, 97.6),
        item_name = 'expensive_champagne',
        item_label = 'Champagne',
        taken = false,
        networkID = 0,
    },
    [4] = {
        model = 'prop_champ_01b',
        coords = vector4(-2051.42, -1031.7, 8.90, 213.82),
        item_name = 'expensive_champagne',
        item_label = 'Champagne',
        taken = false,
        networkID = 0,
    },
    [5] = {
        model = 'p_watch_05',
        coords = vector4(-2070.54, -1021.0, 5.77, 161.66),
        item_name = 'rolex',
        item_label = 'Watch',
        taken = false,
        networkID = 0,
    },
    [6] = {
        model = 'p_watch_05',
        coords = vector4(-2050.21, -1032.42, 8.90, 140.04),
        item_name = 'rolex',
        item_label = 'Watch',
        taken = false,
        networkID = 0,
    },
    [7] = {
        model = 'prop_champ_01b',
        coords = vector4(-2085.0, -1021.99, 5.82, 165.17),
        item_name = 'expensive_champagne',
        item_label = 'Champagne',
        taken = false,
        networkID = 0,
    },
    [8] = {
        model = 'prop_ld_int_safe_01', -- The safe is slightly hardcoded
        coords = vector4(-2099.37, -1016.24, 4.8, 160.50),
        taken = false,
        networkID = 0,
    },
}

Config.Cabins = {
    [1] = {
        coords = vector4(-2050.86, -1024.12, 8.8, 335.89),
        isSearched = false,
        isBusy = false,
        animDic = 'veh@break_in@0h@p_m_one@',
        animName = 'low_force_entry_ds',
        ['items'] = {
            [1] = {
                item_name = 'rolex',
                item_amount = 1,
            },
            [2] = {
                item_name = 'rolex',
                item_amount = 2,
            },
        }
    },
    [2] = {
        coords = vector4(-2076.09, -1018.72, 8.95, 252.62),
        isSearched = false,
        isBusy = false,
        animDic = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        animName = 'machinic_loop_mechandplayer',
        ['items'] = {
            [1] = {
                item_name = 'rolex',
                item_amount = 1,
            },
            [2] = {
                item_name = 'rolex',
                item_amount = 2,
            },
        }
    },
    [3] = {
        coords = vector4(-2089.83, -1009.79, 5.76, 70.23),
        isSearched = false,
        isBusy = false,
        animDic = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        animName = 'machinic_loop_mechandplayer',
        ['items'] = {
            [1] = {
                item_name = 'rolex',
                item_amount = 1,
            },
            [2] = {
                item_name = '10kgoldchain',
                item_amount = 2,
            },
        }
    },
    [4] = {
        coords = vector4(-2085.1, -1015.45, 9.07, 250.98),
        isSearched = false,
        isBusy = false,
        animDic = 'veh@break_in@0h@p_m_one@',
        animName = 'low_force_entry_ds',
        ['items'] = {
            [1] = {
                item_name = 'goldbar',
                item_amount = 1,
            },
            [2] = {
                item_name = '10kgoldchain',
                item_amount = 1,
            },
        }
    },
    [5] = {
        coords = vector4(-2071.62, -1024.08, 4.83, 254.6),
        isSearched = false,
        isBusy = false,
        animDic = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        animName = 'machinic_loop_mechandplayer',
        ['items'] = {
            [1] = {
                item_name = '10kgoldchain',
                item_amount = 2,
            },
            [2] = {
                item_name = 'tablet',
                item_amount = 1,
            },
        }
    },
}

Config.CashTrays = {
    [1] = {
        coords = vector4(-2099.54, -1020.7, 5.38, 162.57),
        isSearched = false,
        model = 'h4_prop_h4_cash_stack_01a',
        tabel_model = 'prop_office_desk_01',
        min = 5000,
        max = 10000,
    },
    [2] = {
        coords = vector4(-2087.76, -1024.76, 5.38, 161.87),
        isSearched = false,
        model = 'h4_prop_h4_cash_stack_01a',
        tabel_model = 'prop_office_desk_01',
        min = 5000,
        max = 10000,
    },
    [3] = {
        coords = vector4(-2092.7, -1008.2, 4.88, 341.87),
        isSearched = false,
        model = 'h4_prop_h4_cash_stack_01a',
        tabel_model = 'prop_office_desk_01',
        min = 5000,
        max = 10000,
    },
}


Config.Screens = {
    [1] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077562986551578714/R.jpg',
    },
    [2] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077562986786476092/L.jpg',
    },
    [3] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077562987038113792/G.jpg',
    },
    [4] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077562987293970493/D.jpg',
    },
    [5] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077562987520479293/U.jpg',
    },
    [6] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077562987759534111/E.jpg',
    },
    [7] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563014011699321/O.jpg',
    },
    [8] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563014254956544/N.jpg',
    },
    [9] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563014506618880/P.jpg',
    },
    [10] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563014720536636/F.jpg',
    },
    [11] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563014993154119/W.jpg',
    },
    [12] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563015316119652/M.jpg',
    },
    [13] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563015542620220/I.jpg',
    },
    [14] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077563015756517486/A.jpg',
    },
    ------------ non english characters --------------
    [15] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558053454499840/screen1.jpg',
    },
    [16] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558053756481556/symbol_3.jpg',
    },
    [17] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558054008127499/symbol_2.jpg',
    },
    [18] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558054310137906/symbol_1.jpg',
    },
    [19] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558054612119724/symbol.jpg',
    },
    [20] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558139488055346/symbol_4.jpg',
    },
    [21] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558139844575323/symbol_8.jpg',
    },
    [22] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558140108812298/symbol_7.jpg',
    },
    [23] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558140373061712/symbol_6.jpg',
    },
    [24] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558140607938580/symbol_5.jpg',
    },
    [25] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558167669583953/symbol_11.jpg',
    },
    [26] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558167900278805/symbol_10.jpg',
    },
    [27] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558168130949120/symbol_9.jpg',
    },
    [28] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558168336478238/symbol_14.jpg',
    },
    [29] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558168672030780/symbol_13.jpg',
    },
    [30] = {
        url = 'https://cdn.discordapp.com/attachments/480619688326463488/1077558168919478272/symbol_12.jpg',
    },
}