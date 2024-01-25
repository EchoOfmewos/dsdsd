Crafting = {
	Nos = {
		{ ["nos"] = { ["noscan"] = 10000, } },
		{ ["noscan"] = { ["steel"] = 10000, } },
		{ ["noscolour"] = { ["plastic"] = 10000, } },
	},
	Repairs = {
		{ ["mechanic_tools"] = { ["iron"] = 15, } },
		{ ["ducttape"] = { ["plastic"] = 15, } },
		{ ["newoil"] = { ["plastic"] = 15, } },
		{ ["sparkplugs"] = { ["metalscrap"] = 15, } },
		{ ["carbattery"] = { ["metalscrap"] = 15, ["plastic"] = 15 } },
		{ ["axleparts"] = { ["steel"] = 20, } },
		{ ["sparetire"] = { ["rubber"] = 10, } },
	},
	Tools = {
		{ ["toolbox"] = { ["iron"] = 15, } },
		{ ["paintcan"] = { ["aluminum"] = 20, } },

		{ ["tint_supplies"] = { ["iron"] = 30, } },
		{ ["underglow_controller"] = { ["iron"] = 30, } },
		{ ["cleaningkit"] = { ["rubber"] = 1, } },

				-- Example : Delete me --
		-- Support for multiple items in recipes --
		-- Support for multiple resulting items --
		-- Support to limit items to certain job roles --
		{ ["cleaningkit"] = { ["rubber"] = 5, ["engine2"] = 1, ["plastic"] = 2 },
				["amount"] = 2, ["job"] = { ["mechanic"] = 4, ["tuner"] = 4, } },
				-- Example : Delete me --
	},
	Perform = {
		{ ["turbo"] = { ["steel"] = 45, ["iron"] = 30, ["metalscrap"] = 30, ["plastic"] = 45,  ["aluminum"] = 40 }, },
		{ ["car_armor"] = { ["steel"] = 45, ["glass"] = 30, ["rubber"] = 35, ["copper"] = 35, ["metalscrap"] = 25, ["plastic"] = 25 }, },
--		{ ["engine1"] = { ["steel"] = 35, ["glass"] = 20, ["rubber"] = 5, ["metalscrap"] = 5, ["plastic"] = 15 }, },
--		{ ["engine2"] = { ["steel"] = 45, ["glass"] = 30, ["rubber"] = 15, ["metalscrap"] = 15, ["plastic"] = 25 }, },
		{ ["engine3"] = { ["steel"] = 35, ["glass"] = 30, ["rubber"] = 25, ["metalscrap"] = 20, ["copper"] = 20, ["plastic"] = 15 }, },
		{ ["engine4"] = { ["steel"] = 45, ["glass"] = 45, ["rubber"] = 50, ["metalscrap"] = 55, ["copper"] = 45, ["plastic"] = 55 }, },
--		{ ["engine5"] = { ["steel"] = 200, } },
--		{ ["transmission1"] = { ["steel"] = 35, ["glass"] = 40, ["rubber"] = 35, ["metalscrap"] = 10, ["plastic"] = 35 }, },
		{ ["transmission2"] = { ["steel"] = 15, ["glass"] = 10, ["rubber"] = 15, ["metalscrap"] = 10, ["copper"] = 15, ["plastic"] = 15 }, },
		{ ["transmission3"] = { ["steel"] = 20, ["glass"] = 25, ["rubber"] = 15, ["metalscrap"] = 10, ["copper"] = 25, ["plastic"] = 15 }, },
		{ ["transmission4"] = { ["steel"] = 55, ["glass"] = 50, ["rubber"] = 45, ["metalscrap"] = 40, ["copper"] = 45, ["plastic"] = 45 }, },
--		{ ["brakes1"] = { ["steel"] = 65, } },
--		{ ["brakes2"] = { ["steel"] = 80, } },
		{ ["brakes3"] = { ["metalscrap"] = 40, ["glass"] = 45, ["steel"] = 45, ["copper"] = 45, ["aluminum"] = 40 }, },
--		{ ["suspension1"] = { ["steel"] = 35, } },
--		{ ["suspension2"] = { ["steel"] = 45, } },
--		{ ["suspension3"] = { ["steel"] = 55, } },
		{ ["suspension4"] = { ["metalscrap"] = 10, ["glass"] = 15, ["rubber"] = 25, ["copper"] = 15, ["aluminum"] = 20 }, },
		{ ["suspension5"] = { ["metalscrap"] = 30, ["glass"] = 25, ["rubber"] = 25, ["copper"] = 35, ["aluminum"] = 25 }, },
		{ ["bprooftires"] = { ["steel"] = 55, ["glass"] = 55, ["rubber"] = 40, ["metalscrap"] = 45, ["copper"] = 45, ["plastic"] = 45 }, },
--		{ ["drifttires"] = { ["rubber"] = 80, } },

		{ ["oilp1"] = { ["steel"] = 10, } },
		{ ["oilp2"] = { ["steel"] = 10, } },
		{ ["oilp3"] = { ["steel"] = 10, } },
		{ ["drives1"] = { ["steel"] = 10, } },
		{ ["drives2"] = { ["steel"] = 10, } },
		{ ["drives3"] = { ["steel"] = 10, } },
		{ ["cylind1"] = { ["steel"] = 10, } },
		{ ["cylind2"] = { ["steel"] = 10, } },
		{ ["cylind3"] = { ["steel"] = 10, } },
		{ ["cables1"] = { ["steel"] = 10, } },
		{ ["cables2"] = { ["steel"] = 10, } },
		{ ["cables3"] = { ["steel"] = 10, } },
		{ ["fueltank1"] = { ["steel"] = 10, } },
		{ ["fueltank2"] = { ["steel"] = 10, } },
		{ ["fueltank3"] = { ["steel"] = 10, } },
		{ ["antilag"] = { ["steel"] = 55, ["glass"] = 50, ["rubber"] = 45, ["metalscrap"] = 40, ["copper"] = 45, ["plastic"] = 45 }, },
	},
	Cosmetic = {
		{ ["hood"] = { ["metalscrap"] = 10, ["iron"] = 20, ["copper"] = 20, ["aluminum"] = 10 }, },
		{ ["roof"] = { ["plastic"] = 10, ["iron"] = 15, ["copper"] = 20, ["aluminum"] = 10 }, },
		{ ["spoiler"] = { ["plastic"] = 10, ["iron"] = 15, ["copper"] = 10 }, },
		{ ["bumper"] = { ["plastic"] = 10, ["iron"] = 25, ["copper"] = 20, ["glass"] = 10 }, },
		{ ["skirts"] = { ["plastic"] = 10, ["iron"] = 25, ["copper"] = 10, ["glass"] = 10 }, },
		{ ["exhaust"] = { ["iron"] = 25, ["plastic"] = 20, ["copper"] = 20 }, },
		{ ["seat"] = { ["plastic"] = 20, } },
		{ ["livery"] = { ["glass"] = 25 }, },
		{ ["tires"] = { ["rubber"] = 20, } },
		{ ["horn"] = { ["plastic"] = 10, } },
		{ ["internals"] = { ["plastic"] = 15, } },
		{ ["externals"] = { ["plastic"] = 15, } },
		{ ["customplate"] = { ["steel"] = 1, } },
		{ ["headlights"] = { ["plastic"] = 1, } },
		{ ["rims"] = { ["iron"] = 1, } },
		{ ["rollcage"] = { ["iron"] = 15, } },
	},
}

Stores = {
	NosItems = {
		label = Loc[Config.Lan]["stores"].nos,
		items = {
		},
	},
	RepairItems = {
		label = Loc[Config.Lan]["stores"].repairs,
		items = {
		},
	},
	ToolItems = {
		label = Loc[Config.Lan]["stores"].tools,
		items = {
		},
	},
	PerformItems = {
		label = Loc[Config.Lan]["stores"].perform,
		items = {
		},
	},
	CosmeticItems = {
		label = Loc[Config.Lan]["stores"].cosmetic,
		items = {
			--{ name = "harness", price = 0, amount = 50, info = {}, type = "item", },
		},
	},
}

-- No Touch
	-- This is corrective code to help simplify the stores for people removing the slot info
	-- Jim shops doesn"t use it but other inventories do
	-- Most people don"t even edit the slots, these lines generate the slot info autoamtically
Stores.CosmeticItems.slots = #Stores.CosmeticItems.items
for k in pairs(Stores.CosmeticItems.items) do Stores.CosmeticItems.items[k].slot = k end
Stores.PerformItems.slots = #Stores.PerformItems.items
for k in pairs(Stores.PerformItems.items) do Stores.PerformItems.items[k].slot = k end
Stores.ToolItems.slots = #Stores.ToolItems.items
for k in pairs(Stores.ToolItems.items) do Stores.ToolItems.items[k].slot = k end
Stores.RepairItems.slots = #Stores.RepairItems.items
for k in pairs(Stores.RepairItems.items) do Stores.RepairItems.items[k].slot = k end
Stores.NosItems.slots = #Stores.NosItems.items
for k in pairs(Stores.NosItems.items) do Stores.NosItems.items[k].slot = k end