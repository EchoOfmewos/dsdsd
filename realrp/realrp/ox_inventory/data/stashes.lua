---wip types

---@class OxStash
---@field name string
---@field label string
---@field owner? boolean | string | number
---@field slots number
---@field weight number
---@field groups? string | string[] | { [string]: number }
---@field blip? { id: number, colour: number, scale: number }
---@field coords? vector3
---@field target? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }

return {
	{
		coords = vec3(-405.98922729492, -390.20440673828, 25.098823547363),
		target = {
			loc = vec3(-405.98922729492, -390.20440673828, 25.098823547363),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'policelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(-215.73175048828, -1338.9255371094, 31.301048278809),
		target = {
			loc = vec3(-215.73175048828, -1338.9255371094, 31.301048278809),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Shop Stash'
		},
		name = 'stormautosstash',
		label = 'Shop Stash',
		owner = false,
		slots = 70,
		weight = 300000,
		groups = {['stormautos'] = 0}
	},

	{
		coords = vec3(-564.24, 285.57, 85.38),
		target = {
			loc = vec3(-564.24, 285.57, 85.38),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Tequila La Stash'
		},
		name = 'Tequilastash',
		label = 'Tequila Stash',
		owner = false,
		slots = 80,
		weight = 100000,
		groups = {['tequilala'] = 0}
	},

	{
		coords = vector3(301.61, -600.38, 43.28),
		target = {
			loc = vector3(301.61, -600.38, 43.28),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
}
