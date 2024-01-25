-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false,
	Core = "qb-core",

	Inv = "ox", -- set to "ox" if using ox_inventory
	Notify = "ox",  -- set to "ox" if using ox_lib

	UseProgbar = true,
	ProgressBar = "ox", -- set to "ox" if using ox_lib

	Consumables = {
		-- Default QB food and drink item overridebkamikaze

		--Jixel-pearlkois-Alcohol
		["tillie"] = { emote = "browncup", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["b52"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["brussian"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["bkamikaze"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["cappucc"] = { emote = "browncup", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["ccookie"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["iflag"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["kamikaze"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["sbullet"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["voodoo"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},
		["woowoo"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20, 30), canOD = true }},

		["schnapps"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["gin"] = { emote = "ginb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["scotch"] = { emote = "whiskeyb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["rum"] = { emote = "rumb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["icream"] = { emote = "icream", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["amaretto"] = { emote = "vodkab", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["curaco"] = { emote = "vodkab", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},

		["ambeer"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["dusche"] = { emote = "beer1", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["logger"] = { emote = "beer2", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["pisswasser"] = { emote = "beer4", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["pisswasser2"] = { emote = "beer5", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},
		["pisswasser3"] = { emote = "beer6", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), canOD = true }},

		--Jixel-pearlkois-Drinks
		["cranberry"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
		["ecola"] = { emote = "ecola", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 50), }},
		["ecolalight"] = { emote = "ecola", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10, 20), }},
		["sprunk"] = { emote = "sprunk", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10, 20), }},
		["sprunklight"] = { emote = "sprunk", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10, 20), }},

		--Jixel-pearlkois-Food
		["chocolate"] = { emote = "egobar", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
		["crisps"] = { emote = "crisps", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
		["friedpick"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["maccheese"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["bplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["cplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["splate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["rplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["nplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["fishnchips"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["tunapog"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},
		["steriyaki"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},
		["lobstertail"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["smokedsalmon"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["filetmignon"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["mackrel"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["frenchfries"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["fishfingers"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["fruitgazpacho"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["cookedrice"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["ramen"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		["sushi"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50) }},

		--CluckinBell - Drinks
		["cbcoffee"] = { emote = "cbcoffee", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
		["cbcoke"] = { emote = "cbsoda", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
		["cborangesoda"] = { emote = "cbsoda", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
		["cblemonlimesoda"] = { emote = "cbsoda", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
		["cbrootbeer"] = { emote = "cbsoda", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},

		--CluckinBell-Food
		["cbchickenwrap"] = { emote = "cbburger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["cbucket"] = {	emote = "cbburger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["csalad"] = { emote = "cbburger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["friedchicken"] = { emote = "cbfries", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["clucknuggets"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["cluckrings"] = {	emote = "cbfries", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["cluckfries"] = { emote = "cbfries", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["fowlburger"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["mightyclucker"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["chocolatecone"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["strawberrycone"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["vanillacone"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["cbdonut"] = {	emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		["meatfree"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},


		--CASINO FOOD
		["casino_beer"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), canOD = true }},
		["casino_burger"] = { 	emote = "burger", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,40), }},
		["casino_chips"] = { 	emote = "doritos", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,40), }},
		["casino_coke"] = { 			emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), canOD = true }},
		["casino_donut"] = { 	emote = "sandwich", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,40), }},
		["casino_ego_chaser"] = { 	emote = "egobar", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,30), }},
		["casino_sandwitch"] = { 	emote = "sandwich", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,30), }},
		["casino_sprite"] = { 	emote = "ecola", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,30), }},
		["casino_psqs"] = { 	emote = "egobar", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,30), }},
		["casino_luckypotion"] = { 	emote = "beer", 		canRun = false, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,30), canOD = true }},
		
		
		["amarone"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["bkamikaze"] = { emote = "whiskey", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		
		["barbera"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["dolceto"] = { emote = "whitewine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["housered"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["housewhite"] = { emote = "whitewine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["rosso"] = { emote = "redwine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["ambeer"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["dusche"] = { emote = "beer1", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["logger"] = { emote = "beer2", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["pisswasser"] = { emote = "beer4", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["pisswasser2"] = { emote = "beer5", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["pisswasser3"] = { emote = "beer6", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["tiramisu"] = { emote = "bowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["gelato"] = { emote = "bowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["medfruits"] = { emote = "pineapple", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["bolognese"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["calamari"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["meatball"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["alla"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["pescatore"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["capricciosa"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["diavola"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["marinara"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["margherita"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["prosciuttio"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["vegetariana"] = { emote = "pizza", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		
		--["heavyarmor"] = { 		emote = "oxy",	canRun = true,	time = math.random(5000, 6000), stress = math.random(0, 0), heal = 0, armor = 100, type = "food", stats = { screen = "focus", effect = "armor", } },
		
		
		--Effects can be applied here, like stamina on coffee for example
		["vodka"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["beer"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["whiskey"] = { 		emote = "whiskey",  	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["duffbeer"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["glass_whiskeycoke"] = { 			emote = "whiskey", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["bootlegvodka"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},

		["sandwich"] = { 		emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["twerks_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["snikkel_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["tosti"] = { 			emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		
		-- PEARLS RESTURANT (BRIT CUNT)
		["fish_and_chips"] = { 		emote = "bowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["fish_sticks"] = { 		emote = "bowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
		
		["shrimp_ajillo"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["shrimp_plate"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["ahi_tuna"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["cioppino"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["salmon_teriyaki"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["seafood_penne"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["tuna_steak"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["octopus_cut"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["shrimp_ajillo"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["fish_plate"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["salmon_plate"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["calamari_marinara"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["tiramisu"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["medaly_of_fresh_fruits"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["shrimp_ajillo"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["chocolate_and_vanilla_gelato_ice_cream"] = { 		emote = "bowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["crawfish_plate"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["meat_fries"] = { 		emote = "foodbowl", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,80), }},
		["cappuccino"] = { 		emote = "uwu12", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,30), }},
		["latte_macchiato"] = { 		emote = "uwu12", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,30), }},
		["sprunk"] = { 		emote = "bscoke", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		["drang_o_tang"] = { 		emote = "bscoke", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		["piswasser"] = { 		emote = "beer4", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		["beer"] = { 		emote = "beer4", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		["duscbe_gold"] = { 		emote = "beer4", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		--["logger"] = { 		emote = "beer4", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		["ragga_rum"] = { 		emote = "whiskey", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		["cherenkov"] = { 		emote = "whiskey", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,40), }},
		
--JIM BAKERY
		["strawberrymilkshake"] = { emote = "flute", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(45, 54), }},
		["chocolatemilkshake"] = { emote = "flute", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(45, 54), }},
		["milkshake"] = { emote = "flute", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35, 54), }},
		["tbbread"] = { emote = "bread", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,54), }},
		["tbwhitebread"] = { emote = "breadroll4", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
		["tbbrownbread"] = { emote = "breadroll1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
		["breadslice"] = { emote = "breadslice", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
		["tbbirthdaycake"] = { emote = "cake1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,60), }},
		["tbcake"] = { emote = "cake2", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,60), }},
		["tbcakebase"] = { emote = "cake2", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(45,54), }},
		["tbcupcake"] = { emote = "cupcake1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,50), }},
		["tbchoccake"] = { emote = "cake3", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,60), }},
		["tbcookie"] = { emote = "cookie", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,50), }},
		["tbbrownie"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50,50), }},
		["tbdonut"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,60), }},
		["tblongjohn"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,54), }},
		["tbcroissant"] = { emote = "croissant", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,54), }},
		["tbchoccroiss"] = { emote = "choccroiss", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,54), }},
		["tbsweetroll"] = { emote = "sweetroll", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,40), }},
		["chocolate"] = { emote = "egobar", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},



		
		["coffee"] = { 			emote = "coffee", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(10,20), }},
		["water_bottle"] = { 	emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["kurkakola"] = { 		emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},


		--Effects can be applied here, like stamina on coffee for example
		["vodka"] = { 			emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["beer"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["whiskey"] = { 		emote = "whiskey",  	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},

		["sandwich"] = { 		emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["twerks_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["snikkel_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["tosti"] = { 			emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["doritos"] = { 		emote = "doritos", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(15,30), }},
		["sunchips"] = { 	emote = "sunchips", 		canRun = true, 		time = math.random(8000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["sunchips1"] = { 	emote = "sunchips1", 		canRun = true, 		time = math.random(8000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},

		["fritos"] = { 	emote = "fritos", 		canRun = true, 		time = math.random(8000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["fritos1"] = { 	emote = "fritos1", 		canRun = true, 		time = math.random(8000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},

		["cheetos"] = { 	emote = "cheetos", 		canRun = true, 		time = math.random(8000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["cheetos1"] = { 	emote = "cheetos1", 		canRun = true, 		time = math.random(8000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["cheetos2"] = { 	emote = "cheetos2", 		canRun = true, 		time = math.random(8000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
		["coffee"] = { 			emote = "coffee", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(10,20), }},
		["water_bottle"] = { 	emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["kurkakola"] = { 		emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["prime_icepop"] = { 	emote = "drinkprime", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["prime_lemonlime"] = { 	emote = "drinkprimelemon", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		--Jim-Bakery-Drinks
	["bscoffee"] = { emote = "bscoffee", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
	["bscoke"] = { emote = "bscoke", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
	["milkshake"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
	["cookedmwburger"] = { emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["cocacola"] = { emote = "ecola", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,45), }},
	["mountaindew"] = { emote = "ecola", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,45), }},
	--Jim-BurgerShot-Food
	["heartstopper"] = { emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["torpedo"] = {	emote = "torpedo", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["shotfries"] = { emote = "bsfries", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["meatfree"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["shotnuggets"] = {	emote = "bsfries", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["shotrings"] = { emote = "bsfries", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["moneyshot"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["bleeder"] = {	emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["rimjob"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["creampie"] = { emote = "donut", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["cheesewrap"] = { emote = "sandwich", canRun = false, 	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
	["chickenwrap"] = {	emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
		
	--Jim-CatCafe-Alcohol
	["sake"] = { emote = "uwu7", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},

	--Jim-CatCafe-Drinks
	["bobatea"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["bbobatea"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["gbobatea"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["obobatea"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["pbobatea"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["nekolatte"] = { emote = "uwu2", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 80), }},
	["mocha"] = { emote = "uwu1", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["catcoffee"] = { emote = "uwu4", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 80), }},

	----CatCfe DRC
	["gingerkitty_cookie"] = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["kira_kira_currye"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["om_nom_omurice"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["dragos_fire_cupcake"] = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["ballbarry_cupcake"] = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["purrfect_parfait"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["oxygen_cake"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["meowchi_mochi_ice_cream"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["strawberry_shortcake"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["awwdorable_valentines_chocolate"] = { emote = "egobar", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["warm_chicken_noodle"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["rice_balls"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["doki_doki_pancakes"] = { emote = "foodbowl", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["hamburg_stake"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["sugoi_katsu_sando"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["cat_macaroon_pink"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["cat_macaroon_green"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["cat_macaroon_turquoise"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["cat_macaroon_brown"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["cat_macaroon_pink"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["sweet_herbal_tea"] = { emote = "whiskey", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["booba_milk_tea_2"] = { emote = "uwu12", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["lovely_hot_chocolate"] = { emote = "uwu4", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["hot_chocolate"] = { emote = "uwu4", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	["matcha_coffee"] = { emote = "uwu4", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
	

	-- Food
	["tripleburger"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["baconcheesemelt"] = 		{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["chillidog"] = 			{ emote = "atomhotdog", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["hotdog"] = 			{ emote = "hotdog", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	
	["atomfries"] = 			{ emote = "atomfries", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["chickenfillet"]= 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["chickenhorn"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["grilledchicken"] = 		{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["chickensalad"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["hunksohen"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["chickentaco"]= 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["enchiladas"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["gazpacho"] = 				{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["hornbreakfast"] = 		{ emote = "dinner", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["eggsbenedict"] = 			{ emote = "dinner", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["hashbrowns"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["sausages"] = 				{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["baconroll"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["baconeggtoast"] = 		{ emote = "dinner", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["frenchtoast"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["frenchtoastbacon"] = 		{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["hornburger"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["dblhornburger"] = 		{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["baconhornburger"] = 		{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["picklehornburger"] = 		{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["chickenhornburger"] = 	{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["dblchickenhornburger"] = 	{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["breadslice"] =			{ emote = "breadslice", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80) }},

	["icecone"] = 				{ emote = "icecreamh", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["icenugget"] = 			{ emote = "icecreamh", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},
	["icecake"] = 				{ emote = "xmascc2", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 90) }},

	["creamyshake"] = 			{ emote = "atomdrink", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 90) }},
	["atomsoda"]  = 			{ emote = "atomdrink", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 90) }},
	["orangotang"] = 			{ emote = "atomdrink", canRun = false, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 90) }},
	["raine"]  = 				{ emote = "atomdrink", canRun = false, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 90) }},
	["junkdrink"]  = 			{ emote = "bscoffee", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 90) }},
	["milk"] = 					{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 90) }},
	["junkdrink"] = 				{ emote = "atomdrink", canRun = false, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50,90), }},
	["raine"] = 				{ emote = "atomdrink", canRun = false, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50,90), }},
	["orangotang"] = 				{ emote = "atomdrink", canRun = false, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50,90), }},
	
-- JIM HENHOUSE FOOD

		["tillie"] = { emote = "browncup", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["b52"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["brussian"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		--["bkamikaze"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["cappucc"] = { emote = "browncup", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["ccookie"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["iflag"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["kamikaze"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["sbullet"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["voodoo"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["woowoo"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["schnapps"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["gin"] = { emote = "ginb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["scotch"] = { emote = "whiskeyb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["rum"] = { emote = "rumb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["icream"] = { emote = "icream", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["amaretto"] = { emote = "vodkab", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["curaco"] = { emote = "vodkab", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["ambeer"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["dusche"] = { emote = "beer1", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		--["logger"] = { emote = "beer2", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["pisswasser"] = { emote = "beer4", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["pisswasser2"] = { emote = "beer5", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["pisswasser3"] = { emote = "beer6", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 80), canOD = true }},
		["cranberry"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40, 50), }},
		["chocolate"] = { emote = "egobar", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["crisps"] = { emote = "crisps", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["friedpick"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["maccheese"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["bplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["cplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["splate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["rplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["nplate"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["wings"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
		["bburrito"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 40), }},
		["pickle"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
		["nachos"] = { emote = "burger", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},

	--Jim-CatCafe-Food
	["bento"] = { emote = "uwu7", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["blueberry"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
	["cake"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["nekocookie"] = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["nekodonut"] = { emote = "uwu5", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["riceball"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["miso"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["bmochi"] = { emote = "uwu13", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["pmochi"] = { emote = "uwu13", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["gmochi"] = { emote = "uwu13", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["omochi"] = { emote = "uwu13", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["strawberry"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
	["rice"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},
	["cakepop"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["pizza"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["pancake"] = { emote = "sandwich", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["purrito"] = { emote = "uwu8", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["noodlebowl"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40, 50), }},
	["ramen"] = { emote = "uwu9", canRun = false, time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},	
	
		["afghankush_joint"] = {	emote = "joint",	time = math.random(5000, 6000), stress = math.random(5, 10), heal = 5, armor = 7, type = "drug", stats = { screen = "turbo", effect = "stamina", widepupils = true, canOD = true } },
		["bluedream_joint"] = { 	emote = "joint",	time = math.random(5000, 6000), stress = math.random(5, 10), heal = 0, armor = 15, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = true, canOD = true } },
		["granddaddypurple_joint"] = { emote = "joint",	time = math.random(5000, 6000), stress = math.random(1, 10), heal = 5, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = true, canOD = true } },
		["greencrack_joint"] = { 	emote = "joint",	time = math.random(5000, 6000), stress = math.random(5, 20), heal = 0, armor = 7, type = "drug", stats = { screen = "rampage", effect = "armor", widepupils = false, canOD = true } },
		["jackherrer_joint"] = { 	emote = "joint",	time = math.random(5000, 6000), stress = math.random(5, 10), heal = 10, armor = 5, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = true, canOD = true } },
		["sourdiesel_joint"] = { 	emote = "joint",	time = math.random(5000, 6000), stress = math.random(20, 25), heal = 0, armor = 0, type = "drug", stats = { screen = "turbo", effect = "stress", widepupils = true, canOD = true } },
		["weddingcake_joint"] = { 	emote = "joint",	time = math.random(5000, 6000), stress = math.random(1, 10), heal = 17, armor = 0, type = "drug", stats = { screen = "turbo", effect = "armor", widepupils = true, canOD = true } },
		["whitewidow_joint"] = { 	emote = "joint",	time = math.random(5000, 6000), stress = math.random(5, 10), heal = 0, armor = 7, type = "drug", stats = { screen = "weed", effect = "strength", widepupils = true, canOD = true } },

		["gummy_rasberry"] = {		emote = "oxy",	time = math.random(5000, 6000), stress = math.random(5, 15), heal = 5, armor = 5, type = "drug", stats = { screen = "weed", effect = "stamina", widepupils = false, canOD = false } },
		["gummy_blueberry"] = {		emote = "oxy",	time = math.random(5000, 6000), stress = math.random(5, 10), heal = 20, armor = 0, type = "drug", stats = { screen = "trevor", effect = "strength", widepupils = false, canOD = false } },
		["gummy_grape"] = {			emote = "oxy",	time = math.random(5000, 6000), stress = math.random(1, 10), heal = 0, armor = 15, type = "drug", stats = { screen = "turbo", effect = "armor", widepupils = false, canOD = false } },
		["gummy_applering"] = {		emote = "oxy",	time = math.random(5000, 6000), stress = math.random(20, 25), heal = 0, armor = 0, type = "drug", stats = { screen = "weed", effect = "stress", widepupils = false, canOD = false } },
		["edible_ricecrispy"] = {	emote = "oxy",	time = math.random(5000, 6000), stress = math.random(5, 10), heal = 10, armor = 10, type = "drug", stats = { screen = "turbo", effect = "armor", widepupils = false, canOD = false } },
		["gummy_belt"] = {			emote = "oxy",	time = math.random(5000, 6000), stress = math.random(10, 15), heal = 0, armor = 0, type = "drug", stats = { screen = "weed", effect = "swimming", widepupils = false, canOD = false } },
		["edible_snickerdoodle"] = {	emote = "oxy",	time = math.random(5000, 6000), stress = math.random(5, 15), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "stamina", widepupils = false, canOD = false } },
		["edible_peanutcookie"] = {	emote = "oxy",	time = math.random(5000, 6000), stress = math.random(5, 15), heal = 10, armor = 0, type = "drug", stats = { screen = "weed", effect = "stamina", widepupils = false, canOD = false } },
		["edible_cchip"] = {	emote = "uwu6",	time = math.random(5000, 6000), stress = math.random(1, 5), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 80), }},

		--[[----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
		-- Testing these but they may be best left handled by default scripts
		["ifaks"] = { 			emote = "oxy", 		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false } },
		["bandage"] = { 		emote = "oxy", 		time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } }, },
		]]

		--Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
		["joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

		["coke_pure"] = { 		emote = "coke",	 canRun = true,	time = math.random(4000, 4000), stress = math.random(12, 24), heal = 30, armor = 30, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = false } },
		["meth_syringe"] = { 		emote = "coke",	 canRun = true,	time = math.random(4000, 4000), stress = math.random(12, 24), heal = 50, armor = 50, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = false } },
		["heroin_syringe"] = { 		emote = "coke",	 canRun = true,	time = math.random(4000, 4000), stress = math.random(12, 24), heal = 100, armor = 100, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = false } },
		
		--["crackbaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = true } },
		--["xtcbaggy"] = { 		emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "strength", widepupils = true, canOD = true } },
		--["oxy"] = { 			emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
		["meth"] = { 			emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "stamina", widepupils = false, canOD = true } },
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		--[[Example item
		["heartstopper"] = {
			emote = "burger", 							-- Select an emote from below, it has to be in here
			time = math.random(5000, 6000),				-- Amount of time it takes to consume the item
			stress = math.random(1,2),					-- Amount of stress relief, can be 0
			heal = 0, 									-- Set amount to heal by after consuming
			armor = 5,									-- Amount of armor to add
			type = "food",								-- Type: "alcohol" / "drink" / "food"

			stats = {
				screen = "thermal",						-- The screen effect to be played when after consuming the item "rampage" "turbo" "focus" "weed" "trevor" "nightvision" "thermal"
				effect = "heal", 						-- The status effect given by the item, "heal" / "stamina"
														-- This supports ps-buffs effects "armor" "stress" "swimming" "hacking" "intelligence" "luck" "strength"
				time = 10000,							-- How long the effect should last (if not added it will default to 10000)
				amount = 6,								-- How much the value is changed by per second
				hunger = math.random(50, 80),			-- The hunger/thirst stats of the item, if not found in the items.lua
				thirst = math.random(50, 80),			-- The hunger/thirst stats of the item, if not found in the items.lua
			},
			--Reward Items Variables
														-- These can be the only thing in a consumable table and the item will still work
			amounttogive = 3,							-- Used for "RewardItems", tells the script how many to give
			rewards = {
				[1] = {
					item = "plastic", 					-- prize item name
					max = 10,							-- max amount to give (this is put into math.random(1, max) )
					rarity = 1,							-- the rarity system, 1 being rarest, 4 being most common
				},
			},
		},]]

	},
	Emotes = {

			--Jixel-pearlkois
		["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
		{    Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
			EmoteMoving = true, EmoteLoop = true }},
		["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
		{    Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
		["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
		{    Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
		["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
		{    Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
		["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
		{   Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
		{   Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
			EmoteLoop = true, EmoteMoving = true, }},
		["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
		{    Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
		{    Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
		{    Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
		{    Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
		{    Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
		{    Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
		{    Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
		{    Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		--JIM BAKERY
		["bread"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Bread", AnimationOptions = { Prop = 'v_ret_247_bread1', PropBone = 28422, PropPlacement = {0.02, -0.05, -0.06, 270.0, 0.0, 90.0}, EmoteLoop = true, EmoteMoving = true, }},
		["breadslice"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Slice", AnimationOptions = { Prop = 'v_res_fa_bread03', PropBone = 18905, PropPlacement = {0.16, 0.08, -0.01, -225.0, -10.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["cupcake1"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cup Cake", AnimationOptions = { Prop = 'hb_cupcake1', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, -120.0, 0.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["cupcake2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cup Cake 2", AnimationOptions = { Prop = 'hb_cupcake2', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, -120.0, 0.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["cake1"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cake 1", AnimationOptions = { Prop = 'hb_cake1', PropBone = 18905, PropPlacement = {0.13, 0.1, -0.06, -80.0, 0.0, -20.0},	EmoteLoop = true, EmoteMoving = true, }},
		["cake2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cake 2", AnimationOptions = { Prop = 'hb_cake2', PropBone = 18905, PropPlacement = {0.13, 0.1, -0.06, -80.0, 50.0, -20.0}, EmoteLoop = true, EmoteMoving = true, }},
		["cake3"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cake 3", AnimationOptions = { Prop = 'hb_cake3', PropBone = 18905, PropPlacement = {0.10, 0.03, 0.05, -30.0, -30.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["cakehold1"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Cake Hold 2", AnimationOptions = { Prop = 'hb_cake1', PropBone = 24817, PropPlacement = {-0.04, 0.46, -0.016, -160.0, -90.0, 0.0},	EmoteMoving = true,	EmoteLoop = true }},
		["cakehold2"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Cake Hold 2", AnimationOptions = { Prop = 'hb_cake2', PropBone = 24817, PropPlacement = {-0.04, 0.46, -0.016, -160.0, -90.0, 0.0},	EmoteMoving = true,	EmoteLoop = true }},
		["cakehold3"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Cake Hold 3", AnimationOptions = { Prop = 'hb_cake3', PropBone = 24817, PropPlacement = {-0.11, 0.46, -0.016, -210.0, -90.0, 0.0}, EmoteMoving = true, EmoteLoop = true }},
		["breadhold1"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions = { Prop = 'hbe_bread_1', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0}, EmoteMoving = true, EmoteLoop = true }},
		["breadhold2"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions = { Prop = 'hb_bread_2', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0}, EmoteMoving = true, EmoteLoop = true }},
		["breadhold3"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions = { Prop = 'hb_bread_3', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0}, EmoteMoving = true,	EmoteLoop = true }},
		["breadhold4"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions = { Prop = 'hb_bread_4', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0}, EmoteMoving = true, EmoteLoop = true }},
		["breadroll1"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 1", AnimationOptions = { Prop = 'hb_bread_roll_1', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["breadroll2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 2", AnimationOptions = { Prop = 'hb_bread_roll_2', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},	EmoteLoop = true, EmoteMoving = true, }},
		["breadroll3"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 3", AnimationOptions = { Prop = 'hb_bread_roll_3', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["breadroll4"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 4", AnimationOptions = { Prop = 'hb_bread_roll_4', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},	EmoteLoop = true, EmoteMoving = true, }},
		["croissant"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Croissant", AnimationOptions = { Prop = 'hb_pastry_1', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["choccroiss"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Croissant Sauce", AnimationOptions = { Prop = 'hb_pastry_2', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["sweetroll"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sweet Roll", AnimationOptions = { Prop = 'hb_pastry_3', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["cookie"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cookie", AnimationOptions = { Prop = 'hb_pastry_4', PropBone = 18905, PropPlacement = {0.15, 0.08, 0.02, 20.0, 140.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},
		["dinner"] = {
			"anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
			"base_idle",
			"Dinner",
			AnimationOptions = {
				Prop = "prop_cs_plate_01",
				PropBone = 60309,
				PropPlacement = {
					0.0,
					0.0,
					0.0,
					0.0,
					0.0
				},
				SecondProp = 'h4_prop_h4_caviar_spoon_01a',
				SecondPropBone = 28422,
				SecondPropPlacement = {
					0.0,
					0.0,
					0.0,
					0.0,
					0.0,
					0.0
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},	
		["xmascc2"] = { --- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake 2",
        AnimationOptions = {
            Prop = 'pata_christmasfood8',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                0.0,
               -0.0100,
                9.3608,
              -90.1809,
               66.3689
            },
            EmoteMoving = true
        }
    },
		["icecreamh"] = {
			"mp_player_inteat@burger",
			"mp_player_int_eat_burger",
			"Ice cream Walnut",
			AnimationOptions = {
				Prop = 'bzzz_icecream_walnut',
				PropBone = 18905,
				PropPlacement = {
					0.14,
					0.03,
					0.01,
					85.0,
					70.0,
					-203.0
				},
				EmoteMoving = true
			}
		},
		["hotdog"] = {
			"mp_player_inteat@burger",
			"mp_player_int_eat_burger",
			"Hotdog",
			AnimationOptions = {
				Prop = 'prop_cs_hotdog_02',
				PropBone = 60309,
				PropPlacement = {
					-0.0300,
					0.0100,
					-0.0100,
					95.1071,
					94.7001,
					-66.9179
				},
				EmoteMoving = true
			}
		},	
	--Jim-CluckinBell
    ["cbsoda"] = {"mp_player_intdrink", "loop_bottle", "CBCoke", AnimationOptions =
   {    Prop = "prop_food_cb_juice01", PropBone = 18905, PropPlacement = {0.04, -0.10, 0.10, 240.0, -60.0},
        EmoteMoving = true, EmoteLoop = true, }},
   ["cbcoffee"] = {"mp_player_intdrink", "loop_bottle", "CBCoffee", AnimationOptions =
   {    Prop = "prop_food_cb_coffee", PropBone = 18905, PropPlacement = {0.08, -0.10, 0.10, 240.0, -60.0},
        EmoteMoving = true, EmoteLoop = true, }},
   ["cbburger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "ChickenBurger", AnimationOptions =
   {    Prop = "prop_food_cb_burg01", PropBone = 18905, PropPlacement = {0.10, -0.07, 0.091, 15.0, 135.0},
        EmoteMoving = true, EmoteLoop = true, }},
   ["cbfries"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "CBFries", AnimationOptions =
   {    Prop = "prop_food_cb_chips", PropBone = 18905, PropPlacement = {0.09, -0.06, 0.05, 300.0, 150.0},
        EmoteMoving = true, EmoteLoop = true, }},
   ["donut3"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut3", AnimationOptions =
   {   Prop = 'prop_food_cb_donuts', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 100.0, 270.0},
       EmoteMoving = true, EmoteLoop = true, }},
    ["cbnuggets"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cnuggets", AnimationOptions =
    {   Prop = 'prop_food_cb_nugets', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 100.0, 270.0}, 
    EmoteMoving = true, EmoteLoop = true,}},
    ["cbtoy"] = {"mp_arresting", "a_uncuff", "CBToy", AnimationOptions =
    {   Prop = 'jixel_prop_cluckinbox', PropBone = 18905, PropPlacement = { 0.1, 0.1, 0.0, 0.0, 100.0, 90.0},
       EmoteMoving = true, EmoteLoop = true, }},	
	["atomdrink"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions = { Prop = 'ng_proc_sodacup_01c', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0}, EmoteLoop = true, EmoteMoving = true, }},
	["atomhotdog"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions = { Prop = 'prop_food_bs_burger2', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0}, EmoteLoop = true, EmoteMoving = true, }},
	["atomfries"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions = { Prop = 'prop_food_chips', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0}, EmoteLoop = true, EmoteMoving = true, }},
	["breadslice"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Slice", AnimationOptions = { Prop = 'v_res_fa_bread03', PropBone = 18905, PropPlacement = {0.16, 0.08, -0.01, -225.0, -10.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }},		
	["cheetos"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Cheetos Flamin Hot Limon", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_cheetos_002', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
			EmoteLoop = true, EmoteMoving = true, }},		
	["cheetos2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Cheetos Cheddar Jalapeno", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_cheetos_001', PropBone = 28422, PropPlacement = {0.20,0.0,0.0,0.0,0.30,0.0},
			EmoteLoop = true, EmoteMoving = true, }},		
	["cheetos1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Cheetos Bones", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_cheetos_003', PropBone = 28422, PropPlacement = {0.20,0.0,0.0,0.0,0.30,-180.0},
			EmoteLoop = true, EmoteMoving = true, }},		

	["fritos1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Fritos Original", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_fritos', PropBone = 28422, PropPlacement = {0.40,0.0,0.0,0.0,0.30,-142.0},
			EmoteLoop = true, EmoteMoving = true, }},		
	["fritos"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Frito Twists", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_frito_twist', PropBone = 28422, PropPlacement = {0.40,0.0,0.0,0.0,0.30,-42.0},
			EmoteLoop = true, EmoteMoving = true, }},		

	["lays"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Lays Sour Cream and Onion", AnimationOptions =
		{ Prop = 'prop_wasbabi_snacks_lays_sc', PropBone = 28422, PropPlacement = {0.15,-0.22,0.0,0.0,0.0,-340.0},
			EmoteLoop = true, EmoteMoving = true, }},		
	["lays1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Lays Original", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_lays', PropBone = 28422, PropPlacement = {0.35,-0.13,0.0,0.0,0.0,-340.0},
			EmoteLoop = true, EmoteMoving = true, }},		
	["lays2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Lays BBQ", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_lays_bbq', PropBone = 28422, PropPlacement = {0.40,-0.13,0.0,0.0,0.0,-240.0},
			EmoteLoop = true, EmoteMoving = true, }},		

	["sunchips"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Sunchips Original", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_sunchip', PropBone = 28422, PropPlacement = {0.25,-0.13,0.0,0.0,0.0,-95.0},
			EmoteLoop = true, EmoteMoving = true, }},		
	["sunchips1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Sunchips Harvest Cheddar", AnimationOptions =
		{ Prop = 'prop_wasabi_snacks_sun_cheddar', PropBone = 28422, PropPlacement = {0.30,-0.13,0.0,0.0,0.0,-140.0},
			EmoteLoop = true, EmoteMoving = true, }},	

		--Jim-Bars
	["browncup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Brown Cup", AnimationOptions =
		{ Prop = 'v_serv_bs_mug', PropBone = 28422, PropPlacement = {0.03, -0.02, 0.0, 0.0, 0.0, 0.0},
			EmoteLoop = true, EmoteMoving = true, }},
	["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
		{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
			EmoteMoving = true, EmoteLoop = true }},
	["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
		{ Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
		{ Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
		{ Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
		{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},

	["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
		{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
			EmoteLoop = true, EmoteMoving = true, }},
	["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
		{ Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
		{ Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
		{ Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
		{ Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
		{ Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
		{ Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
		{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
		{ Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
		["doritos"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "brum_doritos_coolranch", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["drink"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "prop_ld_flow_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["drinkprimelemon"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "brum_primebottle_lemonlime", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},		
		["drinkprime"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "brum_primebottleicepop", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},		
		["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
			{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true }},
		["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
			{ Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
			{ Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
			{ Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
			{ Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
			{ Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
			{ Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
			{ Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
			{ Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
			{ Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
			{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
			{ Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		--Jim-BeanMachine
		["bmcoffee1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee2", AnimationOptions =
			{ Prop = 'prop_fib_coffee', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["bmcoffee2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee3", AnimationOptions =
			{ Prop = 'ng_proc_coffee_01a', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["bmcoffee3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee3", AnimationOptions =
			{ Prop = 'v_club_vu_coffeecup', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		--Jim-PizzaThis
		["redwine"] = {"mp_player_intdrink", "loop_bottle", "Red Wine Bottle", AnimationOptions =
			{ Prop = "prop_wine_rose", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["whitewine"] = {"mp_player_intdrink", "loop_bottle", "White Wine Bottle", AnimationOptions =
			{ Prop = "prop_wine_white", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["pizza"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
			{ Prop = "v_res_tt_pizzaplate", PropBone = 18905, PropPlacement = {0.20, 0.038, 0.051, 15.0, 155.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
			{ Prop = "h4_prop_h4_coke_plasticbowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["pineapple"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
			{ Prop = "prop_pineapple", PropBone = 18905, PropPlacement = {0.10, 0.038, 0.03, 15.0, 50.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["foodbowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
			{ Prop = "prop_cs_bowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.050, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true, }},
		--Jim-BurgerShot
		["milk"] = {"mp_player_intdrink", "loop_bottle", "Milk", AnimationOptions =
			{ Prop = "v_res_tt_milk", PropBone = 18905, PropPlacement = {0.10, 0.008, 0.07, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bscoke"] = {"mp_player_intdrink", "loop_bottle", "BS Coke", AnimationOptions =
			{ Prop = "prop_food_bs_juice01", PropBone = 18905, PropPlacement = {0.04, -0.10, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bscoffee"] = {"mp_player_intdrink", "loop_bottle", "BS Coffee", AnimationOptions =
			{ Prop = "prop_food_bs_coffee", PropBone = 18905, PropPlacement = {0.08, -0.10, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["glass"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Tall Glass", AnimationOptions =
			{ Prop = 'prop_wheat_grass_glass', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["torpedo"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Torpedo", AnimationOptions =
			{ Prop = "prop_food_bs_burger2", PropBone = 18905, PropPlacement = {0.10, -0.07, 0.091, 15.0, 135.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bsfries"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Fries", AnimationOptions =
			{ Prop = "prop_food_bs_chips", PropBone = 18905, PropPlacement = {0.09, -0.06, 0.05, 300.0, 150.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["donut2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut2", AnimationOptions =
			{ Prop = 'prop_donut_02', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 100.0, 290.0},
				EmoteMoving = true, EmoteLoop = true, }},

		--Jim-CatCafe
		["boba1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 1", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaA', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 2", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaB', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 3", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaC', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba4"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 4", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaD', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["mochi"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Mochi", AnimationOptions =
			{ Prop = 'denis3d_catcafe_plateD', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		--Jim-CatCafe
	["uwu1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
	{ Prop = 'uwu_sml_drink', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
		EmoteLoop = true, EmoteMoving = true, }},
	["uwu2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
	{ Prop = 'uwu_lrg_drink', PropBone = 28422, PropPlacement = {0.03, 0.0, -0.08, 0.0, 0.0, 130.0},
		EmoteLoop = true, EmoteMoving = true, }},
	["uwu3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
	{ Prop = 'uwu_cup_straw', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
		EmoteLoop = true, EmoteMoving = true, }},
	["uwu4"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
	{ Prop = 'uwu_mug', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
		EmoteLoop = true, EmoteMoving = true, }},
	["uwu5"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
	{ Prop = 'uwu_pastry', PropBone = 18905, PropPlacement = {0.16, 0.06, -0.03, -50.0, 16.0, 60.0},
		EmoteMoving = true, }},
	["uwu6"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
	{ Prop = 'uwu_cookie', PropBone = 18905, PropPlacement = {0.16, 0.08, -0.01, -225.0, 20.0, 60.0},
		EmoteMoving = true, }},
	["uwu7"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
	{ Prop = 'uwu_sushi', PropBone = 18905, PropPlacement = {0.18, 0.03, 0.02, -50.0, 16.0, 60.0},
		EmoteMoving = true, }},
	["uwu8"] = {"amb@world_human_seat_wall_eating@male@both_hands@idle_a", "idle_c", "", AnimationOptions =
	{ Prop = 'uwu_eggroll', PropBone = 60309, PropPlacement = {0.10, 0.03, 0.08, -95.0, 60.0, 0.0},
		EmoteMoving = true, }},
	["uwu9"] = {"anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "", AnimationOptions =
	{ Prop = "uwu_salad_bowl", PropBone = 60309, PropPlacement = {0.0, 0.0300, 0.0100, 0.0, 0.0, 0.0},
		SecondProp = 'uwu_salad_spoon', SecondPropBone = 28422, SecondPropPlacement = {0.0, 0.0 ,0.0, 0.0, 0.0, 0.0},
		EmoteLoop = true, EmoteMoving = true, }},
	["uwu10"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
	{ Prop = 'uwu_sandy', PropBone = 18905, PropPlacement = {0.16, 0.08, 0.05, -225.0, 20.0, 60.0},
		EmoteMoving = true, }},
	["uwu11"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
	{ Prop = 'uwu_cupcake', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.03, 0.0, 0.0, 130.0},
		EmoteLoop = true, EmoteMoving = true, }},
	["uwu12"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
	{ Prop = 'uwu_btea', PropBone = 28422, PropPlacement = {0.02, 0.0, -0.05, 0.0, 0.0, 130.0},
		EmoteLoop = true, EmoteMoving = true, }},
	["uwu13"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
	{ Prop = 'uwu_gdasik', PropBone = 18905, PropPlacement = {0.16, 0.08, 0.02, -225.0, 20.0, 60.0},
		EmoteMoving = true, }},		
		
		-- JIM WHITE WIDOW
		
		["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
		{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
			EmoteMoving = true, EmoteDuration = 2600 }},

		--Jim-Tequilala
		["whiskeyb"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Whiskey Bottle", AnimationOptions =
			{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.08, 0.0, 0.05, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["rumb"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Rum Bottle", AnimationOptions =
			{ Prop = "prop_rum_bottle", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["icream"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Irish Cream Bottle", AnimationOptions =
			{ Prop = "prop_bottle_brandy", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ginb"] =  {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Gin Bottle", AnimationOptions =
			{ Prop = "prop_tequila_bottle", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		--["vodkab"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Vodka Bottle", AnimationOptions =
		--	{ Prop = 'prop_vodka_bottle', PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
		--		EmoteMoving = true, EmoteLoop = true }},
		["browncup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Brown Cup", AnimationOptions =
			{ Prop = 'v_serv_bs_mug', PropBone = 28422, PropPlacement = {0.03, -0.02, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Crisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke2"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_c", "Smoke 2", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke3"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke4"] = {"amb@world_human_smoking@female@idle_a", "idle_b", "Smoke 4", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["bong"] = {"anim@safehouse@bong", "bong_stage3", "Bong", AnimationOptions =
			{ Prop = 'hei_heist_sh_bong_01', PropBone = 18905, PropPlacement = {0.10,-0.25,0.0,95.0,190.0,180.0}, }},
		["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'p_amb_coffeecup_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["whiskey"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
			{ Prop = 'prop_drink_whisky', PropBone = 28422, PropPlacement = {0.01, -0.01, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["beer"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["cup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Cup", AnimationOptions =
			{ Prop = 'prop_plastic_cup_02', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["donut"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut", AnimationOptions =
			{ Prop = 'prop_amb_donut', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["burger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger", AnimationOptions =
			{ Prop = 'prop_cs_burger_01', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
			{ Prop = 'prop_sandwich_01', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["soda"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Soda", AnimationOptions =
			{ Prop = 'prop_ecola_can', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ego Bar", AnimationOptions =
			{ Prop = 'prop_choc_ego', PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, }},
		["wine"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Wine", AnimationOptions =
			{ Prop = 'prop_drink_redwine', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["flute"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Flute", AnimationOptions =
			{ Prop = 'prop_champ_flute', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["champagne"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Champagne", AnimationOptions =
			{ Prop = 'prop_drink_champ', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["cigar"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar", AnimationOptions =
			{ Prop = 'prop_cigar_02', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cigar2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar 2", AnimationOptions =
			{ Prop = 'prop_cigar_01', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		--["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
		--	{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
		--		EmoteMoving = true, EmoteDuration = 2600 }},
		["cig"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cig", AnimationOptions =
			{ Prop = 'prop_amb_ciggy_01', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["clean"] = {"timetable@floyd@clean_kitchen@base", "base", "Clean", AnimationOptions =
			{ Prop = "prop_sponge_01", PropBone = 28422, PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["clean2"] = {"amb@world_human_maid_clean@", "base", "Clean 2", AnimationOptions =
			{ Prop = "prop_sponge_01", PropBone = 28422, PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["coke"] = { "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", "Coke", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
		["oxy"] = { "mp_suicide", "pill", "Oxy", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},

		--Jim-Henhouse
	["browncup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Brown Cup", AnimationOptions =
		{ Prop = 'v_serv_bs_mug', PropBone = 28422, PropPlacement = {0.03, -0.02, 0.0, 0.0, 0.0, 0.0},
			EmoteLoop = true, EmoteMoving = true, }},
	["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
		{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
			EmoteMoving = true, EmoteLoop = true }},
	["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
		{ Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
		{ Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
		{ Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
		{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true }},
	["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
		{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
			EmoteLoop = true, EmoteMoving = true, }},
	["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
		{ Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
		{ Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
		{ Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
		{ Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
		{ Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
		{ Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
		{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},
	["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
		{ Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
			EmoteMoving = true, EmoteLoop = true, }},	
	},
}
