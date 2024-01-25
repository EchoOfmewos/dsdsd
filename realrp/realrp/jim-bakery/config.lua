Config = {
	Debug = false,  -- True to show debug boxes and messages
	Lan = "en", -- Pick your language here
	img = "ox_inventory/web/images/", -- Change this to your inventory's name and image folder

	Inv = "ox", -- set to "ox" if using OX Inventory
	Menu = "ox", -- set to "ox" if using ox_lib context menus
	Notify = "ox",
	ProgressBar = "ox", -- set to "ox" if using ox_lib progressbar

	MultiCraft = true,
	MultiCraftAmounts = { [1], [5], [10] },

	JimConsumables = true, -- Enable this to disable this scripts control of food/drink items
	JimShop = false, 	-- Enable this to use jim-shops for buying ingredients

	craftCam = true,		-- Disable this to stop crafting cameras

	--Simple Toy Reward Support - disabled if JimConsuambles = true--
	RewardItem = "", --Set this to the name of an item eg "bento"
	RewardPool = { -- Set this to the list of items to be given out as random prizes when the item is used - can be more or less items in the list
		"",
		"",
		"",
	},
	Items = {
		label = "bakeShop",
		slots = 14,
		items = {
			{ name = 'flour', price = 5, amount = 200, info = {}, type = 'item', slot = 1, },
			{ name = 'jimeggs', price = 5, amount = 200, info = {}, type = 'item', slot = 2, },
			{ name = 'sugar', price = 5, amount = 200, info = {}, type = 'item', slot = 3, },
			{ name = 'vanillaextract', price = 5, amount = 200, info = {}, type = 'item', slot = 4, },
			{ name = 'chocolate', price = 5, amount = 200, info = {}, type = 'item', slot = 5, },
			{ name = 'heavycream', price = 5, amount = 200, info = {}, type = 'item', slot = 6, },
			{ name = 'cocoapowder', price = 5, amount = 200, info = {}, type = 'item', slot = 7, },
			{ name = 'icecream', price = 5, amount = 200, info = {}, type = 'item', slot = 8, },
			{ name = 'strawberry', price = 5, amount = 200, info = {}, type = 'item', slot = 9, },
			{ name = 'milk', price = 5, amount = 200, info = {}, type = 'item', slot = 10, },
			{ name = 'ham', price = 5, amount = 200, info = {}, type = 'item', slot = 11, },
			{ name = 'cheddar', price = 5, amount = 200, info = {}, type = 'item', slot = 12, },
			{ name = 'lettuce', price = 5, amount = 200, info = {}, type = 'item', slot = 13, },
			{ name = 'icing', price = 5, amount = 200, info = {}, type = 'item', slot = 14, },
		},
	},
	Locations = {
		{ -- Hanes Trey Baker
			zoneEnable = true,
			job = "bakery",
			label = "Trey Bakery",
			autoClock = { enter = false, exit = true, },
			zones = {
				vec2(54.22, -141.9),
				vec2(44.14, -137.95),
				vec2(54.96, -109.40),
				vec2(65.21, -113.19),
			},
			blip = vec3(52.43, -131.79, 55.46),	blipcolor = 48, blipsprite = 79, blipdisp = 6, blipscale = 0.7, blipcat = nil,
			garage = { spawn = vec4(56.69, -106.82, 55.92, 249.86),
						out = vec4(55.09, -110.0, 56.0, 336.65),
						list = { "panto", "burrito3", } },
		},
		{ -- K4MB1's Trey Baker
			zoneEnable = false,
			job = "bakery",
			label = "Trey Bakery",
			autoClock = { enter = false, exit = true, },
			zones = {
				vector2(62.51, -145.31),
				vec2(44.14, -137.95),
				vec2(54.96, -109.40),
				vector2(74.97, -116.71),
			},
			blip = vec3(52.43, -131.79, 55.46),	blipcolor = 48, blipsprite = 79, blipdisp = 6, blipscale = 0.7, blipcat = nil,
			garage = { spawn = vector4(44.66, -140.31, 55.05, 69.17),
						out = vector4(44.91, -137.53, 55.36, 158.48),
						list = { "panto", "burrito3", } },
		},
	},
}

Crafting = {
	Oven = {
		["anim"] = { bartext = Loc[Config.Lan].progress["baking"], bartime = 4000, animDict = "anim@heists@prison_heiststation@cop_reactions", anim = "cop_b_idle", flag = 3 },
		{ ["tbcakebase"] = { ["dough"] = 1, } },
		{ ['tbcookie'] = { ["dough"] = 1, ['chocolate'] = 1, }, ["amount"] = 3, },
		{ ['tbcupcake'] = { ['dough'] = 1, ["icing"] = 1 }, ["amount"] = 2 },
		{ ['tbsweetroll'] = { ['dough'] = 1, ["icing"] = 1 } },
		{ ['tbdonut'] = { ['dough'] = 1, }, ["amount"] = 2, },
		{ ['tblongjohn'] = { ["dough"] = 1, ['chocolatesyrup'] = 1, }, ["amount"] = 2 },
		{ ['tbbrownie'] = { ["dough"] = 1, ["chocolatesyrup"] = 1 }, ["amount"] = 2 },
		{ ['tbcroissant'] = { ["dough"] = 1, } },
		{ ['tbchoccroiss'] = { ["dough"] = 1, ["chocolatesyrup"] = 1, } },
		{ ['tbbread'] = { ["dough"] = 1, } },
		{ ['tbbrownbread'] = { ["dough"] = 1, } },
		{ ['tbwhitebread'] = { ["dough"] = 1, } },
	},
	Sandwich = {
		["anim"] = { bartext = Loc[Config.Lan].progress["making"], bartime = 2000, animDict = "mp_arresting", anim = "a_uncuff", flag = 8 },
		{ ['breadslice'] = { ["tbbread"] = 1, }, ["amount"] = 6, },
		{ ['sandwich'] = { ["breadslice"] = 2, ["lettuce"] = 1, ["ham"] = 1 } },
		{ ['tosti'] = { ["breadslice"] = 2, ["cheddar"] = 1,  } },
	},
	Prepare = {
		["anim"] = { bartext = Loc[Config.Lan].progress["preparing"], bartime = 2000, animDict = "anim@heists@prison_heiststation@cop_reactions", anim = "cop_b_idle", flag = 3 },
		{ ['dough'] = {
				['flour'] = 1,
				['jimeggs'] = 1,
				['sugar'] = 1,
				['heavycream'] = 1,
		}, ["amount"] = 2 },
		{ ['chocolatesyrup'] = {
				['chocolate'] = 1,
				['flour'] = 1,
				['jimeggs'] = 1,
				['sugar'] = 1,
		} },
		{ ['tbcake'] = { ['tbcakebase'] = 1, ["icing"] = 1 } },
		{ ['tbchoccake'] = { ["tbcakebase"] = 1, ['chocolatesyrup'] = 1, } },
		{ ['tbbirthdaycake'] = { ["tbcakebase"] = 1, ['icing'] = 2, } },
	},
	Drinks = {
		["anim"] = { bartext = Loc[Config.Lan].progress["blending"], bartime = 2000, animDict = "mp_ped_interaction", anim = "handshake_guy_a", flag = 8 },
		{ ['milkshake'] = { ['milk'] = 1, ['icecream'] = 1, } },
		{ ['strawberrymilkshake'] = { ['milk'] = 1, ['icecream'] = 1, ['strawberry'] = 1, } },
		{ ['chocolatemilkshake'] = { ['milk'] = 1, ['icecream'] = 1, ['chocolate'] = 1, } },
	},
	Coffee = {
		["anim"] = { bartext = Loc[Config.Lan].progress["pouring"], bartime = 2000, animDict = "mp_ped_interaction", anim = "handshake_guy_a", flag = 8 },
		{ ["coffee"] = {} },
	},
	Soda = {
		["anim"] = { bartext = Loc[Config.Lan].progress["pouring"], bartime = 2000, animDict = "mp_ped_interaction", anim = "handshake_guy_a", flag = 8 },
		{ ["ecola"] = {} },
		{ ["ecolalight"] = {} },
		{ ["sprunk"] = {} },
		{ ["sprunklight"] = {} },
	},
}

-- Load Core export here
QBCore = exports["qb-core"]:GetCoreObject()