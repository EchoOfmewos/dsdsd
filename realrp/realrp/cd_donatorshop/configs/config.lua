Config = {}
function L(cd) if Locales[Config.Language][cd] then return Locales[Config.Language][cd] else print('Locale is nil ('..cd..')') end end
--███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
--██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
--█████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
--██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
--██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
--╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


Config.Database = 'oxmysql' --[ 'mysql' / 'ghmattimysql' / 'oxmysql' ] Choose your sql database script.
Config.Framework = 'qbcore' ---[ 'esx' / 'qbcore' / 'other' ] Choose your framework.
Config.Language = 'EN' --[ 'EN' / 'CZ' / 'ES' / 'FI' / 'FR' / 'NL' / 'SE' / 'SK' ] You can add your own locales to the Locales.lua. But make sure to change the Config.Language to match it.

Config.FrameworkTriggers = { --You can change the esx/qbcore events (IF NEEDED).
    main = 'QBCore:GetObject',   --ESX = 'esx:getSharedObject'   QBCORE = 'QBCore:GetObject'
    load = 'QBCore:Client:OnPlayerLoaded',      --ESX = 'esx:playerLoaded'      QBCORE = 'QBCore:Client:OnPlayerLoaded'
    job = 'QBCore:Client:OnJobUpdate',             --ESX = 'esx:setJob'            QBCORE = 'QBCore:Client:OnJobUpdate'
	resource_name = 'qb-core'   --ESX = 'es_extended'           QBCORE = 'qb-core'
}

Config.NotificationType = { --[ 'esx' / 'qbcore' / 'mythic_old' / 'mythic_new' / 'chat' / 'other' ] Choose your notification script.
    server = 'qbcore',
    client = 'qbcore' 
}


--██╗███╗   ███╗██████╗  ██████╗ ██████╗ ████████╗ █████╗ ███╗   ██╗████████╗
--██║████╗ ████║██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔══██╗████╗  ██║╚══██╔══╝
--██║██╔████╔██║██████╔╝██║   ██║██████╔╝   ██║   ███████║██╔██╗ ██║   ██║   
--██║██║╚██╔╝██║██╔═══╝ ██║   ██║██╔══██╗   ██║   ██╔══██║██║╚██╗██║   ██║   
--██║██║ ╚═╝ ██║██║     ╚██████╔╝██║  ██║   ██║   ██║  ██║██║ ╚████║   ██║   
--╚═╝╚═╝     ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝


Config.IdentifierType = 'license' --[ 'steam' / 'license' ] Choose the identifier type that your server uses.
Config.VehicleDatabasePlateType = 'without_spaces' --[ 'with_spaces' / 'without_spaces'] CHOOSE CAREFULLY! Look at your vehicles database table, do your vehicle plates get saved WITH or WITHOUT spaces?
Config.DebugPrints = false --To enable debug prints.


--███╗   ███╗ █████╗ ██╗███╗   ██╗
--████╗ ████║██╔══██╗██║████╗  ██║
--██╔████╔██║███████║██║██╔██╗ ██║
--██║╚██╔╝██║██╔══██║██║██║╚██╗██║
--██║ ╚═╝ ██║██║  ██║██║██║ ╚████║
--╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝


Config.PurchaseCommand = 'tebex_purchase' --DONT CHANGE IF YOU DON'T KNOW WHAT YOU ARE DOING. This is the command for the tebex transactions.
Config.BlacklistedWords = {'changeme', 'changeme'} --(MUST BE LOWER CASE!) If a word from a plate change/character name change contains a blacklisted word the transaction will be canceled.
Config.cd_multicharacter_maxslots = 5 --If you are using the using the Codesign Multicharacter script, what is the maximum amount of character slots you will allow donators to have?


-- ██████╗██╗  ██╗ █████╗ ████████╗     ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗
--██╔════╝██║  ██║██╔══██╗╚══██╔══╝    ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝
--██║     ███████║███████║   ██║       ██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗
--██║     ██╔══██║██╔══██║   ██║       ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║
--╚██████╗██║  ██║██║  ██║   ██║       ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║
-- ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝        ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝


Config.RedeemCommand = 'redeem' --The command players who have purchased items on tebex can use to redeem their purchase in game.
Config.StaffCommands = {
    Add_Balance = 'add_balance', --The staff command to manually add coins to a players balance in the database.
    Remove_Balance = 'remove_balance', --The staff command to manually remove coins from a players balance in the database.

    Perms = { --You decide which permission groups can use the staff commands to add/remove coins ^.
        ['esx'] = {'superadmin', 'admin'},
        ['qbcore'] = {'god', 'admin'},
        ['other'] = {'change_me', 'change_me'}
    }
}


--████████╗███████╗██████╗ ███████╗██╗  ██╗    ██╗    ██╗███████╗██████╗ ███████╗██╗████████╗███████╗    ██████╗ ██████╗  ██████╗ ██████╗ ██╗   ██╗ ██████╗████████╗███████╗
--╚══██╔══╝██╔════╝██╔══██╗██╔════╝╚██╗██╔╝    ██║    ██║██╔════╝██╔══██╗██╔════╝██║╚══██╔══╝██╔════╝    ██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██║   ██║██╔════╝╚══██╔══╝██╔════╝
--   ██║   █████╗  ██████╔╝█████╗   ╚███╔╝     ██║ █╗ ██║█████╗  ██████╔╝███████╗██║   ██║   █████╗      ██████╔╝██████╔╝██║   ██║██║  ██║██║   ██║██║        ██║   ███████╗
--   ██║   ██╔══╝  ██╔══██╗██╔══╝   ██╔██╗     ██║███╗██║██╔══╝  ██╔══██╗╚════██║██║   ██║   ██╔══╝      ██╔═══╝ ██╔══██╗██║   ██║██║  ██║██║   ██║██║        ██║   ╚════██║
--   ██║   ███████╗██████╔╝███████╗██╔╝ ██╗    ╚███╔███╔╝███████╗██████╔╝███████║██║   ██║   ███████╗    ██║     ██║  ██║╚██████╔╝██████╔╝╚██████╔╝╚██████╗   ██║   ███████║
--   ╚═╝   ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝     ╚══╝╚══╝ ╚══════╝╚═════╝ ╚══════╝╚═╝   ╚═╝   ╚══════╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝   ╚═╝   ╚══════╝


Config.TebexListings = { --These are the products that you will list for sale on your tebex website.
[1] = {
    ProductName = '10 Coins', --You can change this, but this ProductName must be identical to the name of the product on your tebex website.
    Amount = 10, --This is the amount of coins the player will recieve when he purchases this product (you can change this).
},

[2] = {
    ProductName = '30 Coins',
    Amount = 30,
},

[3] = {
    ProductName = '50 Coins',
    Amount = 50,
},

[4] = {
    ProductName = '70 Coins',
    Amount = 70,
},
[5] = {
    ProductName = '100 Coins',
    Amount = 100,
},
[6] = {
    ProductName = '200 Coins',
    Amount = 200,
},
[7] = {
    ProductName = '350 Coins',
    Amount = 350,
},
[8] = {
    ProductName = '500 Coins',
    Amount = 500,
},

-- [5] = {
--     ProductName = 'ADD_MORE_PRODUCTS_HERE',
--     Amount = 50,
-- },
}


--███╗   ███╗ █████╗ ██╗███╗   ██╗    ██╗      ██████╗  ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
--████╗ ████║██╔══██╗██║████╗  ██║    ██║     ██╔═══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--██╔████╔██║███████║██║██╔██╗ ██║    ██║     ██║   ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
--██║╚██╔╝██║██╔══██║██║██║╚██╗██║    ██║     ██║   ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
--██║ ╚═╝ ██║██║  ██║██║██║ ╚████║    ███████╗╚██████╔╝╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║███████║
--╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝    ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝


Config.Locations = {
    [1] = {x = -1394.81, y = -3265.03, z = 13.93, h = 339.85,   Distance = 10.0, EventName = 'cd_donatorshop:Enter', Text = L('enter')},--The entrance to the donator shop.
    [2] = {x = -1266.89, y = -2965.47, z = -48.48, h = 179.08,  Distance = 10.0, EventName = 'cd_donatorshop:Exit', Text = L('exit')},--The exit to the donator shop.
    [3] = {x = -1246.55, y = -2984.19, z = -48.49, h = 0.0,     Distance = 10.0, EventName = 'cd_donatorshop:Menu', Text = L('menu')},--The donator shop main shop UI.
}


--██╗   ██╗███████╗██╗  ██╗██╗ ██████╗██╗     ███████╗███████╗
--██║   ██║██╔════╝██║  ██║██║██╔════╝██║     ██╔════╝██╔════╝
--██║   ██║█████╗  ███████║██║██║     ██║     █████╗  ███████╗
--╚██╗ ██╔╝██╔══╝  ██╔══██║██║██║     ██║     ██╔══╝  ╚════██║
-- ╚████╔╝ ███████╗██║  ██║██║╚██████╗███████╗███████╗███████║
--  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝ ╚═════╝╚══════╝╚══════╝╚══════╝


Config.ManuallyPlaceVehicles = true --Do you want to manually enter the coords for each vehicles location? (If disabled the script will automatically choose the location of each vehicle, circled around the Config.AutomaticStartCoords below).
Config.AutomaticStartCoords = vector4(-1266.83, -3013.54, -48.49, 180.0) --(THIS WILL ONLY BE USED IF Config.ManuallyPlaceVehicles ABOVE^^ IS DISABLED). You can change the coords for where the vehicles will spawn. This is the centre, the vehicles will spawn around these coords.

Config.VehiclePurchaseCoords = vector4(-1394.81, -3265.03, 13.93, 339.85) --This is the location where your vehicle will spawn after you make a purchase.

Config.VehicleTest = {
    ENABLE = true, --Do you want players to be able to test drive vehicles?
    check_balance = false, --Do you want to allow only players who can afford to purchase a vehicle to test drive?
    spawn_max = true, --Do you want the vehicles to spawn with max performance upgrades?
    timer = 30 --(in seconds) How long does the player have to test drive the vehicle?
}

Config.Vehicles = {
    --Cost = The amount of donator coins the vehicle will cost.
    --Model = The spawn name of a vehicle.
    --Description = The description displayed on the vehicle UI.
    --Coords = (THIS WILL ONLY BE USED IF Config.ManuallyPlaceVehicles ABOVE^^ IS ENABLED). You can manually set the location of each vehicle.
    [1] = {Cost = 40, Model = 'mgt', Name = 'Mustang GT', Description = 'Im a Mustang and im fast', Coords = vector4(-1277.9989013672, -2979.6635742188, -48.489730834961, 359.55899047852)},
    [2] = {Cost = 50, Model = 'avkarma', Name = 'Lamborghini AV Karma', Description = 'Im a Lambo', Coords = vector4(-1277.9144287109, -2985.7517089844, -48.489723205566, 1.1713718175888)},
    [3] = {Cost = 60, Model = 'rmodsvj', Name = 'Lamborghini SVJ', Description = 'Im a Lambo', Coords = vector4(-1273.1472167969, -2979.7080078125, -48.489723205566, 2.6004974842072)},
    [4] = {Cost = 20, Model = 'r33vspectr', Name = 'Nissan R33', Description = 'P', Coords = vector4(-1272.9615478516, -2985.8283691406, -48.489757537842, 2.7830979824066)},
    [5] = {Cost = 40, Model = 'ram2500', Name = 'Dodge Ram 2500', Description ='I SOUND SO GOOD', Coords = vector4(-1269.3125, -2979.6027832031, -49.097007751465, 359.66766357422)},
	[6] = {Cost = 50, Model = 'tylersgtz34', Name = 'Nissan GTR R34', Description = 'Japanese Made', Coords = vector4(-1265.4169921875, -2980.4262695313, -48.489654541016, 1.2346298694611)},
	[7] = {Cost = 30, Model = 'rd', Name = 'Yamaha RD', Description = 'Animated Light Bike', Coords = vector4(0, 0, 0, 0)},
	--[8] = {Cost = 30, Model = 'claw', Name = 'Harley Davidson Claw', Description = 'Harley Livery', Coords = vector4(0, 0, 0, 0)},
	[8] = {Cost = 60, Model = '720gtr', Name = 'Mclaren GTR 720', Description = 'DDE Livery/Spoiler', Coords = vector4(-1269.1994628906, -2985.8212890625, -49.096710205078, 359.81704711914)},
	[9] = {Cost = 60, Model = 'agerars', Name = 'Agera RS', Description = 'Agera RS', Coords = vector4(-1265.2980957031, -2986.4907226563, -49.096584320068, 1.5343062877655)},
    [10] = {Cost = 40, Model = 'drejailbreak2', Name = 'Charger Hellcat', Description = 'Dodge Charger', Coords = vector4(-1261.4820556641, -2980.2602539063, -49.096698760986, 0.16371685266495)},
    [11] = {Cost = 50, Model = 'jeepwc', Name = 'Jeep Rubicon (Animated)', Description = 'Jeep', Coords = vector4(-1261.3073730469, -2986.2446289063, -49.096828460693, 0.091548949480057)},
    [12] = {Cost = 40, Model = 'rs6', Name = 'Audi RS6 (CUSTOMIZABLE)', Description = 'Audi', Coords = vector4(-1257.7320556641, -2986.0622558594, -49.096790313721, 359.96875)},
    --[14] = {Cost = 30, Model = 'm3f81', Name = 'BMW M3F81', Description = 'BMW', Coords = vector4(0, 0, 0, 0)},
    --[15] = {Cost = 40, Model = 'tundra', Name = 'Toyota Tundra Velociraptor', Description = 'Toyota', Coords = vector4(0, 0, 0, 0)},
    [13] = {Cost = 40, Model = 'tc63s', Name = 'Mercedes Benz GT63S', Description = 'Mercedes (ENGINE SOUND ILL WORK TM)', Coords = vector4(-1257.4010009766, -2979.8811035156, -49.096660614014, 359.00372314453)},
    [14] = {Cost = 40, Model = '300sghoul', Name = 'Ghoul Hellephant 300', Description = 'Chrysler', Coords = vector4(-1253.9298095703, -2986.0148925781, -49.097194671631, 0.83879601955414)},
    [15] = {Cost = 40, Model = 'daytona', Name = 'Daytona Charger (Dynaco)', Description = 'CUSTOM ENGINE SOUND', Coords = vector4(-1253.6857910156, -2979.82421875, -49.097038269043, 0.90751653909683)},
    [16] = {Cost = 40, Model = 'hellephant', Name = 'Hellephant Challenger', Description = 'CUSTOM ENGINE SOUND', Coords = vector4(-1277.7955322266, -2993.05859375, -49.096946716309, 359.88754272461)},
    [17] = {Cost = 40, Model = '21camaro', Name = '2021 Camaro (Animated Engine)', Description = '21 Camaro', Coords = vector4(-1272.6376953125, -2992.9621582031, -49.096836090088, 2.5017659664154)},
    [18] = {Cost = 30, Model = 'softail1', Name = 'Softail1', Description = 'Softail1', Coords = vector4(-1275.4049072266, -3012.2709960938, -49.097415924072, 358.65069580078)},
    [19] = {Cost = 30, Model = 'softail2', Name = 'Softail2', Description = 'Softail2', Coords = vector4(-1271.6722412109, -3012.2680664063, -49.097351074219, 358.24230957031)},
    [20] = {Cost = 25, Model = 'hvrod', Name = 'hvrod', Description = 'hvrod', Coords = vector4(-1268.8148193359, -3012.6843261719, -48.490238189697, 357.49182128906)},
    [21] = {Cost = 30, Model = 'acknodlow', Name = 'acknodlow', Description = 'acknodlow', Coords = vector4(-1266.3984375, -3012.9975585938, -48.490207672119, 356.73233032227)},
    [22] = {Cost = 30, Model = 'claw', Name = 'Claw', Description = 'Claw', Coords = vector4(-1263.8624267578, -3013.2712402344, -48.490207672119, 354.28042602539)},
    [23] = {Cost = 30, Model = 'Yamr1crone', Name = 'YahamaR1', Description = 'YahamaR1', Coords = vector4(-1260.8479003906, -3013.3759765625, -48.490234375, 358.09442138672)},
    [24] = {Cost = 30, Model = 'ESDUCATI2K22', Name = 'Esducati2k22', Description = 'Esducati2k22', Coords = vector4(-1258.0748291016, -3013.6137695313, -48.490200042725, 1.2083828449249)},
    [25] = {Cost = 60, Model = 'cc720szacoe', Name = 'Mclaren720 WideBody', Description = 'Mclaren720 WideBody', Coords = vector4(-1269.1369628906, -2993.1411132813, -48.489810943604, 358.98815917969)},
    [26] = {Cost = 50, Model = 'fab675lt', Name = 'Mclaren 765 LT', Description = 'Mclaren 765 LT', Coords = vector4(-1265.1025390625, -2992.6369628906, -48.489868164063, 0.048369970172644)},
    [27] = {Cost = 40, Model = 'bcfabjeep', Name = 'Fab Jeep', Description = 'Fab Jeep', Coords = vector4(-1261.0014648438, -2992.8720703125, -48.489898681641, 1.8178263902664)},
    [28] = {Cost = 40, Model = 'GODzCUDA', Name = 'SRT Cuda', Description = 'SRT Cuda', Coords = vector4(-1257.5866699219, -2992.75, -48.489891052246, 1.5844827890396)},
    [29] = {Cost = 50, Model = 'pistaspider19', Name = '2019 Ferrari Spider', Description = '2019 Ferrari Spider', Coords = vector4(-1254.0263671875, -2992.7687988281, -48.489902496338, 352.55285644531)},
    [30] = {Cost = 50, Model = 'm8f91', Name = 'BMW M8F91', Description = 'BMW M8F91', Coords = vector4(-1277.8853759766, -2999.8454589844, -48.489803314209, 357.12796020508)},
    [31] = {Cost = 50, Model = 'mflyingspur', Name = 'Bentley Spur', Description = '1 Mechanic Extra Needed', Coords = vector4(-1272.4240722656, -3000.3244628906, -48.489791870117, 357.21249389648)},
    [32] = {Cost = 40, Model = 'mansoryphantom8', Name = 'Rolls Royce Phantom', Description = '1 Mechanic Extra Needed', Coords = vector4(-1269.3312988281, -2999.7158203125, -48.489791870117, 2.6705932617188)},
    [33] = {Cost = 50, Model = 'rr70bosswide', Name = '1970 Ford Mustang Boss', Description = '1970 Ford Mustang Boss', Coords = vector4(-1260.5920410156, -2999.4116210938, -48.489780426025, 4.0883331298828)},
    [34] = {Cost = 40, Model = 'teslapd', Name = 'Tesla PD', Description = 'Tesla PD', Coords = vector4(-1255.5592041016, -3000.2924804688, -48.48983001709, 18.132478713989)},
    [35] = {Cost = 40, Model = 'velociraptor19', Name = 'Ford Velociraptor 2019', Description = 'Ford Truck', Coords = vector4(-1277.8572998047, -3006.9938964844, -48.489933013916, 0.41432881355286)},
    [36] = {Cost = 30, Model = 'claw', Name = 'Harley Davidson Claw', Description = 'Harley Livery', Coords = vector4(-1255.1394042969, -3013.9421386719, -48.490207672119, 359.91363525391)},
    [37] = {Cost = 40, Model = 'f350punisher', Name = 'F350 Punisher', Description = 'F350 Punisher (Animated Lights)', Coords = vector4(-1272.6510009766, -3006.875, -48.490051269531, 356.51385498047)},
    [38] = {Cost = 40, Model = '204sWRX', Name = '2004 WRX', Description = '2004 WRX', Coords = vector4(-1269.1343994141, -3006.5632324219, -48.490169525146, 1.9173345565796)},
    [39] = {Cost = 40, Model = 'q60blackshycade', Name = 'Infiniti Q60', Description = 'Infiniti Q60 (ANIMATED LIGHTS)', Coords = vector4(-1265.2818603516, -3006.4470214844, -49.034297943115, 358.07186889648)},
    [40] = {Cost = 40, Model = 'm5prime', Name = 'BMW M5', Description = 'BMW M5 (ANIMATED LIGHTS)', Coords = vector4(-1260.6599121094, -3006.380859375, -48.490203857422, 358.58837890625)},
    [41] = {Cost = 30, Model = 'rd', Name = 'RD bike', Description = 'RD Bike (ANIMATED LIGHTS)', Coords = vector4(-1266.2934570313, -3018.3952636719, -48.490283966064, 358.27133178711)},
}    

--██╗███╗   ██╗     ██████╗  █████╗ ███╗   ███╗███████╗    ██████╗ ██████╗  ██████╗ ██████╗ ██╗   ██╗ ██████╗████████╗    ███╗   ███╗███████╗███╗   ██╗██╗   ██╗
--██║████╗  ██║    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██║   ██║██╔════╝╚══██╔══╝    ████╗ ████║██╔════╝████╗  ██║██║   ██║
--██║██╔██╗ ██║    ██║  ███╗███████║██╔████╔██║█████╗      ██████╔╝██████╔╝██║   ██║██║  ██║██║   ██║██║        ██║       ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
--██║██║╚██╗██║    ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██╔═══╝ ██╔══██╗██║   ██║██║  ██║██║   ██║██║        ██║       ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
--██║██║ ╚████║    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ██║     ██║  ██║╚██████╔╝██████╔╝╚██████╔╝╚██████╗   ██║       ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
--╚═╝╚═╝  ╚═══╝     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝   ╚═╝       ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ 


Config.Prop = { --The prop to mark the location where players can access the main shop UI.
    Model = 'xm_prop_base_staff_desk_01',
    Coords = vector4(-1242.32, -2988.77, -49.49, 180.0),
}

Config.Shop = {
    [1] = {
        Title = 'Plate Change',
        Description = 'Buy a custom plate',
        Input_Type = 'text',
        Input_Description = 'Enter a plate between 1-8 characters',
        Pattern = '[^a-zA-Z0-9]',
        MaxLength = 8,
        Image = 'plate_change.png',
        Cost = 10,
        RewardType = 'plate_change',
        Quantity = nil,
        ItemName = nil,
    },

}


--[[
VEHICLE PLATE CHANGE EXAMPLE.

    [1] = {
        Title = 'Plate Change',                                             -- Title - THIS MUST BE UNIQUE.
        Description = 'Buy a custom plate',                                 -- Description.
        Input_Type = 'text',                                                -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = '8 characters long (including whitespaces)',    -- The help text inside the input box.
        Pattern = '[^a-zA-Z0-9]',                                           -- '[^a-zA-Z0-9]' = Allows both text and numbers with no spaces. / '[^0-9\\-]' = Allows numbers only. / '[^a-zA-Z\\s]' = Allows text with spaces.
        MaxLength = 8,                                                      -- The max amount of characters allowed.
        Image = 'license-plate.png',                                        -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 10,                                                          -- The cost to purchase 1 of these.
        RewardType = 'plate_change',                                        -- DONT change this.
        Quantity = nil,                                                     -- DONT change this.
        ItemName = nil,                                                     -- DONT change this.
    },


PHONE NUMBER CHANGE EXAMPLE.

    [2] = {
        Title = 'Phone Number',                                             -- Title - THIS MUST BE UNIQUE.
        Description = 'Buy a custom phone number',                          -- Description.
        Input_Type = 'text',                                                -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = 'Enter a number between 1-8 characters',        -- The help text inside the input box.
        MaxLength = 8,                                                      -- The max amount of characters allowed.
        Pattern = '[^0-9\\-]',                                              -- '[^a-zA-Z0-9]' = Allows both text and numbers with no spaces. / '[^0-9\\-]' = Allows numbers only. / '[^a-zA-Z\\s]' = Allows text with spaces.
        Image = 'phone_change.png',                                         -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 15,                                                          -- The cost to purchase 1 of these.
        RewardType = 'phone_number',                                        -- DONT change this.
        Quantity = nil,                                                     -- DONT change this.
        ItemName = nil,                                                     -- DONT change this.
    },


GIVE WEAPON EXAMPLE.

    [3] = {
        Title = 'Assault Rifle',                                            -- Title - THIS MUST BE UNIQUE.
        Description = 'Carbine Rifle with 250 rounds of ammunition',        -- Description.
        Input_Type = 'number',                                              -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = '1 = x1 weapon with x250 ammo',                 -- The help text inside the input box.
        MaxLength = nil,                                                    -- DONT change this.
        Pattern = nil,                                                      -- DONT change this.
        Image = 'weapon.png',                                               -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 5,                                                           -- The cost to purchase 1 of these.
        RewardType = 'weapon',                                              -- DONT change this.
        Quantity = 250,                                                     -- If the RewardType is 'weapon', then this is the amount of ammo to add. (players will only recieve 1 weapon).
        ItemName = 'WEAPON_CARBNIERIFLE',                                   -- The spawn name of this weapon.
    },


GIVE MONEY EXAMPLE.

    [4] = {
        Title = 'Money',                                                    -- Title - THIS MUST BE UNIQUE.
        Description = 'A briefcase with $10,000 cash inside',               -- Description.
        Input_Type = 'number',                                              -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = '1 = $10000',                                   -- The help text inside the input box.
        MaxLength = nil,                                                    -- DONT change this.
        Pattern = nil,                                                      -- DONT change this.
        Image = 'money.png',                                                -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 5,                                                           -- The cost to purchase 1 of these.
        RewardType = 'money',                                               -- DONT change this.
        Quantity = 10000,                                                   -- If the RewardType is 'money', then this is the amount of money to add. (10000 would give the player $10,000 to their bank).
        ItemName = nil,                                                     -- DONT change this.
    },


GIVE ITEM EXAMPLE.

    [5] = {
        Title = 'Gold Bars',                                                -- Title - THIS MUST BE UNIQUE.
        Description = 'x5 24 carat gold bars',                              -- Description.
        Input_Type = 'number',                                              -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = '1 = x5 items',                                 -- The help text inside the input box.
        MaxLength = nil,                                                    -- DONT change this.
        Pattern = nil,                                                      -- DONT change this.
        Image = 'goldbar.png',                                              -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 5,                                                           -- The cost to purchase 1 of these.
        RewardType = 'item',                                                -- DONT change this.
        Quantity = 5,                                                       -- If the RewardType is 'item', then this is the amount of items add. (1 would give the player x1 item).
        ItemName = 'water',                                                 -- The spawn name of this item.
    },

CHANGE CHARACTER NAME EXAMPLE.
    [6] = {
        Title = 'Character Name',                                           -- Title - THIS MUST BE UNIQUE.
        Description = 'Change your character name',                         -- Description.
        Input_Type = 'text',                                                -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = 'eg., John Smith',                              -- The help text inside the input box.
        MaxLength = nil,                                                    -- DONT change this.
        Pattern = '[^a-zA-Z\\s]',                                           -- '[^a-zA-Z0-9]' = Allows both text and numbers with no spaces. / '[^0-9\\-]' = Allows numbers only. / '[^a-zA-Z\\s]' = Allows text with spaces.
        Image = 'character_name.png',                                       -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 15,                                                          -- The cost to purchase 1 of these.
        RewardType = 'character_name',                                      -- DONT change this.
        Quantity = nil,                                                     -- DONT change this.
        ItemName = nil,                                                     -- DONT change this.
    },

FULL VEHICLE PACKS EXAMPLE. (by "packs" we mean you can sell multiple vehicles in this 1 product)
    [7] = {
        Title = 'Vehicle Pack',                                             -- Title - THIS MUST BE UNIQUE.
        Description = 'Contains x1 adder, x1 golf cart and x1 jetski',      -- Description.
        Input_Type = 'number',                                              -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = '1 = x1 FULL car pack',                         -- The help text inside the input box.
        MaxLength = 1,                                                      -- The max amount of characters allowed.
        Pattern = '[^0-9\\-]',                                              -- '[^a-zA-Z0-9]' = Allows both text and numbers with no spaces. / '[^0-9\\-]' = Allows numbers only. / '[^a-zA-Z\\s]' = Allows text with spaces.
        Image = 'vehicle_pack.png',                                         -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 50,                                                          -- The cost to purchase 1 of these.
        RewardType = 'vehicle_pack',                                        -- DONT change this.
        Quantity = nil,                                                     -- DONT change this.
        ItemName = {'adder', 'seashark', 'caddy'},                          -- Add the spawn name of the vehicles included in this vehicle pack to this table. Use the same format as the example.
    },


ADD CHARACTER SLOT EXAMPLE. (this comes pre-configured to work with cd_multicharacter. It will not work on other multichar scripts unless you edit the code, and we can not offer support for that, so we recommend you remove this from your shop).

    [8] = {
        Title = 'Character Slot',                                           -- Title - THIS MUST BE UNIQUE.
        Description = 'Add 1 extra character slot',                         -- Description.
        Input_Type = 'number',                                              -- [ 'text' / 'number' ] DONT change if you dont know what you are doing - https://www.w3schools.com/html/html_form_input_types.asp.
        Input_Description = '1 = x1 extra character slot',                  -- The help text inside the input box.
        MaxLength = nil,                                                    -- DONT change this.
        Pattern = nil,                                                      -- DONT change this.
        Image = 'character_slot.png',                                       -- The display image. (must be a .png and 512 x 512 size) 
        Cost = 10,                                                          -- The cost to purchase 1 of these.
        RewardType = 'character_slot',                                      -- DONT change this.
        Quantity = nil,                                                     -- DONT change this.
        ItemName = nil,                                                     -- DONT change this.
    },
]]


-- ██████╗ ████████╗██╗  ██╗███████╗██████╗ 
--██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗
--██║   ██║   ██║   ███████║█████╗  ██████╔╝
--██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
--╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
-- ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝


function Round(cd) return math.floor(cd+0.5) end
function Trim(cd) return cd:gsub('%s+', '') end

if Config.Framework == 'esx' then
    Config.FrameworkSQLtables = {
        vehicle_table = 'owned_vehicles',
        vehicle_identifier = 'owner',
        vehicle_props = 'vehicle',
        users_table = 'users',
        users_identifier = 'identifier',
    }
elseif Config.Framework == 'qbcore' then
    Config.FrameworkSQLtables = {
        vehicle_table = 'player_vehicles',
        vehicle_identifier = 'citizenid',
        vehicle_props = 'mods',
        users_table = 'players',
        users_identifier = 'citizenid',
    }
end