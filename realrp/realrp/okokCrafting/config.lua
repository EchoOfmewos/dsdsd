Config, Locales = {}, {}

Config.Debug = false

Config.DoubleXP = false

Config.EventPrefix = 'okokCrafting'

Config.xpColumnsName = 'xp'

Config.qbPrefix = 'qb'

Config.QBCorePrefix = 'QBCore'

Config.Locale = 'en' -- en / pt / gr / fr / de

Config.UseOkokTextUI = true -- true = okokTextUI (I recommend you using this since it is way more optimized than the default ShowHelpNotification) | false = ShowHelpNotification

Config.Key = 38 -- [E] Key to open the interaction, check here the keys ID: https://docs.fivem.net/docs/game-references/controls/#controls

Config.HideMinimap = true -- If true it'll hide the minimap when the Crafting menu is opened

Config.ShowBlips = true -- If true it'll show the crafting blips on the map

Config.ShowFloorBlips = true -- If true it'll show the crafting markers on the floor

Config.ShowAllCrafts = true -- This option will show all crafts even if you don't have enough level to craft it

Config.UseXP = true -- If you want to use the XP system or not

Config.SameLevelForAllTables = false -- Use the same level in all the crafting tables

Config.MaxLevel = 20 -- Max level on the workbenches

Config.StartXP = 100 -- First level XP

Config.LevelMultiplier = 1.05 -- How much the XP needed increases per level (1.05 = 5% | level 1 = 100 | level 2 = 205 | etc...)

Config.GiveXPOnCraftFailed = true -- If the player receives XP when he fails the craft of an item

Config.SetXPCommand = 'setcraftxp' -- Set the players XP

Config.SetLevelCommand = 'setcraftlevel' -- Set the players level

Config.CraftRadius = 5 -- if you are further it will stop the craft

Config.MaxCraftsPerWorkbench = 10 -- how many items can be in the queue at the same time

Config.UseCategories = true

Config.AdminGroups = {
	'god',
	'admin',
	'mod'
}

Config.itemNames = { -- Format: id = label | In case the item starts with a number make sure to set it in this format: ['9mm'] = 9mm ammo,
	metalscrap = 'Metal Scrap',
	gun_grip = 'Weapon Grip Part',
	gun_muzzle = 'Weapon Muzzle Part',
	gun_stock = 'Weapon Stock Part',
	gun_barrel = 'Weapon Barrel Part',
	wrench = 'Wrench',
	weapon_petrolcan = 'Gas Can',
	weapon_stickybomb = 'Sticky Bomb',
	weapon_assaultrifle = 'Assault Rifle',
	weapon_ak47 = 'AK 47',
	weapon_glock20 = 'Glock 20',
	weapon_fnx45 = 'FNX 45',
	weapon_m45a1 = 'Pistol M45A1',
	weapon_deagle = 'Desert Eagle',
	weapon_pmxfm = 'PMX FM',
	weapon_glock19x = 'G19X XL',
	weapon_glock19 = 'GLOCK 19',
	weapon_glock40 = 'GLOCK 40',
	weapon_glock17s = 'GLOCK 17 (WITH SWITCH)',
	weapon_glock40s = 'GLOCK 40 (WITH SWITCH)',
	weapon_pd509 = 'PD 509',
	weapon_rdp = 'HELLCAT RDP',
	weapon_assaultsmg = 'P90',
	m45a1_supp = 'M45A1 Supressor',
	m45a1_flsh = 'M45A1 Flashlight',
	weapon_g19 = 'Glock 17',
	advancedrepairkit = 'Advanced Repair Kit',
	iron = 'Iron',
	bandage = 'Bandage',
	firstaid = 'First Aid',
	['10kgoldchain'] = '10kgoldchain',
	plastic = 'Plastic',
	copper = 'Copper',
	aluminum = 'Aluminum',
	steel = 'Steel',
	iron = 'Iron',
	cash = 'Money',
	boostingtablet = 'Boosting Laptop',
	glass = 'Glass',
	usb3 = 'Meth Pink USB',
	methkey = 'Meth Lab Keycard',
	fake_plate = 'Fake Plate',
	diamond = 'Diamonds',
	thermite = 'Thermite',
	ironoxide = 'Iron Oxide',
	metallicaluminum = 'Metallic Aluminum',
	atmhacker = 'Atm Hacking System',
	moneywash_ticket = 'Money Wash Ticket',
	moneywash_keycard = 'Money Wash Entry',
	scrap = 'Scrap',
	black_money = 'Dirty Money',
	blackdiamond = 'Black Diamond',
	racingtablet = 'Racing Tablet',
	lockpick = 'Lockpick',
	advancedlockpick = 'Advanced Lockpick',
	spray = 'Spray (Tagging)',
	spray_remover = 'Spray Removal',
	bobcatkeycard = 'Bobcat Keycard',
	c4_bomb = 'C4 Bomb',
	markedbills = 'Blood Money',
	basicdrill = 'Basic Drill',
	basicdecrypter = 'Basic Decrypter',
	laptop_green = 'Green Laptop',
	at_suppressor_light = 'Suppressor (Works w M45A1, FNX)',
	phone_bomb = 'Detonates Remote Bomb',
	remote_bomb = 'Remote Car Bomb',
	ignition_bomb = 'Ignition Car Bomb',
	impact_bomb = 'Impact Car Bomb',
	handcuffs = 'Handcuffs',
	cache_key = 'Key to Open Briefcase',
	laptop = 'Laptop (Gang Use)',
	harness = 'Harness',
	gopro = 'Go Pro Camera',
	firelighter = 'Light Fires Anywhere',
	drill = 'Drill',
	spanner = 'Spanner',
	c4 = 'C4 Controlled Bomb',
	impact_driver = 'Remove Wheels',
	at_clip_drum_pistol = '50 Round Pistol Drum Mag For (G19X, G19, PD Combat, G40, G18C)',
	at_clip_100_pistol = '100 Round Mag For (G19X, G40, PDPistol, G40S)',
	weaponrepairkit = 'Weapon Repair Kit',
	wrench = 'Wrench',
	packofscrews = 'Pack of Screws'
}

Config.Crafting = {
	{
		coordinates = vector3(-1662.61, -534.4, 35.38), -- coordinates of the table
		radius = 1, -- radius of the table
		showMapBlip = true,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.6, blipText = 'Crafting'}, -- to get blips and colors check this: https://wiki.gtanet.work/index.php?title=Blips
		tableName = 'MechanicCrafter', -- Title
		tableID = 'general6', -- make a different one for every table with NO spaces
		crafts = { -- What items are available for crafting and the recipe -- Recipe id
			'fake_plate',
			'harness',
		},
		jobs = { -- What jobs are able to open the workbench
			['mechanic'] = {
				['manager'] = true,
			},
			['lscustoms'] = {
				['manager'] = true,
			},
			['stormautos'] = {
				['manager'] = true,
			},
			['quickrepairs'] = {
				['manager'] = true,
			},
			['gasmonkey'] = {
				['manager'] = true,
			},
			['mudshop'] = {
				['manager'] = true,
			},
			['harshop'] = {
				['manager'] = true,
			},
			['stopngo'] = {
				['manager'] = true,
			},
			['grease'] = {
				['manager'] = true,
			},
			['mudshoptwo'] = {
				['manager'] = true,
			},
			['slater'] = {
				['manager'] = true,
			},
			['alvarez'] = {
				['manager'] = true,
			},
		},
	},
	{
		coordinates = vector3(-1600.19, -418.88, 19.72),
		radius = 1,
		showMapBlip = false,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = 'Crafting'},
		tableName = 'Weapons',
		tableID = 'general2',
		crafts = {
			'at_clip_100_pistol',
			'at_clip_drum_pistol',
			'weapon_stickybomb',
			'weapon_petrolcan',
			'weapon_glock19x',
			'weapon_glock19',
			'weapon_glock17s',
			'weapon_glock40',
			'weapon_glock40s',
			'weapon_pd509',
			'weapon_rdp',
			'm45a1',
			'g17',
			'glock20',
			'fnx45',
			'weapon_assaultsmg',
			'pmxfm',
			'ak47',
			'at_suppressor_light',
			'phone_bomb',
			'remote_bomb',
			'ignition_bomb',
			'impact_bomb',
			'c4',
			'firelighter',
			'spanner',
			'drill',
			'impact_driver',
			'metallicaluminum',
			'ironoxide',
			'laptop',
			'gopro',
			'advancedrepairkit',
			'handcuffs',
			'cache_key',
			'weaponrepairkit',

		},
		jobs = {
			['all'] = true -- For everyone to be able to open the workbench
		},
	},
	{
		coordinates = vector3(1222.1744384766, -488.03045654297, 66.935554504395),
		radius = 1,
		showMapBlip = false,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = 'Crafting'},
		tableName = 'Electronics',
		tableID = 'general3',
		crafts = {
			'boostingtablet',
		},
		jobs = {
			['all'] = true -- For everyone to be able to open the workbench
		},
	},
	{
		coordinates = vector3(-1107.74, 2722.72, 18.8),
		radius = 1,
		showMapBlip = false,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = 'Crafting'},
		tableName = 'Hacking',
		tableID = 'general4',
		crafts = {
			'thermite',
		},
		jobs = {
			['all'] = true -- For everyone to be able to open the workbench
		},
	},
	{
		coordinates = vector3(472.67, -1311.73, 29.22),
		radius = 1,
		showMapBlip = false,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.9, blipText = 'Crafting'},
		tableName = 'HACKSYSTEMS',
		tableID = 'general5',
		crafts = {
			'atmhacker',
			'moneywash_keycard',
		 	'moneywash_ticket',
		},
		jobs = {
			['all'] = true -- For everyone to be able to open the workbench
		},
	},
	{
		coordinates = vector3(-1174.93, -494.6, 35.68),
		radius = 1,
		showMapBlip = true,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.6, blipText = 'Crafting'},
		tableName = 'PublicCrafting',
		tableID = 'general6',
		crafts = {
			'lockpick',
			'advancedlockpick',
			'spray',
			'spray_remover',
		},
		jobs = {
			['all'] = true -- For everyone to be able to open the workbench
		},
	},
	{
		coordinates = vector3(143.37794494629, -1857.9150390625, 24.374446868896),
		radius = 1,
		showMapBlip = false,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.6, blipText = 'Crafting'},
		tableName = 'BobcatSecurity',
		tableID = 'general9',
		crafts = {
			'bobcatkeycard',
			'thermite',
			'c4_bomb',
		},
		jobs = {
			['all'] = true -- For everyone to be able to open the workbench
		},
	},
	{
		coordinates = vector3(-3239.9343261719, 1091.2662353516, 7.4788780212402),
		radius = 1,
		showMapBlip = false,
		showBlipRadius = 50,
		blip = {blipId = 89, blipColor = 3, blipScale = 0.6, blipText = 'Crafting'},
		tableName = 'FleecaBank',
		tableID = 'general11',
		crafts = {
			'basicdecrypter',
			'basicdrill',
			'laptop_green',
		},
		jobs = {
			['all'] = true -- For everyone to be able to open the workbench
		},
	},
}

Config.Crafts = {
	['weapon_petrolcan'] = {
		item = 'weapon_petrolcan', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'blackdiamond', 30, true, false},
			{'diamond', 30, true, false},
			{'cash', 10000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives', -- Used as ID and Name of the category
	},
	['weapon_stickybomb'] = {
		item = 'weapon_stickybomb', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'blackdiamond', 200, true, false},
			{'diamond', 150, true, false},
			{'cash', 50000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives', -- Used as ID and Name of the category
	},
	['weapon_pd509'] = {
		item = 'weapon_pd509', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 50, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['weapon_rdp'] = {
		item = 'weapon_rdp', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 4500, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['weapon_glock17s'] = {
		item = 'weapon_glock17s', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 90, true, false},
			{'cash', 4000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['weapon_glock40s'] = {
		item = 'weapon_glock40s', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 150, true, false},
			{'cash', 4000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['weapon_glock40'] = {
		item = 'weapon_glock40', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['weapon_glock19'] = {
		item = 'weapon_glock19', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['weapon_glock19x'] = {
		item = 'weapon_glock19x', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['weapon_assaultsmg'] = {
		item = 'weapon_assaultsmg', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 65, true, false},
			{'cash', 4000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['pmxfm'] = {
		item = 'weapon_pmxfm', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['g17'] = {
		item = 'weapon_g19', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['glock20'] = {
		item = 'weapon_glock20', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['fnx45'] = {
		item = 'weapon_fnx45', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 1, -- What level he needs to craft this item
		xpPerCraft = 10, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['ak47'] = {
		item = 'weapon_ak47', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 150, -- Time to craft (in seconds)
		levelNeeded = 3, -- What level he needs to craft this item
		xpPerCraft = 25, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 55, true, false},
			{'cash', 5000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},

	['m45a1'] = {
		item = 'weapon_m45a1', -- Item id and name of the image
		amount = 1, -- Amount of the item the player will receive
		maxCraft = 1, -- Max amount of crafts at a time
		successCraftPercentage = 95, -- Percentage of successful craft 0 = 0% | 50 = 50% | 100 = 100%
		isItem = true, -- if true = is item | if false = is weapon
		isDisassemble = false, -- true = craft | false = disassemble
		time = 120, -- Time to craft (in seconds)
		levelNeeded = 0, -- What level he needs to craft this item
		xpPerCraft = 20, -- How much XP he receives after crafting this item
		recipe = { -- Recipe to craft it
			{'gun_grip', 1, true, false},
			{'gun_stock', 1, true, false},
			{'gun_muzzle', 1, true, false},
			{'gun_barrel', 1, true, false},
			{'diamond', 35, true, false},
			{'cash', 2000, true, true},	-- item/amount/if the item should be removed when crafting/if it's money
		},
		job = { -- What jobs can craft this item in this workbench
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapons', -- Used as ID and Name of the category
	},
	['m45a1_flsh'] = {
		item = 'm45a1_flsh',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 100,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'diamond', 10, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Attachments',
	},
	['m45a1_supp'] = {
		item = 'm45a1_supp',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 100,
		levelNeeded = 0,
		xpPerCraft = 10,
		recipe = {
			{'diamond', 10, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Attachments',
	},
	['advancedrepairkit'] = {
		item = 'advancedrepairkit',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 100,
		levelNeeded = 1,
		xpPerCraft = 15,
		recipe = {
			{'cash', 200, true, true},
			{'scrap', 10, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Miscellaneous',
	},
	['boostingtablet'] = {
		item = 'boostingtablet',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 180,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 100, true, false},
			{'cash', 15000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Electronics',
	},
	['usb3'] = {
		item = 'usb3',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'metalscrap', 190, true, false},
			{'cash', 155000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Hacking',
	},
	['methkey'] = {
		item = 'methkey',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'iron', 190, true, false},
			{'cash', 120000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Hacking',
	},
	['fake_plate'] = {
		item = 'fake_plate',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 1000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'FakePlates',
	},
	['harness'] = {
		item = 'harness',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 20, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Harness',
	},
	['thermite'] = {
		item = 'thermite',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'ironoxide', 50, true, false},
			{'metallicaluminum', 50, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Boom Equipment',
	},
	['c4_bomb'] = {
		item = 'c4_bomb',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'ironoxide', 100, true, false},
			{'metallicaluminum', 100, true, false},
			{'cash', 10000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives',
	},
	['atmhacker'] = {
		item = 'atmhacker',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 80, true, false},
			{'cash', 2000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Certain Heist Equipment',
	},
	['moneywash_keycard'] = {
		item = 'moneywash_keycard',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 150, true, false},
			{'diamond', 30, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Certain Heist Equipment',
	},
	['moneywash_ticket'] = {
		item = 'moneywash_ticket',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 100, true, false},
			{'markedbills', 1000, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Certain Heist Equipment',
	},
	['racingtablet'] = {
		item = 'racingtablet',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 30, true, false},
			{'cash', 500, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Certain Heist Equipment',
	},
	['lockpick'] = {
		item = 'lockpick',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 30, true, false},
			{'cash', 1000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Certain Heist Equipment',
	},
	['advancedlockpick'] = {
		item = 'advancedlockpick',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 70, true, false},
			{'cash', 2000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Special Equipment',
	},
	['at_suppressor_light'] = {
		item = 'at_suppressor_light',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'diamond', 50, true, false},
			{'cash', 7000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Components',
	},
	['ammo9'] = {
		item = 'ammo9',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 5, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Ammo',
	},
	['ammo44'] = {
		item = 'ammo44',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 20, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Ammo',
	},
	['ammo45'] = {
		item = 'ammo45',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 25, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Ammo',
	},
	['ammo38'] = {
		item = 'ammo38',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 25, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Ammo',
	},
	['ammorifle'] = {
		item = 'ammorifle',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 30, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Ammo',
	},
	['spray'] = {
		item = 'spray',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 300, true, true},
			{'scrap', 30, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Tagging',
	},
	['spray_remover'] = {
		item = 'spray_remover',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 500, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Tagging',
	},
	['bobcatkeycard'] = {
		item = 'bobcatkeycard',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 100, true, false},
			{'cash', 10000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Bobcat',
	},
	['laptop_green'] = {
		item = 'laptop_green',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 170, true, false},
			{'cash', 20000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Fleeca',
	},
	['basicdecrypter'] = {
		item = 'basicdecrypter',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 60, true, false},
			{'cash', 2000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Fleeca',
	},
	['basicdrill'] = {
		item = 'basicdrill',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'cash', 2000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Fleeca',
	},
	['phone_bomb'] = {
		item = 'phone_bomb',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 40, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives',
	},
	['remote_bomb'] = {
		item = 'remote_bomb',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 60, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives',
	},
	['ignition_bomb'] = {
		item = 'ignition_bomb',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 80, true, false},
			{'cash', 7000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives',
	},
	['impact_bomb'] = {
		item = 'impact_bomb',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 80, true, false},
			{'cash', 10000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives',
	},
	['drill'] = {
		item = 'drill',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 35, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Materials',
	},
	['spanner'] = {
		item = 'spanner',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 35, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Materials',
	},
	['impact_driver'] = {
		item = 'impact_driver',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 35, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Materials',
	},
	['firelighter'] = {
		item = 'firelighter',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'blackdiamond', 25, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives',
	},
	['handcuffs'] = {
		item = 'handcuffs',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 150, true, false},
			{'cash', 1000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Materials',
	},
	['cache_key'] = {
		item = 'cache_key',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 100, true, false},
			{'cash', 1000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Materials',
	},
	['metallicaluminum'] = {
		item = 'metallicaluminum',
		amount = 10,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 25, true, false},
			{'blackdiamond', 10, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Materials',
	},
	['ironoxide'] = {
		item = 'ironoxide',
		amount = 10,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 25, true, false},
			{'blackdiamond', 10, true, false},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Materials',
	},
	['laptop'] = {
		item = 'laptop',
		amount = 1,
		maxCraft = 1,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 200,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 50, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Laptop',
	},
	['gopro'] = {
		item = 'gopro',
		amount = 1,
		maxCraft = 1,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 200,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 100, true, false},
			{'cash', 2000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Laptop',
	},
	['c4'] = {
		item = 'c4',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 100,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'scrap', 100, true, false},
			{'blackdiamond', 100, true, false},
			{'cash', 5000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Explosives',
	},
	['at_clip_drum_pistol'] = {
		item = 'at_clip_drum_pistol',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'wrench', 1, true, false},
			{'plastic', 300, true, false},
			{'aluminum', 300, true, false},
			{'steel', 400, true, false},
			{'diamond', 150, true, false},
			{'cash', 25000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Components',
	},
	['at_clip_100_pistol'] = {
		item = 'at_clip_100_pistol',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'wrench', 1, true, false},
			{'plastic', 300, true, false},
			{'aluminum', 300, true, false},
			{'steel', 400, true, false},
			{'diamond', 250, true, false},
			{'blackdiamond', 150, true, false},
			{'cash', 45000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Components',
	},
	['weaponrepairkit'] = {
		item = 'weaponrepairkit',
		amount = 1,
		maxCraft = 10,
		successCraftPercentage = 90,
		isItem = true,
		isDisassemble = false,
		time = 60,
		levelNeeded = 0,
		xpPerCraft = 15,
		recipe = {
			{'wrench', 5, true, false},
			{'packofscrews', 5, true, false},
			{'cash', 3000, true, true},
		},
		job = {
			''
		},
		data = {}, -- Used to pass additional data, such as metadata
		category = 'Weapon Components',
	},
}

-------------------------- DISCORD LOGS

-- To set your Discord Webhook URL go to server.lua, line 3

Config.BotName = 'ServerName' -- Write the desired bot name

Config.ServerName = 'ServerName' -- Write your server's name

Config.IconURL = '' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.StartCraftWebhookColor = '16127'

Config.CancelWebhookColor = '16776960'

Config.ClaimCraftWebhookColor = '65352'

Config.FailedCraftWebhookColor = '16711680'

-------------------------- LOCALES (DON'T TOUCH)

function _L(id) 
	if Locales[Config.Locale][id] then 
		return Locales[Config.Locale][id] 
	else 
		print('Locale '..id..' doesn\'t exist') 
	end 
end