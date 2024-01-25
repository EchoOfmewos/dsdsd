Config = Config or {}

Config.CoreName = 'qb-core'
Config.TargetName = 'qb-target' -- qb-target name (ox_target convert itself so keep it with qb-target if using ox_target)
Config.InventoryName = 'ox_inventory'
Config.Fuel = 'cdn-fuel'
Config.ImagesDirectory = "nui://ox_inventory/web/images/"
Config.Debug = false

Config.Knife = 'weapon_knife'
Config.Weapon = 'weapon_sniperrifle'
Config.UseRifleCrosshair = true
Config.BlockShootingPlayers = true

Config.VehiclePrice = 150

Config.UseMinigame = false

Config.HuntingShops = {
    [1] = {
        BlipName = 'Hunting Store',
        BlipSprite = 141,
        BlipDisplay = 4,
        BlipScale = 0.8,
        BlipColor = 10,
        Coords = vector4(-679.42, 5834.03, 17.33, 129.15),
        SpawnCoords = vector4(-687.61, 5821.66, 17.33, 69.0),
        PedAnimation = 'WORLD_HUMAN_STAND_MOBILE_FACILITY',
        Options = {
            ['shop'] = true,
            ['vehicle'] = true,
            ['sell'] = true,
        },
        ShopItems = { -- Shop Items
            { name = 'weapon_sniperrifle', price = 1000 },
            { name = 'ammo-sniper', price = 10 },
            { name = 'weapon_knife', price = 200 },
            { name = 'hunting_stove', price = 500 },
        },
        SellItems = { -- Items to sell
            { name = 'hunting_deer_skin', price = 70 },
            { name = 'hunting_mtlion_skin', price = 90 },
            { name = 'hunting_boar_skin', price = 70 },
            { name = 'hunting_coyote_skin', price = 100 },
            { name = 'hunting_chickenhawk_skin', price = 70 },
            { name = 'hunting_rabbit_skin', price = 70 },
            { name = 'hunting_crow_skin', price = 70 },
            { name = 'hunting_pigeon_skin', price = 70 },
            { name = 'hunting_seagull_skin', price = 70 },
            { name = 'hunting_deer_meat', price = 30 },
            { name = 'hunting_mtlion_meat', price = 30 },
            { name = 'hunting_boar_meat', price = 30 },
            { name = 'hunting_coyote_meat', price = 30 },
            { name = 'hunting_chickenhawk_meat', price = 30 },
            { name = 'hunting_rabbit_meat', price = 30 },
            { name = 'hunting_crow_meat', price = 30 },
            { name = 'hunting_pigeon_meat', price = 30 },
            { name = 'hunting_seagull_meat', price = 30 },
        }
    },
}

Config.HuntingZones = {
    [1] = {
        Name = "Legal Hunting Zone",
        Coords = vec3(-746.44, 4523.43, 87.29),
        Sprite = 141,
        Color = 4,
        Range = 600.0,
        Alpha = 40,
        SpawnedAnimalsAmount = math.random(50, 60),
        Animals = {
            [1] = 'a_c_deer',
            [2] = 'a_c_boar',
            [3] = 'a_c_rabbit_01'
        }
    },
    [2] = {
        Name = "Ilegal Hunting Zone",
        Coords = vec3(938.14, 5642.34, 645.7),
        Sprite = 141,
        Color = 1,
        Range = 600.0,
        Alpha = 40,
        SpawnedAnimalsAmount = math.random(60, 80),
        Animals = {
            [1] = 'a_c_deer',
            [2] = 'a_c_boar',
            [3] = 'a_c_rabbit_01',
            [4] = 'a_c_mtlion',
            [5] = 'a_c_coyote'
        }
    },
}

Config.Animals = {
    { Ped = `a_c_deer`, SkinItem = 'hunting_deer_skin', MeatItem = 'hunting_deer_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) },
    { Ped = `a_c_mtlion`, SkinItem = 'hunting_mtlion_skin', MeatItem = 'hunting_mtlion_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
    { Ped = `a_c_boar`, SkinItem = 'hunting_boar_skin', MeatItem = 'hunting_boar_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
    { Ped = `a_c_coyote`, SkinItem = 'hunting_coyote_skin', MeatItem = 'hunting_coyote_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
    { Ped = `a_c_chickenhawk`, SkinItem = 'hunting_chickenhawk_skin', MeatItem = 'hunting_chickenhawk_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
    { Ped = `a_c_rabbit_01`, SkinItem = 'hunting_rabbit_skin', MeatItem = 'hunting_rabbit_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
    { Ped = `a_c_crow`, SkinItem = 'hunting_crow_skin', MeatItem = 'hunting_crow_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
    { Ped = `a_c_pigeon`, SkinItem = 'hunting_pigeon_skin', MeatItem = 'hunting_pigeon_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
    { Ped = `a_c_seagull`, SkinItem = 'hunting_seagull_skin', MeatItem = 'hunting_seagull_meat', SkinQuantity = math.random(1, 1), MeatQuantity = math.random(1, 3) }, 
}

Config.GrillMenu = {
    { Item = 'hunting_deer_meat', FinalItem = 'hunting_deer_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_mtlion_meat', FinalItem = 'hunting_mtlion_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_boar_meat', FinalItem = 'hunting_boar_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_coyote_meat', FinalItem = 'hunting_coyote_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_chickenhawk_meat', FinalItem = 'hunting_chickenhawk_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_rabbit_meat', FinalItem = 'hunting_rabbit_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_crow_meat', FinalItem = 'hunting_crow_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_pigeon_meat', FinalItem = 'hunting_pigeon_meat_cooked', FoodAmount = math.random(40, 50) },
    { Item = 'hunting_seagull_meat', FinalItem = 'hunting_seagull_meat_cooked', FoodAmount = math.random(40, 50) },
}

Config.Times = {
    SkinAnimal = 7500,
    SetUpGrill = 5000,
    Grill = 5000,
}

Config.LangActive = 'en'
Config.Lang = {
    ['en'] = {
        BuySomething = 'Buy some shits',
        TakeVehicle = 'Take a hunting vehicle',
        StoreVehicle = 'Store Vehicle Back',
        NoMoney = 'Not enought money...',
        SkinAnimal = 'Skin Animal',
        SkiningAnimal = 'SKINING ANIMAL...',
        NoKnife = 'You need a Knife...',
        SettingUpGrill = 'SETTING GRILL UP...',
        UseGrill = 'Use Grill',
        NoItem = 'You do not have that item...',
        GrillMenu = 'Hunting Grill',
        Make = 'Grill',
        Into = 'into',
        Grilling = 'Grilling',
        PickGrill = 'Pick Up Grill',
        HowMuchYouWantToGrill = 'How much you want to grill?',
        Quantity = 'Quantity',
        SellSomething = 'Sell some shits',
        Sell = 'Sell',
        HowMuchWantToSell = 'How much you want to sell?',
        For = 'for',
        DollarSign = '$',
    },
    ['pt'] = {
        BuySomething = 'Comprar qualquer merda',
        TakeVehicle = 'Tirar veiculo de caça',
        StoreVehicle = 'Guardar veiculo',
        NoMoney = 'Não tens guito...',
        SkinAnimal = 'Tirar pele',
        SkiningAnimal = 'A TIRAR PELE...',
        NoKnife = 'Pricesas de uma faca...',
        SettingUpGrill = 'A COLOCAR GRELHA...',
        UseGrill = 'Usar Grelha',
        NoItem = 'Não tens esse item...',
        GrillMenu = 'Grelha de Caça',
        Make = 'Grelha',
        Into = 'em',
        Grilling = 'A Grelhar',
        PickGrill = 'Pegar Grelha',
        HowMuchYouWantToGrill = 'QUanto queres grelhar?',
        Quantity = 'Quantidade',
        SellSomething = 'Vender alguma merda',
        Sell = 'Vender',
        HowMuchWantToSell = 'Quanto queres vender?',
        For = 'por',
        DollarSign = '€',
    },
}