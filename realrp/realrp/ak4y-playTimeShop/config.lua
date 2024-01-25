-- ak4y dev.

-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD :)
-- https://discord.gg/kWwM3Bx

AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
AK4Y.OpenCommand = "playtime"
AK4Y.DefaultGarage = "A" -- purchased vehicles will be sent to this garage
AK4Y.RewardCoin = 1
AK4Y.NeededPlayTime = 60 -- Minutes

AK4Y.Language = {
    title1 = "AK4Y",
    title2 = "Playtime",
    coin = "COIN",
    nextReward = "FOR THE NEXT COIN REWARD",
    exit = "EXIT",
    reward = "REWARD :",
    title3 = "TOP",
    title4 = "PLAYERS",
    title5 = "PLAYTIME",
    title6 = "SHOP",
    cancel = "CANCEL",
    buy = "BUY",
    accept = "ACCEPT",
    realCurrency = "$",
    nextPage = "NEXT PAGE",
    previousPage = "PRIVIOUS PAGE",
    succesfully = "SUCCESSFULLY",
    purchased = "PURCHASED",
    invalidCode = "INVALID CODE!",
    thxForPurch = "Thanks for purchasing!",
    top = "TOP",
    youDntHvEngMoney = "YOU DONT HAVE ENOUGH MONEY!",
    text6 = "6",
}

AK4Y.Categories = {
    { category = "items", icon = "fa-solid fa-cookie-bite", items = {} }, -- do not touch items section..
    { category = "weapons", icon = "fa-solid fa-gun", items = {} }, -- do not touch items section..
    { category = "vehicles", icon = "fa-solid fa-car", items = {} }, -- do not touch items section..
}

-- itemType : vehicle, weapon, item, money
AK4Y.Items = {

    { id = 1, itemName = "nocturnoII", label = "Nocturno MC Bike", price = 200, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/nocturnoII.png" },
    { id = 2, itemName = "elegy", label = "Elegy Retro Custom", price = 225, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/elegy.png" },
    { id = 3, itemName = "coquette4", label = "Coquette 4", price = 225, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/coquette4.png" },
    { id = 4, itemName = "coke_pure", label = "Coke Bags", price = 100, count = 10, itemType = "item", category = "items", image = "./images/coke_bags.png" },
    { id = 5, itemName = "mustangpegasus", label = "Mustang Pegasus", price = 250, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/mustangpegasus.png" },
    { id = 6, itemName = "advancedrepairkit", label = "Advanced Repair Kit", price = 17, count = 1, itemType = "item", category = "items", image = "./images/advancedkit.png" },
    { id = 7, itemName = "WEAPON_GLOCK40S", label = "Glock 40 (Switch)", price = 200, count = 1, itemType = "item", category = "weapons", image = "./images/WEAPON_GLOCK40S.png" },
    { id = 8, itemName = "heavyarmor", label = "Heavy Armor", price = 75, count = 2, itemType = "item", category = "items", image = "./images/armor.png" },
}

AK4Y.CoinList = {
    { coinCount = 300, realPrice = 30, link = "https://www.yourTebexLink.com/crediAmountPage.html", image = "./images/coin.png" },
    { coinCount = 100, realPrice = 50, link = "https://www.yourTebexLink.com/crediAmountPage.html", image = "./images/coin.png" },
    { coinCount = 700, realPrice = 70, link = "https://www.yourTebexLink.com/crediAmountPage.html", image = "./images/coin.png" },
    { coinCount = 900, realPrice = 90, link = "https://www.yourTebexLink.com/crediAmountPage.html", image = "./images/coin.png" },
    { coinCount = 1200, realPrice = 120, link = "https://www.yourTebexLink.com/crediAmountPage.html", image = "./images/coin.png" },
    { coinCount = 1500, realPrice = 150, link = "https://www.yourTebexLink.com/crediAmountPage.html", image = "./images/coin.png" },
}