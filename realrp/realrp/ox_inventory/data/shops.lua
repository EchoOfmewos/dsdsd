---wip types

---@class OxShop
---@field name string
---@field label? string
---@field blip? { id: number, colour: number, scale: number }
---@field inventory { name: string, price: number, count?: number, currency?: string }
---@field locations? vector3[]
---@field targets? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }[]
---@field groups? string | string[] | table<string, number> }
---@field model? number[]

return {
	General = {
		name = '711 Shop',
		blip = {
			id = 59, colour = 69, scale = 0.6
		}, inventory = {
			{ name = 'burger', price = 15 },
			{ name = 'water', price = 10 },
			{ name = 'prime_icepop', price = 20 },
			{ name = 'prime_lemonlime', price = 20 },
			{ name = 'cola', price = 10 },
			{ name = 'lighter', price = 10 },
			{ name = 'cubancigar', price = 20 },
			{ name = 'marlboro', price = 30 },
			{ name = 'redw', price = 30 },
			--{ name = 'vape', price = 50 },
			--{ name = 'liquid', price = 10 },
			{ name = 'rolling_paper', price = 15 },
			{ name = 'sodiumbicarbonate', price = 30 },
			{ name = 'sodiumcarbonate', price = 30 },
		}, locations = {
			vec3(26.276657104492, -1346.9226074219, 29.496953964233),
			vec3(-3039.7265625, 586.18634033203, 7.9088573455811),
			vec3(-3242.6389160156, 1001.8439941406, 12.830635070801),
			vec3(1729.7, 6414.91, 35.04),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.42, 3741.33, 32.34),
			vec3(547.35, 2670.54, 42.16),
			vec3(2678.47, 3281.13, 55.24),
			vec3(2556.88, 382.64, 108.62),
			vec3(374.33, 326.05, 103.57),
			vec3(-48.1, -1757.55, 29.42),
			vec3(-707.41, -914.81, 19.22),
		}, targets = {
			{ loc = vec3(27.053270339966, -1346.9294433594, 29.496953964233), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
			--{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			--{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			--{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			--{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			--{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			--{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			--{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			--{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			--{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			--{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 }
		}
	},


	Mining = {
		name = 'Mining Shop',
		inventory = {
			{name = 'jackhammer', price =  2200},
			{name = 'pickaxe', price = 800},
			{name = 'shovel', price = 300},
			{name = 'empty_bucket', price = 0}
		}, locations = {
			vec3(2707.3708, 2776.7751, 36.8780)
		}, targets = {
			{loc = vec3(2707.3708, 2776.7751, 37.8780), length = 2.0, width = 2.0, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
		}
	},

	Pharmacy = {
		name = 'Pharmacy',
		inventory = {
			{name = 'bandage', price =  30}
		}, locations = {
			vec3(-492.44836425781, -342.57147216797, 42.320652008057),
			vec3(300.34, -578.68, 42.26)
		}, targets = {
			{
                ped = `s_m_m_doctor_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(-492.44836425781, -341.57147216797, 42.320652008057),
                heading = 52.91,
            },
			{
                ped = `s_m_m_doctor_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vector3(300.34, -578.68, 42.26),
                heading = 104.73,
            }
		}
	},

	Liquor = {
		name = 'Liquor Store',
		blip = {
			id = 93, colour = 69, scale = 0.6
		}, inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
			{ name = 'burger', price = 15 },
			{ name = 'duffbeer', price = 15 },
			{ name = 'bootlegvodka', price = 25 },
			{ name = 'glass_whiskeycoke', price = 20 }
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			--vec3(1392.562, 3604.684, 34.980),
			--vec3(-1393.409, -606.624, 30.319)
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			--{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	YouTool = {
		name = 'Home Depot',
		blip = {
			id = 402, colour = 69, scale = 0.9
		}, inventory = {
			{ name = 'phone', price = 75 },
			{ name = 'radio', price = 75 },
			{ name = "backpack1", price = 200, count = 20, },
			{ name = "cwnotepad", price = 10, count = 200, },
			{ name = "diving_gear", price = 200, count = 20, },
			{ name = "diving_fill", price = 100, count = 20, },
			{ name = "parachute", price = 200, count = 20, },
			{ name = 'repairkit', price = 75 },
			{ name = 'boombox', price = 50 },
			{ name = "cleaningkit", price = 5 },
			{ name = "trowel", price = 50 },
			{ name = "empty_weed_bag", price = 2 },
			{ name = "backpack", price = 500 },
			{ name = "kq_tow_rope", price = 500 },
			{ name = "kq_winch", price = 500 },
			{ name = "WEAPON_MEGAPHONE", price = 80 },
			{ name = "xmas_decor", price = 50 },
			{ name = "xmas_gift", price = 100 },
			{ name = "xmas_tree", price = 150 },
			{ name = "xmas_star", price = 200 }
		}, locations = {
			vec3(2747.49, 3472.88, 55.67),
			vec3(46.0, -1748.98, 29.62),
			vec3(315.13342285156, -1084.1392822266, 29.401084899902),
			vec3(-1463.53, -704.07, 26.8),
			vec3(1930.68, 3721.04, 32.83),
			vec3(-200.47, 6352.99, 31.49)
		}, targets = {
			--{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }vector3(-1463.53, -704.07, 26.8)
			{
                ped = `s_m_y_construct_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(2747.49, 3472.88, 54.67),
                heading = 256.58,
            },
			{
                ped = `s_m_y_construct_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(315.13342285156, -1084.1392822266, 28.401084899902),
                heading = 256.58,
            },
			{
                ped = `s_m_y_construct_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(46.0, -1748.98, 28.62),
                heading = 89.22,
            },
			{
                ped = `s_m_y_construct_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(-1463.53, -704.07, 25.8),
                heading = 142.93,
            },
			{
                ped = `s_m_y_construct_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(1930.68, 3721.04, 31.83),
                heading = 210.25,
            },
			{
                ped = `s_m_y_construct_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(-200.47, 6352.99, 30.49),
                heading = 221.74,
            }	
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.75
		}, inventory = {
			{ name = 'ammo-9', price = 10, count = 1000, metadata = { registered = true }, license = 'weapon' },
			{ name = 'ammo-44', price = 30, count = 150, metadata = { registered = true }, license = 'weapon' },
			{ name = 'ammo-45', price = 30, count = 150, metadata = { registered = true }, license = 'weapon' },
			{ name = 'ammo-38', price = 30, count = 100, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_KNIFE', price = 800 },
			{ name = 'WEAPON_HATCHET', price = 25000 },
			{ name = 'WEAPON_MACHETE', price = 35000 },
			{ name = 'WEAPON_GOLFCLUB', price = 10000 },
			{ name = 'WEAPON_POOLCUE', price = 1000 },
			{ name = 'WEAPON_BAT', price = 900 },
			{ name = 'WEAPON_PISTOL', price = 8000, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_NAVYREVOLVER', price = 12500, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_REVOLVER', price = 15500, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_DOUBLEACTION', price = 9750, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_M45A1', price = 7750, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_FNX45', price = 8750, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_DEAGLE', price = 8850, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_SNSPISTOL', price = 4100, metadata = { registered = true }, license = 'weapon' }
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		}, targets = {
			--{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			--{ loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
			--{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			--{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			--{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			--{ loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
			--{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			--{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			--{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(-660.98, -933.54, 20.78),
                heading = 178.56,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(808.91, -2159.0, 28.57),
                heading = 359.41,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(1693.27, 3761.99, 33.66),
                heading = 223.7,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(-330.73, 6085.86, 30.4),
                heading = 223.41,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(253.32, -51.82, 68.89),
                heading = 64.94,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(23.8, -1105.97, 28.75),
                heading = 156.23,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(2566.62, 292.64, 107.68),
                heading = 357.4,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(-1118.02, 2700.63, 17.5),
                heading = 222.64,
            },
			{
                ped = `s_m_m_armoured_02`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(841.1, -1035.28, 27.10),
                heading = 360.0,
            }
		}
	},

	PoliceArmoury = {
		name = 'Police Armoury',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.75
		}, inventory = {
			{ name = 'gps_tracker', price = 0, },
			{ name = 'empty_evidence_bag', price = 0, },
			{ name = 'policetablet', price = 0, },
			{ name = 'nikon', price = 0, },
			{ name = 'sdcard', price = 0, },
			{ name = 'gsrtestkit', price = 0, },
			{ name = 'dnatestkit', price = 0, },
			{ name = 'drugtestkit', price = 0, },
			{ name = 'breathalyzer', price = 0, },
			{ name = 'fingerprintreader', price = 0, },
			{ name = 'accesstool', price = 0, },
			{ name = 'fingerprintkit', price = 0, },
			{ name = 'mikrosil', price = 0, },
			{ name = 'handcuffs', price = 0, },	
			{ name = 'heavyarmor', price = 20, },
			{ name = 'ifak', price = 0, },
			{ name = 'camera', price = 0, },	
			{ name = 'radio', price = 0, },	
			{ name = 'ammo-9', price = 0, },
			{ name = 'ammo-shotgun', price = 10, },
			{ name = 'ammo-rifle', price = 0, },
			{ name = 'at_flashlight', price = 0, },
			{ name = 'at_grip', price = 0, },
			{ name = 'at_suppressor_heavy', price = 900, },
			{ name = 'at_scope_medium', price = 350, },
			{ name = 'WEAPON_FLARE', price = 10 },
			{ name = 'WEAPON_FLASHLIGHT', price = 20 },
			{ name = 'WEAPON_NIGHTSTICK', price = 10 },
			{ name = 'WEAPON_STUNGUN', price = 0, metadata = { registered = true, serial = 'POL'} },
			{ name = 'WEAPON_COMBATPISTOL', price = 600, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_PUMPSHOTGUN', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 1 },
			{ name = 'WEAPON_SMG', price = 750, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_CARBINERIFLE', price = 600, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 1 },
			{ name = 'WEAPON_SCARH', price = 800, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 }
			--{ name = 'WEAPON_M6IC', price = 50, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 1 },
		}, locations = {
			--vec3(452.41, -979.97, 30.69),
			vec3(1837.1373291016, 3685.6850585938, 34.189231872559),
			vec3(-402.56497192383, -381.58386230469, 25.098831176758),
			vec3(482.66613769531, -995.26513671875, 30.689807891846)
		}, targets = {
			--{ loc = vec3(452.41, -979.97, 29.69), length = 2.0, width = 3.5, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(1837.1373291016, 3685.6850585938, 34.189231872559), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(-402.56497192383, -381.58386230469, 25.098831176758), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(482.66613769531, -995.26513671875, 30.689807891846), length = 2.0, width = 3.5, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},

	Medicine = {
		name = 'Medicine Cabinet',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.75
		}, inventory = {
			{ name = 'medikit', price = 10 },
			{ name = 'radio', price = 15 },
			{ name = 'painkillers', price = 25 },
			{ name = 'firstaid', price = 20 },
			{ name = 'weapon_flashlight', price = 20 },
			{ name = 'weapon_fireextinguisher', price = 20 },
			{ name = 'weapon_hose', price = 20 },
			{ name = 'medbag', price = 10 },
			{ name = 'panicbutton', price = 20 },
			{ name = 'ifak', price = 0 }
		}, locations = {
			vec3(312.83120727539, -598.22283935547, 43.265392303467),
			vec3(200.12528991699, -1650.1762695313, 29.800729751587)
		}, targets = {
			{ loc = vec3(312.83120727539, -598.22283935547, 43.265392303467), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(200.12528991699, -1650.1762695313, 29.800729751587), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},

	BlackMarketArms = {
		name = 'Ammo Market',
		inventory = {
			{ name = 'ammo-9', price = 6, count = 7500, currency = 'cash' },
			{ name = 'ammo-38', price = 25, count = 7500, currency = 'cash' },
			{ name = 'ammo-44', price = 25, count = 7500, currency = 'cash' },
			{ name = 'ammo-45', price = 24, count = 7500, currency = 'cash' },
			{ name = 'ammo-rifle', price = 33, count = 7500, currency = 'cash' },
			{ name = 'ammo-rifle2', price = 35, count = 7500, currency = 'cash' }
		}, locations = {
			vec3(-1582.2054443359, -428.94613647461, 19.734462738037)
		}, targets = {
			{
                ped = `mp_m_shopkeep_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(-1582.2054443359, -428.94613647461, 18.734462738037),
                heading = 83.2,
            }
		}
	},

	--[[HeroinMarket = {
		name = 'Heroin Market',
		inventory = {
			{ name = 'emptyvial', price = 20, count = 200, currency = 'cash' },
			{ name = 'sterilewater', price = 15, count = 250, currency = 'cash' },
			{ name = 'syringe', price = 20, count = 250, currency = 'cash' },
			{ name = 'aceticacid', price = 20, count = 250, currency = 'cash' },
			{ name = 'painkillers', price = 20, count = 250, currency = 'cash' }
		}, locations = {
			vector3(438.96, -1905.29, 25.93),
			vec3(1699.33, 6438.46, 32.79)
		}, targets = {
			{ loc = vec3(438.96, -1905.29, 25.93), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 },
			{ loc = vec3(1699.33, 6438.46, 32.79), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }	
		}
	},]]--

	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	}
}
