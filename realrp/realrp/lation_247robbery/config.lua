Config = {}
Config.Debug = false

-- Target system
-- Available options are: 'ox_target', 'qb-target', 'qtarget' & 'custom'
-- custom' needs to be added to client/functions.lua
Config.Target = 'ox_target'

-- Select your ox_lib progress UI preference
-- Options are 'circle' and 'bar'
Config.ProgressType = 'circle'

-- Do you want to be notified via server console if an update is available?
-- True if yes, false if no
Config.VersionCheck = true

-- Discord Webhook log configs
Config.EnableLogs = false
Config.DiscordWebhookLink = ''
Config.WebhookName = '247 Robbery Logs'
Config.WebhookImage = 'https://i.imgur.com/ILTkWBh.png'
Config.WebhookFooterImage = 'https://i.imgur.com/ILTkWBh.png'

-- General configs
Config.RequirePolice = true -- Set to true if you want to require police in order to rob stores (requires Config.Framework be set to 'esx' or 'qbcore' if true)
Config.PoliceCount = 5  -- If RequirePolice is true, how many must be online to rob stores?
Config.PoliceJobs = { 'police', 'sheriff', 'leo' } -- Add your police job names here
Config.Dispatch = 'ps-dispatch' -- Available options: 'cd_dispatch', 'linden_outlawalert', 'ps-dispatch', 'qs-dispatch' and 'custom'

-- Config.Metadata is for QBCore users only
-- If true, the resource will reward metadata values for 'markedbills' or similar item
-- If false, the resource will reward the item without metadata, and just 1-to-1
Config.Metadata = false

-- Register configs
Config.RegisterRobberyItem = 'lockpick' -- The item name required to rob a cash register
Config.RegisterMinCooldown = 10 -- The minimum cooldown time for robbing registers once one has been robbed
Config.RegisterMaxCooldown = 20 -- The maximum cooldown time for robbing registers once one has been robbed
Config.RegisterDiffuculty = { 'easy', 'easy', 'easy', 'easy', 'medium','medium', 'easy', 'easy', 'easy', 'easy' } -- The skillcheck difficulty, can be 'easy', 'medium' or 'hard' in any order and any quantity
Config.RegisterInput = { 'W', 'A', 'S', 'D' } -- The keys that are used for the skillcheck minigame, can be any keys
Config.RegisterRewardItem = 'markedbills' -- The item that is rewarded upon a successful register robbery
Config.RegisterRewardRandom = true -- Set true if you want to reward a random quantity of the above item, otherwise set false
Config.RegisterRewardQuantity = 1000 -- If RegisterRewardRandom = false then this is the quantity rewarded, if true then can be ignored
Config.RegisterRewardMinQuantity = 3000 -- If RegisterRewardRandom = true then this is the minimum quantity, otherwise can be ignored
Config.RegisterRewardMaxQuantity = 5000 -- If RegisterRewardRandom = true then this is the maximum quantity, otherwise can be ignored
Config.LockpickBreakChance = 25 -- The percentage chance the lockpick breaks when failing to lockpick a register
Config.CodeChance = 10 -- The percentage chance a player receives a code from the register to skip the PC hack requirement

-- Safe configs
Config.SafeMinCooldown = 10 -- The minimum cooldown time for robbing safes once one has been robbed
Config.SafeMaxCooldown = 20 -- The maximum cooldown time for robbing safes once one has been robbed
Config.MaxCodeAttempts = 3 -- The maximum amount of attempts to input the correct code to unlock safe before having to restart robbery
Config.SafeRewardItem = 'markedbills' -- The item that is rewarded upon a successful safe robbery
Config.SafeRewardRandom = true -- Set true if you want to reward a random quantity of the above item, otherwise set false
Config.SafeRewardQuantity = 2000 -- If SafeRewardRandom = false then this is the quantity rewarded, if true then can be ignored
Config.SafeRewardMinQuantity = 2000 -- If SafeRewardRandom = true then this is the minimum quantity, otherwise can be ignored
Config.SafeRewardMaxQuantity = 10000 -- If SafeRewardRandom = true then this is the maximum quantity, otherwise can be ignored

-- Computer configs
Config.MaxHackAttempts = 3 -- The maximum amount of hack attempts to get the safe code before having to restart robbery
Config.EnableQuestionnaire = false -- If true, the player will be asked a sequence of questions instead of the skillcheck below to hack the computer
Config.ComputerDifficulty = { 'easy', 'easy', 'easy', 'medium', 'easy','medium', 'easy', 'easy', 'easy', 'hard' } -- The skillcheck difficulty, can be 'easy', 'medium' or 'hard' in any order and any quantity (If EnableQuestionnaire is true, this can be ignored)
Config.ComputerInput = { 'W', 'A', 'S', 'D' } -- The keys that are used for the skillcheck minigame, can be any keys (If EnableQuestionnaire is true, this can be ignored)

-- Questionnaire configs
Config.Questions = { -- This is only used if Config.EnableQuestionnaire is true
    question1 = {
        question = 'What is a PSU?',
        icon = 'bolt'
    },
    question2 = {
        question = 'What does "HTTPS" stand for?',
        icon = 'lock'
    },
    question3 = {
        question = 'What is a GPU?',
        icon = 'desktop'
    },
    question4 = { -- This question is not typed but rather the player selects from a dropdown, the dropdown options displayed are below
        question = 'What does CTRL + A do?',
        icon = 'keyboard',
        options = {
            option1 = 'Copy text',
            option2 = 'Paste text',
            option3 = 'Select all',
            option4 = 'Print page'
        }
    },
}

-- Customize the answers to the questionnaire here if enabled
Config.Answers = { -- This is only used if Config.EnableQuestionnaire is true
    question1Answer = 'power supply unit',
    question2Answer = 'hypertext transfer protocol secure',
    question3Answer = 'graphics processing unit',
    question4Answer = 3 -- Just the option number of the correct answer from above (option1 = 1, option2 = 2, etc)
}

-- Manage all animations here
Config.Animations = {
    lockpick = {
        animDict = 'missheistfbisetup1',
        animClip = 'hassle_intro_loop_f'
    },
    register = {
        label = 'Grabbing cash..',
        duration = 30000,
        position = 'middle',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true, combat = true },
        anim = { dict = 'anim@heists@ornate_bank@grab_cash', clip = 'grab' },
        prop = { model = 'p_ld_heist_bag_s', bone = 40269, pos = vec3(0.0454, 0.2131, -0.1887), rot = vec3(66.4762, 7.2424, -71.9051) }
    },
    hackPC = {
        animDict = 'anim@heists@prison_heiststation@cop_reactions',
        animClip = 'cop_b_idle'
    },
    safe = {
        label = 'Looting safe..',
        duration = 30000,
        position = 'middle',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true, combat = true },
        anim = { dict = 'anim@heists@ornate_bank@grab_cash', clip = 'grab' },
        prop = { model = 'p_ld_heist_bag_s', bone = 40269, pos = vec3(0.0454, 0.2131, -0.1887), rot = vec3(66.4762, 7.2424, -71.9051) }
    }
}

Config.Locations = {
    Registers = {
        vec3(25.4444, -1345.6597, 29.7458), -- Innocence Blvd
        vec3(-3040.8388, 585.0568, 8.1577), -- Inseno Road
        vec3(-3243.7705, 1001.1959, 13.1240), -- Barbareno Road
        vec3(1729.4234, 6416.1899, 35.2860), -- Great Ocean Highway
        vec3(1698.3787, 4923.2553, 42.2410), -- Grape Seed Main Street
        vec3(1960.1284, 3741.8007, 32.5925), -- Alhambra Drive
        vec3(548.2675, 2669.6276, 42.4053), -- Route 68
        vec3(2677.1232, 3280.9897, 55.4899), -- Senora Freeway
        vec3(2555.6130, 381.6807, 108.8406), -- Palomino Freeway
        vec3(373.8878, 327.6780, 103.8151), -- Clinton Avenue
        vec3(162.2107, 6642.0131, 31.9477), -- Paleto Blvd
        vec3(-1820.5584, 793.9172, 138.2765), -- North Rockford Drive
        vec3(-47.2251, -1757.5423, 29.5983), -- Grove Street
        vec3(-706.7102, -913.5667, 19.3929), -- Ginger Street
        vec3(1164.1452, -322.7899, 69.3824), -- Mirror Park Blvd
        vec3(813.3516, -781.0529, 26.4238) -- Otto's Grotto (uncomment if applicable)
    },
    Computers = {
        vec3(29.5666, -1340.5445, 29.5400), -- Innocence Blvd
        vec3(-3046.9726, 587.3485, 7.9698), -- Inseno Road
        vec3(-3248.5605, 1005.7445, 12.8778), -- Barbareno Road
        vec3(1735.4163, 6419.0268, 35.1044), -- Great Ocean Highway
        vec3(1707.3872, 4921.6953, 42.0722), -- Grape Seed Main Street
        vec3(1961.1553, 3748.4353, 32.4213), -- Alhambra Drive
        vec3(544.8870, 2663.9619, 42.1643), -- Route 68
        vec3(2674.6093, 3287.1359, 55.3793), -- Senora Freeway
        vec3(2550.6496, 386.1718, 108.6351), -- Palomino Freeway
        vec3(379.0795, 331.7546, 103.6381), -- Clinton Avenue
        vec3(168.8938, 6642.8100, 31.7406), -- Paleto Blvd
        vec3(-1828.9333, 797.3793, 138.2624), -- North Rockford Drive
        vec3(-44.7806, -1748.8189, 29.4642), -- Grove Street
        vec3(-710.4782, -905.2836, 19.2711), -- Ginger Street
        vec3(1158.9605, -315.2624, 69.2748), -- Mirror Park Blvd
        vec3(817.5401, -775.8287, 26.2710) -- Otto's Grotto (uncomment if applicable)
    },
    Safes = {
        vec3(31.5539, -1339.2442, 29.9318), -- Innocence Blvd
        vec3(-3048.7597, 588.8417, 8.3087), -- Inseno Road
        vec3(-3249.6362, 1007.7283, 13.2638), -- Barbareno Road
        vec3(1737.7717, 6419.2626, 35.4482), -- Great Ocean Highway
        vec3(1708.1695, 4920.8208, 41.3514), -- Grape Seed Main Street
        vec3(1962.2239, 3750.4909, 32.7439), -- Alhambra Drive
        vec3(543.0894, 2662.4709, 42.5580), -- Route 68
        vec3(2674.5131, 3289.5026, 55.6409), -- Senora Freeway
        vec3(2549.4816, 388.2724, 109.0129), -- Palomino Freeway
        vec3(381.3895, 332.4351, 103.9466), -- Clinton Avenue
        vec3(171.1812, 6642.2641, 32.0916), -- Paleto Blvd
        vec3(-1829.5384, 798.4634, 137.5601), -- North Rockford Drive
        vec3(-43.8009, -1748.0804, 28.7776), -- Grove Street
        vec3(-710.1920, -904.1401, 18.5740), -- Ginger Street
        vec3(1159.0540, -314.1202, 68.5665), -- Mirror Park Blvd
        vec3(819.6384, -774.5783, 26.5440) -- Otto's Grotto (uncomment if applicable)
    }
}