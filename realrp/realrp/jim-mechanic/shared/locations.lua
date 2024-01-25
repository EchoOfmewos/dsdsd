Config.Locations = Config.Locations or {}

Config.Locations[#Config.Locations+1] = { --[[ GABZ LS TUNER SHOP ]]--
	Enabled = true,
	job = "alvarez",
	zones = {
		vec2(154.69816589355, -3007.0153808594),
		vec2(120.64015197754, -3006.7275390625),
		vec2(120.48593902588, -3051.8874511719),
		vec2(154.61296081543, -3051.5419921875)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(144.38, -3051.3, 7.04, 0.0), w = 0.6, d = 3.6, },
		{ coords = vec4(128.45, -3007.83, 7.04, 0.0), w = 2.4, d = 3.5, },
	},
	store = {
		{ coords = vec4(128.64, -3014.68, 7.04, 0.0), w = 1.6, d = 3.0, },
	},
	crafting = {
		{ coords = vec4(136.71, -3051.29, 7.04, 0.0), w = 0.6, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(145.29, -3012.93, 6.94, 86.0), prop = true, },
		{ coords = vec4(125.55, -3007.25, 6.94, 350.0), w = 0.4, d = 0.45, },
	},
	manualRepair = {
		{ coords = vec4(121.0, -3047.69, 7.04, 270.11), prop = true, },
	},
	nosrefill = {
		{ coords = vec4(121.17, -3044.73, 7.04, 268.96) },
	},
	carLift = {
		{ coords = vec4(123.0, -3038.0, 7.04, 90.0), use = true, },
		{ coords = vec4(123.0, -3044.0, 7.04, 90.0), use = true, },
		{ coords = vector4(128.28, -3023.01, 7.04, 90.41) }
	},
	garage = {
		spawn = vec4(163.22, -3009.31, 5.27, 89.72),
		out = vec4(157.37, -3016.57, 7.04, 179.58),
		list = { "towtruck", "panto", "slamtruck", "cheburek", "utillitruck3" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(146.44, -3014.09, 6.94, 195.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(139.91, -3023.83, 7.04),
		label = " Alvarez Auto Shop",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 2571775,
	}
}


Config.Locations[#Config.Locations+1] = { --[[ AIRPORT LS CUSTOMS ]]--
	Enabled = true,
	job = "grease",
	zones = {
		vec2(-1118.5782470703, -2017.4730224609),
		vec2(-1143.9351806641, -2042.6685791016),
		vec2(-1172.8060302734, -2014.1071777344),
		vec2(-1147.3665771484, -1988.7028808594)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(-1141.11, -2004.79, 13.18, 45.0), w = 1.6, d = 0.6, },
	},
	store = {
		{ coords = vec4(-1144.2, -2003.91, 13.18, 45.0), w = 1.6, d = 0.6, },
	},
	crafting = {
		{ coords = vec4(-1158.71, -2002.37, 13.18, 45.0), w = 0.6, d = 3.8, },
	},
	clockin = {
		{ coords = vec4(-1155.69, -1998.91, 13.22, 62.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(-1154.66, -2023.07, 13.18, 225.81), },
	},
	carLift = {
		{ coords = vec4(-1161.43, -2015.11, 13.18, 133.41) },
	},
	garage = {
		spawn = vec4(-1154.63, -1986.95, 12.5, 315.29),
		out = vec4(-1147.87, -1989.09, 13.16, 45.01),
		list = { "towtruck", "panto", "slamtruck", "cheburek", "utillitruck3" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(-1147.41, -2001.07, 13.18, 285.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-1150.68, -2002.48, 13.18),
		label = "Los Santos Customs",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 2571775,
	}
}


Config.Locations[#Config.Locations+1] = { --[[ GABZ ALTA STREET BENNYS ]]--
	Enabled = true,
	job = "harshop",
	zones = {
		vector2(1164.0393066406, -775.54577636719),
  		vector2(1119.4741210938, -776.28070068359),
  		vector2(1119.4741210938, -776.28070068359),
  		vector2(1120.1434326172, -799.82171630859),
  		vector2(1162.5456542969, -802.88128662109)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(1140.4754638672, -788.78582763672, 57.602542877197, 182.74383544922), w = 3.6, d = 0.8, },
	},
	store = {
		{ coords = vec4(-228.64, -1314.19, 31.3, 90.0), w = 3.60, d = 0.8 },
	},
	crafting = {
		{ coords = vec4(1147.0634765625, -788.64184570313, 57.602542877197, 186.28201293945), w = 2.8, d = 1.5 },
	},
	--clockin = {
	--	{ coords = vec4(-195.55, -1316.46, 31.2, 181.72), prop = false },
	--},
	manualRepair = {
		{ coords = vec4(1157.9490966797, -773.33093261719, 57.550205230713, 181.32200622559), prop = true, },
	},
	carLift = {
        { coords = vec4(1151.1979980469, -780.21636962891, 57.6025390625, 179.46382141113), use = false },
        { coords = vec4(1141.0404052734, -780.43646240234, 57.605602264404, 182.48431396484), use = false },
    },
	garage = {
		spawn = vec4(1122.0277099609, -778.43115234375, 57.746723175049, 357.58065795898),
		out = vec4(1153.7518310547, -774.95428466797, 57.620948791504, 358.46899414063),
		list = { "flatbed" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/b/be/BennysOriginalMotorWorks-GTAO-Logo.png",
		{ coords = vec4(1136.7662353516, -781.99305419922, 57.552535247803, 13.032270431519), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(1144.5908203125, -785.439453125, 57.609550476074),
		label = "Har's Shop",
		color = 1,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 16711680,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ LS CUSTOMS IN CITY ]]--
	Enabled = true,
	job = "lscustoms",
	zones = {
		vector2(-360.29211425781, -129.30076599121),
		vector2(-351.81756591797, -110.54550170898),
		vector2(-378.15545654297, -100.19951629639),
		vector2(-352.53890991211, -148.87553405762),
		vector2(-344.39892578125, -175.13929748535),
		vector2(-304.78225708008, -155.16537475586),
		vector2(-295.18740844727, -100.93128967285),
		vector2(-338.55249023438, -87.138725280762)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(-334.65, -127.2, 39.01, 70.62), w = 4.0, d = 1.0, },
	},
	store = {
		{ coords = vec4(-347.9, -133.19, 39.01, 340.0), w = 1.2, d = 0.25, },
	},
	crafting = {
		{ coords = vec4(-336.27209472656, -131.5609588623, 39.009685516357, 67.022315979004), w = 3.2, d = 1.0, },
	},
	--clockin = {
	--	{ coords = vec4(-344.85, -140.35, 39.05, 157.0), prop = true },
	--},
	carLift = {
		{ coords = vec4(-334.08865356445, -135.63764953613, 39.348052978516, 339.734375) },
	},
	manualRepair = {
		{ coords = vec4(-358.20697021484, -119.60271453857, 38.699367523193, 64.777282714844), prop = true, },
	},
	garage = {
		spawn = vec4(-365.01528930664, -126.48834228516, 38.698791503906, 75.582511901855),
		out = vec4(-356.96429443359, -128.85346984863, 39.434505462646, 250.00662231445),
		list = { "flatbed" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vector4(-345.16, -128.43, 38.98, 248.68), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-334.85589599609, -127.75273132324, 39.009735107422),
		label = "Los Santos Customs",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ HAYES AUTOS ]]--
	Enabled = true,
	job = "stormautos",
	zones = {
		vector2(-189.07, -1311.31),
		vector2(-188.36, -1343.46),
		vector2(-217.37, -1343.54),
		vector2(-217.99, -1340.32),
		vector2(-244.44, -1342.33),
		vector2(-244.07, -1312.06)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(-217.67, -1333.55, 31.32, 86.81), w = 1.6, d = 0.6, },
	},
	store = {
		{ coords = vec4(474.83, -1308.06, 29.21, 295.0), w = 1.6, d = 0.5, },
	},
	crafting = {
		{ coords = vec4(-205.16, -1334.87, 30.41, 266.65), w = 3.2, d = 1.0, },
	},
	--clockin = {
	--	{ coords = vec4(471.51, -1310.97, 29.22, 23.0), w = 0.45, d = 0.4, },
	--},
	manualRepair = {
		{ coords = vec4(-198.8041229248, -1309.7586669922, 31.295528411865, 359.27114868164), prop = true, },
	},
	carLift = {
		{ coords = vec4(-219.76957702637, -1321.9611816406, 31.322357177734, 21.798976898193) },
		{ coords = vec4(-202.19302368164, -1321.8870849609, 31.300470352173, 350.30841064453) },
	},
	garage = {
		spawn = vec4(-228.64071655273, -1307.5076904297, 31.276666641235, 88.39909362793),
		out = vec4(-219.66464233398, -1310.3356933594, 31.296552658081, 179.53321838379),
		list = { "flatbed" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/0/0c/HayesAutoBodyShop-GTAV-Logo.png",
		{ coords = vec4(-217.7, -1334.91, 31.04, 87.52), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-211.55, -1324.55, 30.9),
		label = "M&Ms Auto",
		color = 57,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 39135,
	}
}

Config.Locations[#Config.Locations+1] = { -- [[LS CUSTOMS ROUTE 68]] --
	Enabled = true,
	job = "gasmonkey",
	zones = {
		vector2(795.27435302734, -2119.0187988281),
  		vector2(843.66180419922, -2124.4689941406),
  		vector2(847.46350097656, -2086.9985351563),
  		vector2(797.58514404297, -2085.3161621094)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(814.02960205078, -2091.6760253906, 28.162870407104, 359.76086425781), w = 1.6, d = 0.6 },
	},
	store = {
		{ coords = vec4(1171.64, 2635.84, 37.78, 45.0), w = 0.6, d = 0.5 },
	},
	crafting = {
		{ coords = vec4(805.77752685547, -2090.7907714844, 28.162900924683, 354.5149230957), w = 3.2, d = 1.0 },
	},
	--clockin = {
	--	{ coords = vec4(1183.89, 2635.29, 37.78, 185.0), prop = true, },
	--},
	manualRepair = {
		{ coords = vec4(835.51898193359, -2084.3857421875, 29.744180679321, 353.29989624023), prop = true, },
	},
	carLift = {
		{ coords = vec4(806.77459716797, -2101.1918945313, 29.189291000366, 84.19) },
		{ coords = vec4(807.49755859375, -2093.7307128906, 29.188514709473, 84.19) },
		{ coords = vec4(806.15216064453, -2109.0412597656, 29.190433502197, 84.19) },
	},
	garage = {
		spawn = vec4(1165.92, 2642.87, 37.23, 358.2),
		out = vec4(1170.25, 2645.6, 37.81, 88.15),
		list = { "flatbed" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(797.24764404297, -2101.2873535156, 29.062908554077, 90.329917907715), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(822.01770019531, -2098.4392089844, 28.682439804077),
		label = "Gas Monkey Garage ",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { -- [[LS CUSTOMS ROUTE 68]] --
	Enabled = true,
	job = "slater",
	zones = {
		vec2(1190.58, 2645.39),
		vec2(1190.72, 2634.46),
		vec2(1170.39, 2634.2),
		vec2(1170.33, 2645.83)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(1180.85, 2635.0, 37.75, 90.0), w = 1.6, d = 0.6 },
	},
	store = {
		{ coords = vec4(1171.64, 2635.84, 37.78, 45.0), w = 0.6, d = 0.5 },
	},
	crafting = {
		{ coords = vec4(1176.69, 2635.44, 37.75, 270.0), w = 3.2, d = 1.0 },
	},
	clockin = {
		{ coords = vec4(1183.89, 2635.29, 37.78, 185.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(1162.75, 2622.96, 38.0, 1.32), prop = true, },
	},
	carLift = {
		{ coords = vec4(1174.78, 2644.54, 37.75, 180.0), },
		{ coords = vec4(1182.22, 2644.75, 37.75, 180.0) },
	},
	garage = {
		spawn = vec4(1165.92, 2642.87, 37.23, 358.2),
		out = vec4(1170.25, 2645.6, 37.81, 88.15),
		list = { "towtruck", "panto", "slamtruck", "cheburek", "utillitruck3" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(1179.39, 2635.17, 37.75, 176.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(1177.62, 2640.83, 37.75),
		label = "Los Santos Customs",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ BEEKERS GARAGE PALETO ]]--
	Enabled = true,
	job = "stopngo",
	zones = {
		vector2(509.12557983398, -147.38710021973),
  		vector2(511.37094116211, -222.4052734375),
 	 	vector2(585.73059082031, -230.12020874023),
  		vector2(576.63159179688, -156.05331420898)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(557.78741455078, -180.51676940918, 54.508655548096, 359.92196655273), w = 3.2, d = 1.0, },
	},
	store = {
		{ coords = vec4(109.9, 6632.02, 31.79, 270.0), w = 0.6, d = 0.5, },
	},
	crafting = {
		{ coords = vec4(559.37866210938, -177.70027160645, 54.510932922363, 268.86544799805), w = 1.6, d = 0.6, },
	},
	clockin = {
		{ coords = vec4(558.23107910156, -199.09039306641, 57.952633666992, 72.813339233398), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(540.06164550781, -184.4260559082, 54.485324859619, 90.574928283691), prop = true, },
	},
	carLift = {
		{ coords = vec4(552.94427490234, -183.29127502441, 54.509792327881, 270.73474121094), },
		{ coords = vec4(553.01971435547, -190.82362365723, 54.510265350342, 268.55520629883), },
	},
	garage = {
		spawn = vec4(529.56420898438, -168.02326965332, 54.480945587158, 179.52142333984),
		out = vec4(533.58282470703, -173.72268676758, 54.472953796387, 177.37532043457),
		list = { "flatbed" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/4/40/Beeker%27s_logo_GTA_V.png",
		{ coords = vec4(543.97430419922, -199.47802734375, 54.508541107178, 273.29409790039), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Helicopters", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vector3(538.32403564453, -184.38247680664, 54.459339141846),
		label = "Auto Exotic Garage",
		color = 3,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 23552,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ JAYS SHOP ]]--
	Enabled = true,
	job = "greasetwo",
	zones = {
		vector2(-1595.4876708984, -870.259765625),
  		vector2(-1581.7119140625, -881.75463867188),
  		vector2(-1557.0783691406, -857.19281005859),
  		vector2(-1622.9184570312, -796.78717041016),
  		vector2(-1654.9013671875, -830.7177734375)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(-1615.0537109375, -836.79516601563, 10.065544128418, 141.63705444336), w = 0.9, d = 3.6, },
	},
	store = {
		{ coords = vec4(128.64, -3014.68, 7.04, 0.0), w = 1.6, d = 3.0, },
	},
	crafting = {
		{ coords = vec4(-1619.208984375, -833.16333007813, 10.065544128418, 140.15968322754), w = 0.9, d = 1.0, },
	},
	--clockin = {
	--	{ coords = vec4(145.29, -3012.93, 6.94, 86.0), prop = false, },
	--	{ coords = vec4(125.55, -3007.25, 6.94, 350.0), w = 0.4, d = 0.45, },
	--},
	manualRepair = {
		{ coords = vector4(-1588.7709960938, -840.93853759766, 9.9546918869019, 50.573101043701), prop = true, },
	},
	nosrefill = {
		{ coords = vec4(121.17, -3044.73, 7.04, 268.96) },
	},
	carLift = {
		{ coords = vec4(-1609.8723144531, -831.59326171875, 10.065550804138, 138.16423034668), use = false, },
		{ coords = vec4(-1613.9968261719, -828.28155517578, 10.065539360046, 138.16423034668), use = false, }
	},
	garage = {
		spawn = vec4(-1591.1502685547, -836.39190673828, 10.002326011658, 138.68559265137),
		out = vec4(-1600.3770751953, -834.11938476563, 10.068243980408, 140.62927246094),
		list = { "flatbed" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(-1602.87578125, -837.33715820313, 10.270086288452, 56.179595947266), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-1613.9968261719, -828.28155517578, 10.065539360046),
		label = "Grease Gods 2.0",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ HAYES AUTOS ]]--
	Enabled = true,
	job = "mudshop",
	zones = {
		vec2(-1439.9047851563, -443.4548034668),
		vec2(-1426.0206298828, -466.5227355957),
		vec2(-1400.1343994141, -451.71572875977),
		vec2(-1414.7999267578, -427.64019775391)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(-1414.94, -452.35, 35.91, 302.0), w = 4.0, d = 1.0, },
	},
	store = {
		{ coords = vec4(-1408.04, -448.04, 35.91, 302.0), w = 5.5, d = 1.0, },
	},
	crafting = {
		{ coords = vec4(-1407.68, -442.32, 35.91, 302.0), w = 0.6, d = 1.0, },
	},
	--clockin = {
	--	{ coords = vec4(-1427.19, -457.51, 35.71, 300.0), prop = true, },
	--},
	manualRepair = {
		{ coords = vec4(-1414.0250244141, -428.5383605957, 36.184978485107, 28.176504135132), prop = true, },
	},
	carLift = {
		{ coords = vec4(-1418.92, -443.53, 35.91, 211.54) },
		{ coords = vec4(-1413.4765625, -439.16458129883, 35.909713745117, 211.54) },
		{ coords = vec4(-1425.2521972656, -447.59387207031, 35.909683227539, 211.54) },
	},
	garage = {
		spawn = vec4(-1379.84, -451.82, 34.44, 124.0),
		out = vec4(-1401.57, -451.19, 34.48, 212.71),
		list = { "towtruck", "panto", "slamtruck", "cheburek", "utillitruck3" }
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/0/0c/HayesAutoBodyShop-GTAV-Logo.png",
		{ coords = vec4(-1429.02, -453.6, 35.97, 350.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-1417.12, -445.9, 35.91),
		label = "Hayes Autos",
		color = 57,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 39135,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ ATOMIC AUTOS ]]--
	Enabled = true,
	job = "mudshoptwo",
	zones = {
		vector2(499.84805297852, -1897.4898681641),
  		vector2(482.60772705078, -1859.0799560547),
  		vector2(457.06307983398, -1877.0522460938),
  		vector2(472.53573608398, -1910.7742919922)
	},
	autoClock = { enter = false, exit = false, },
	stash = {
		{ coords = vec4(481.61611938477, -1875.1673583984, 26.094451904297, 40.648784637451), w = 4.0, d = 1.0, },
	},
	store = {
		{ coords = vec4(-1408.04, -448.04, 35.91, 302.0), w = 5.5, d = 1.0, },
	},
	crafting = {
		{ coords = vec4(476.89996337891, -1877.5593261719, 26.094451904297, 28.358375549316), w = 1.6, d = 1.5, },
	},
	--clockin = {
	--	{ coords = vec4(-1427.19, -457.51, 35.71, 300.0), prop = true, },
	--},
	manualRepair = {
		--{ coords = vec4(-1414.0250244141, -428.5383605957, 36.184978485107, 28.176504135132), prop = true, },
	},
	carLift = {
		--{ coords = vec4(474.92965698242, -1885.3829345703, 26.094455718994, 26.384019851685) },
		--{ coords = vec4(-1413.4765625, -439.16458129883, 35.909713745117, 211.54) },
		--{ coords = vec4(-1425.2521972656, -447.59387207031, 35.909683227539, 211.54) },
	},
	garage = {
		spawn = vec4(-1379.84, -451.82, 34.44, 124.0),
		out = vec4(-1401.57, -451.19, 34.48, 212.71),
		list = { "towtruck", "panto", "slamtruck", "cheburek", "utillitruck3" }
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/0/0c/HayesAutoBodyShop-GTAV-Logo.png",
		{ coords = vec4(472.64575195313, -1891.8907714844, 26.094896316528, 205.1911315918), prop = false, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Boats", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(474.92965698242, -1885.3829345703, 26.094455718994),
		label = "Mud Shop V2",
		color = 57,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 39135,
	}
}