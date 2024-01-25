-- Thanks for using this script! Check out other free scripts by me on CFX FiveM or my Tebex for paid scripts/support: https://angelicxs.tebex.io/

Config = {}

Config.UseESX = false						-- Use ESX Framework
Config.UseQBCore = true					-- Use QBCore Framework (Ignored if Config.UseESX = true)

Config.UseThirdEye = true				-- If true uses third eye.
Config.ThirdEyeName = 'qb-target' 			-- Name of third eye aplication
Config.Use3DText = false                        -- Use 3D text to interact
Config.NHMenu = false						-- Use NH-Context [https://github.com/whooith/nh-context]
Config.QBMenu = true						-- Use QB-Menu (Ignored if Config.NHInput = true) [https://github.com/qbcore-framework/qb-menu]
Config.OXLib = false						-- Use the OX_lib (Ignored if Config.NHInput or Config.QBInput = true) [https://github.com/overextended/ox_lib] !! must add shared_script '@ox_lib/init.lua' and lua54 'yes' to fxmanifest!!
Config.ElevatorWaitTime = 0					-- How many seconds until the player arrives at their floor

Config.Notify = {
	enabled = true,							-- Display hint notification?
	distance = 3.0,							-- Distance from elevator that the hint will show
	message = "Target the elevator to use"	-- Text of the hint notification
}

--[[
	USAGE
	To add an elevator, copy the table below and configure as needed:
		coords = vector3 coords of center of elevator
		heading = Direction facing out of the elevator
		level = What floor are they going to
		label = What is on that floor
		jobs = OPTIONAL: Table of job keys that are allowed to access that floor and value of minimum grade of each job
		items = OPTIONAL: Any items that are required to access that floor (only requires one of the items listed)
		jobAndItem = OPTIONAL: If true, you must you have a required job AND a required items. If false or nil no items are needed
	
]]

--[[
	ExampleElevator = {	
		{
			coords = vector3(xxx, yyy, zzz), heading = 0.0, level = "Floor 2", label = "Roof",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
				["casino"] = 0,
			},
			items = {
				"casino_pass_bronze",
				"casino_pass_silver",
				"casino_pass_gold",
			}
		},
		{
			coords = vector3(xxx, yyy, zzz), heading = 0.0, level = "Floor 1", label = "Penthouse",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
				["casino"] = 0,
			},
			items = {
				"casino_pass_gold",
			},
			jobAndItem = true
		},
		{
			coords = vector3(xxx, yyy, zzz), heading = 0.0, level = "Floor 0", label = "Ground"
		},
	},
]]

Config.Elevators = {
	PillboxElevatorNorth = {
		{
			coords = vector3(332.37, -595.56, 43.28), heading = 70.65, level = "Upper Pillbox", label = "Pillbox - Main Floor",
		},
		{
			coords = vector3(344.31, -586.12, 28.79), heading = 252.84, level = "Lower Pillbox", label = "Pillbox - Lower Pillbox",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(340.05, -584.98, 28.79), heading = 88.21, level = "Parking", label = "Pillbox - Parking Facilities",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	PillboxElevatorSouth = {
		{
			coords = vector3(330.45, -601.07, 43.28), heading = 67.64, level = "Upper Pillbox", label = "Pillbox - Main Floor",
		},
		{
			coords = vector3(345.68, -582.34, 28.79), heading = 248.30, level = "Lower Pillbox", label = "Pillbox - Lower Pillbox",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(341.58, -580.88, 28.79), heading = 70.59, level = "Parking", label = "Pillbox - Parking Facilities",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	PillboxRoofTop = {
		{
			coords = vector3(338.52, -583.84, 74.16), heading = 254.13, level = "Rooftop", label = "Pillbox - HeliPad",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
		{
			coords = vector3(327.17, -603.87, 43.28), heading = 338.36, level = "Upper Pillbox", label = "Pillbox - Main Floor",
			jobs = {
				["police"] = 0,
				["ambulance"] = 0,
			},
		},
	},

	--[[MountZonahRoofTop = {
		{
			coords = vector3(-435.95422363281, -359.73175048828, 34.949501037598), heading = 357.08, level = "Mount Zonah", label = "Mount Zonah - Main Floor",
		},
		{
			coords = vector3(-418.88885498047, -344.67041015625, 24.231548309326), heading = 111.13, level = "Parking Garage", label = "MountZonah - Parking",
		},
		{
			coords = vector3(-439.55838012695, -335.83926391602, 78.301139831543), heading = 86.0, level = "Mount Zonah Rooftop", label = "Mount - Helipad",
		},
	},

	GroveStreetHospital = {
		{
			coords = vector3(348.46267700195, -1408.4714355469, 36.516330718994), heading = 51.57, level = "Davis Hospital", label = "2nd Floor",
		},
		{
			coords = vector3(346.37756347656, -1410.1766357422, 36.516307830811), heading = 51.57, level = "Davis Hospital", label = "2nd Floor",
		},
		{
			coords = vector3(348.13009643555, -1407.7880859375, 32.510520935059), heading = 49.81, level = "Davis Hospital", label = "Main Floor 1",
		},
		{
			coords = vector3(346.24304199219, -1410.076171875, 32.510536193848), heading = 49.81, level = "Davis Hospital", label = "Main Floor 2",
		},
		{
			coords = vector3(342.49279785156, -1425.8603515625, 46.509231567383), heading = 139.12, level = "Davis Hospital", label = "Rooftop Door 1",
		},
		{
			coords = vector3(340.03506469727, -1423.9862060547, 46.509243011475), heading = 139.12, level = "Davis Hospital", label = "Rooftop Door 2",
		},
	},

	Pillbox = {
		{
			coords = vector3(305.80313110352, -594.21264648438, 47.276760101318), heading = 67.52, level = "Pillbox Hospital", label = "2nd Floor",
		},
		{
			coords = vector3(306.06332397461, -591.65277099609, 47.276721954346), heading = 67.52, level = "Pillbox Hospital", label = "2nd Floor",
		},
		{
			coords = vector3(306.39508056641, -591.76861572266, 43.270961761475), heading = 67.52, level = "Pillbox Hospital", label = "Main Floor 1",
		},
		{
			coords = vector3(305.43865966797, -594.37884521484, 43.270965576172), heading = 67.52, level = "Pillbox Hospital", label = "Main Floor 2",
		},
		{
			coords = vector3(330.46963500977, -579.07562255859, 74.180404663086), heading = 244.9, level = "Pillbox Hospital", label = "Rooftop Door 1",
		},
		{
			coords = vector3(329.37112426758, -581.82421875, 74.180381774902), heading = 244.9, level = "Pillbox Hospital", label = "Rooftop Door 2",
		},
	},--]]

	WeaponCrafting = {
		{
			coords = vector3(-1598.2, -429.9, 19.75), heading = 4.67, level = "Inside", label = "Weapon Dealer Inside",
		},
		{
			coords = vector3(-43.84, -1231.62, 29.33), heading = 274.17, level = "Outside", label = "Weapon Dealer Outside",
		},
	},

	EvansPenthouse = {
		{
			coords = vector3(-305.15, -721.03, 28.03), heading = 166.09, level = "Garage", label = "Garage Floor",
		},
		{
			coords = vector3(-286.67, -723.57, 125.47), heading = 250.45, level = "Penthouse", label = "Penthouse Floor",
		},
	},

}
