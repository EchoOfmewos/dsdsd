Config = {}

Config.Cmd = "delvel" -- Chat command to delete vehicles

Config.Framework = "qbcore" -- Options: "esx", "qbcore", "other"

Config.QBUsePermissionsUpdate = true

Config.AdminGroups = { -- Admin groups that can access the admin menu
	"superadmin",
	"god",
	"realrp",
	"mod"
}

Config.AdminList = { -- IF YOU USE ESX OR QBCORE IGNORE THIS
	'license:2ash123ad1337a15029a21a6s4e3622f91cde1d0', -- Example, change this
	'discord:370910283901283929' -- Example, change this
}

Config.DeleteVehicleTimer = 1 -- Time (in minutes) that it will take to delete vehicles since you execute the command

Config.DeleteVehiclesIfInSafeZone = false -- If true it'll delete vehicles inside safezones

Config.DeleteVehiclesAt = { -- Delete vehicles automatically at this time every day (h = hour m = minutes)
	
}

-- Set safezones
-- For the blip color check: https://docs.fivem.net/docs/game-references/blips/#blip-colors-377.81, -312.06, 24.76, 96.16
-- If you want to remove the blip simply set 'alpha' to 0
Config.SafeZones = {
	{ ['x'] = -44.155646565, ['y'] = -1100.155646565, ['z'] = 26.267009735108, ['radius'] = 16.0, ['color'] = 2, ['alpha'] = 150},
	{ ['x'] = 454.83, ['y'] = -1024.56, ['z'] = 28.48, ['radius'] = 16.0, ['color'] = 2, ['alpha'] = 150},
	{ ['x'] = 317.07, ['y'] = -540.93, ['z'] = 28.74, ['radius'] = 16.0, ['color'] = 2, ['alpha'] = 150},
	{ ['x'] = -377.81, ['y'] = -312.06, ['z'] = 24.76, ['radius'] = 9.0, ['color'] = 2, ['alpha'] = 150},
	
}