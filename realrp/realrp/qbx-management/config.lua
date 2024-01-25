Config = Config or {}

-- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.BossMenus = {
    ['police'] = {
        vec3(460.73159790039, -985.55444335938, 30.72808265686),
    },
    ['ambulance'] = {
        vec3(316.29382324219, -597.94213867188, 43.265411376953),
    },
    ['realestate'] = {
        vec3(-716.11, 261.21, 84.14),
    },
    ['taxi'] = {
        vec3(907.24, -150.19, 74.17),
    },
    ['cardealer'] = {
        vec3(-27.47, -1107.13, 27.27),
    },
    ['greasetwo'] = {
        vec3(-1592.3399658203, -856.06127929688, 10.097274780273),
    },
    ['henhouse'] = {
		vec3(-294.67, 6266.69, 34.84),
	},
	['burgershot'] = {
		vec3(-1196.27, -901.12, 14.0),
	},
	['lscustoms'] = {
		vec3(-348.14, -131.02, 42.04),
	},
	['catcafe'] = {
		vec3(-578.88, -1067.55, 26.61),
	},
	['tow'] = {
		vec3(-185.5, -1165.08, 23.67),
	},
    ['stormautos'] = {
		vector3(-195.37, -1316.44, 31.29),
	},
	['tequilala'] = { 
		vec3(-561.27, 289.53, 82.18),
	},
    ['bahama'] = { 
		vec3(0, 0, 0),
	},
    ['casino'] = { 
		vec3(0, 0, 0),
	},
    ['judge'] = { 
		vec3(-587.36, -206.04, 37.26),
	},
    ['quickrepairs'] = { 
		vec3(-1144.5225830078, -2004.3382568359, 13.18025302887),
	},
    ['pearl'] = { 
		vec3(-1839.85, -1183.78, 14),
	},
    ['whitewidow'] = { 
		vec3(0, 0, 0),
	},
    ['grease'] = { 
		vec3(0, 0, 0),
	},
    ['burgershot'] = {
		vec3(0, 0, 0),
	},
    ['stopngo'] = {
		vec3(0, 0, 0),
	},
    ['mudshop'] = { 
		vec3(-1427.6375732422, -458.34368896484, 35.90970993042),
	},
    ['hornys'] = { 
		vec3(1238.29, -348.72, 69.08),
	},
    ['upnatom'] = { 
		vec3(81.44, 296.32, 110.25),
	},
    ['holy'] = { 
		vec3(124.78209686279, -3014.1389160156, 7.0408897399902),
	},
    ['gasmonkey'] = { 
		vec3(828.87261962891, -2113.4953613281, 29.162872314453),
	},
    ['vanilla'] = { 
		vec3(94.967468261719, -1292.7991943359, 29.263538360596),
	},
    ['police'] = { 
		vec3(-384.58551025391, -359.78363037109, 48.532802581787),
	},
    ['harshop'] = { 
		vec3(1152.7601318359, -792.75036621094, 57.602443695068),
	},
    ['mudshoptwo'] = {
		vec3(468.72924804688, -1897.6580810547, 26.094367980957),
	},
}

Config.BossMenuZones = {
    --['police'] = {
    --    { coords = vec3(460.73159790039, -985.55444335938, 30.72808265686), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    --},
    ['police'] = {
        { coords = vec3(460.73345947266, -985.55450439453, 30.728078842163), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['ambulance'] = {
        { coords = vec3(316.29382324219, -597.94213867188, 43.265411376953), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
    ['realestate'] = {
        { coords = vec3(-716.11, 261.21, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vec3(907.24, -150.19, 74.17), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vec3(-27.47, -1107.13, 27.27), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['greasetwo'] = {
        { coords = vec3(-1592.3399658203, -856.06127929688, 10.097274780273), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['lscustoms'] = {
        { coords = vec3(-348.14, -131.02, 42.04), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
	['catcafe'] = {
        { coords = vec3(-578.88, -1067.55, 26.61), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
	['tow'] = {
        { coords = vec3(-185.5, -1165.08, 23.67), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['stormautos'] = {
		{ coords = vec3(-195.37, -1316.44, 31.29), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['bahama'] = { 
		{ coords = vec3(0, 0, 0), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['casino'] = { 
		{ coords = vec3(0, 0, 0), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['grease'] = { 
		{ coords = vec3(0, 0, 0), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['judge'] = { 
		{ coords = vec3(-587.36, -206.04, 37.26), length = 0.8, width = 0.8, heading = 30.0471, minZ = 38, maxZ = 39 },
	},
    ['quickrepairs'] = { 
		{ coords = vec3(-1144.5225830078, -2004.3382568359, 13.18025302887), length = 0.8, width = 0.8, heading = 30.0471, minZ = 38, maxZ = 39 },
	},
    ['pearl'] = { 
		{ coords = vec3(-1839.85, -1183.78, 14), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['whitewidow'] = { 
		{ coords = vec3(0, 0, 0), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['burgershot'] = { 
		{ coords = vec3(0, 0, 0), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['stopngo'] = { 
		{ coords = vec3(0, 0, 0), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['mudshop'] = { 
		{ coords = vec3(-1427.6375732422, -458.34368896484, 35.90970993042), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['hornys'] = { 
		{ coords = vec3(1238.29, -348.72, 69.08), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['upnatom'] = { 
		{ coords = vec3(81.44, 296.32, 110.25), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['holy'] = { 
		{ coords = vec3(124.78209686279, -3014.1389160156, 7.0408897399902), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['gasmonkey'] = { 
		{ coords = vec3(828.87261962891, -2113.4953613281, 29.162872314453), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['vanilla'] = { 
		{ coords = vec3(94.967468261719, -1292.7991943359, 29.263538360596), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['harshop'] = { 
		{ coords = vec3(1152.7601318359, -792.75036621094, 57.602443695068), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['mudshoptwo'] = { 
		{ coords = vec3(468.72924804688, -1897.6580810547, 26.094367980957), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['tequilala'] = { 
		{ coords = vec3(-561.27, 289.53, 82.18), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
    ['henhouse'] = { 
		{ coords = vec3(-294.67, 6266.69, 34.84), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
	},
}

Config.GangMenus = {
    ['quinn'] = {
        vec3(707.32, -967.41, 30.14),
    },
    ['ballas'] = {
        vec3(133.48, -1087.17, 29.19),
    },
    ['vagos'] = {
        vec3(298.25, -2034.55, 19.84),
    },
    ['medellin'] = {
       vec3(338.33905029297, -1980.0681152344, 24.207782745361),
    },
    ['lostmc'] = {
        vec3(1985.6, 3054.87, 50.51),
    },
    ['diablos'] = {
        vector3(-684.96380615234, -404.01083374023, 34.996257781982),
    },
    ['woc'] = {
        vec3(-1056.88, -233.17, 44.02),
    },
    ['lamc'] = {
        vec3(-1129.5762939453, -1600.6239013672, 123.47159576416),
    },
    ['soa'] = {
        vec3(1035.7341308594, -2543.5864257813, 32.294734954834),
    },
    ['pgd'] = {
        vec3(-671.58264160156, -872.04388427734, 28.921752929688),
    },
    ['snow'] = {
        vec3(-1517.7130126953, 1939.5212402344, 61.735542297363),
    },
}

Config.GangMenuZones = {
    ['quinn'] = {
        { coords = vec3(707.32, -967.41, 30.14), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['woc'] = {
        { coords = vec3(-1056.88, -233.17, 44.02), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['medellin'] = {
        { coords = vec3(338.33905029297, -1980.0681152344, 24.207782745361), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['vagos'] = {
        { coords = vec3(298.25, -2034.55, 19.84), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['soa'] = {
        { coords = vec3(1035.7341308594, -2543.5864257813, 32.294734954834), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['diablos'] = {
        { coords = vector3(-684.96380615234, -404.01083374023, 34.996257781982), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['pgd'] = {
        { coords = vector3(-671.58264160156, -872.04388427734, 28.921752929688), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['lostmc'] = {
        { coords = vector3(1985.6, 3054.87, 50.51), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['lamc'] = {
        { coords = vec3(-1129.5762939453, -1600.6239013672, 123.47159576416), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
    ['snow'] = {
        { coords = vec3(-1517.7130126953, 1939.5212402344, 61.735542297363), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 },
    },
}
