CFG = {}

CFG.FRAMEWORK = 'qb' -- 'qb', 'qbx', 'esx', 'esxold' or false to disable it
CFG.INVENTORY = 'ox' -- 'qb', 'ox', 'qs', 'esx' or false to disable it
CFG.TARGET = false -- 'qb', 'ox', 'qtarget' or false to disable it
CFG.DATABASE = 'oxmysql' -- 'oxmysql', 'mysql-async' or false to disable
CFG.NOTIFY = 'ox' -- 'ox', 'qb', 'esx', 'native'

CFG.MENU = {
	type = 'ox', -- 'ox', 'menuv', 'war' (BETA)

	-- 'menuv' uses: topright (default), topleft, bottomright, bottomleft
	-- 'ox' uses: top-right (default), top-left, bottom-right, bottom-left
	-- 'war' doesn't have any settings yet...
	pos = 'top-right', 

	-- these settings are only for MenuV
	size = 'size-125', -- menu size
	colour = { r = 250, g = 20, b = 60 }, -- https://www.rapidtables.com/web/color/RGB_Color.html
	banner = 'none', -- 'none', 'default', 'default_native'
	banner_text = false, -- 'TEXT'
}

-- RESTRICTION OPTIONS --
CFG.RESTRICTIONS = {

	--[[ 
		ACE PERMS 
		- put this into your server cfg and edit identifier to yours

		add_ace k9 k9 allow
		add_principal identifier.license:830e0a2add6393cf28f45474dbf6ac4577f0652a k9 #sheen
	]]
	USE_ACE_PERMS = false, -- true / false

	--[[ 
		!!! ONLY FOR BADGER_DISCORD_API USERS !!!
		Keep in mind that ACE perms and badger_discord_api don't work together, 
		badger_discord is always prioritized before ace_perms if it's enabled...
	]]
	BADGER_DISCORD = {
		enable = false, -- true/false
		roles = {
			-- id of role from your discord
			['907104457018449941'] = true,
		}
	},

	--[[
		JOB RESTRICTIONS (only with QBCore/QBX/ESX/ESXOLD)
		- jobs and grades that have access to k9 menu
		- it's disabled if ace perms or badger_discord_api are enabled
	]]
	JOBS = {
		-- job name, grade numbers
		['police'] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
		['ambulance'] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, 
	}
}

-- https://docs.fivem.net/docs/game-references/controls/ -- list of controls
CFG.CONTROLS = {
	-- AIM AND HIT THE KEY
	aim = {
		attack = 38, -- E
		go = 47 -- G
	},
	cam = { -- camera keys
		up =  172,
		down = 173,
		cancel = 177, -- ESC, BACKSPACE, RIGHT CLICK
		zoomUp = 241, -- scroll up
		zoomDown = 242 -- scroll down
	}
}

CFG.LVL_SYSTEM = {
	DISABLE = true, -- if true then dog will always follow your orders, you will don't receive any XP/LVLS
	XP_PER_ACTION = {from = 5, to = 20}, -- randomised

	LVLS = {
		-- u can add unlimited lvls
	
		-- XP = what XP you need to have to reach this lvl
		-- Fail = percentage/chance of dog to fail to comply (actions, searching, tracking etc)
		-- tracking_speed = how fast is gonna follow the track, from 1.0 to 5.0
		-- tackle_chance = percentage/chance to tackle player while attacking (only if tackle is enabled)
	
		[1] = { XP = 0, Fail = 30, tracking_speed = 1.0, tackle_chance = 10 },
		[2] = { XP = 150, Fail = 20, tracking_speed = 2.0, tackle_chance = 20 },
		[3] = { XP = 350, Fail = 10, tracking_speed = 3.0, tackle_chance = 30 },
		[4] = { XP = 800, Fail = 5, tracking_speed = 4.0, tackle_chance = 30 },
		[5] = { XP = 1500, Fail = 0, tracking_speed = 5.0, tackle_chance = 30 },
	}
}

CFG.SETTINGS = {

	-- you can lower this value if you want decrease damage of K9
	-- keep in mind that it will be set for all animals that are able to attack
	-- if player has 100 HP or lower, he will get instakilled automatically, thats how the game works
	DAMAGE_MODIFIER = 1.0, -- default is 1.0, min 0.01 - max 1.0,,, i personally suggest 0.7
	
	-- if false then headshot will deal same damage as any other body shots
	INSTA_HEADSHOT = true, -- true/false

	MAX_DOGS = 3, -- max registered dogs per character
	BLIP = true, -- creates blip for k9 on the map

	TACKLE = {
		enable = true, -- or false to disable
		chance = 30, -- this value is used only if level system is disabled
		type = 2 -- 1 = animation, 2 = ragdoll
	},

	DELETE_DOG = { -- delete dog if
		dog_dead = false, -- if u want to use this option, then disable saving of health and armor below
		owner_dead = false 
	},

	VEHICLE_ENTERING = {
		-- If you set it to true it will let the dog enter the vehicles with more realistic animations
		-- This feature is still in BETA phase, it works but sometimes other players can see it desynced
		new = true,
	
		vans = { -- some van vehicles, so it will switch animation of entering, keep in mind that this script was intended for small regular vehicles so the van entering is not perfect
			[`rumpo`] = true, [`rumpo2`] = true,
			[`speedo`] = true, [`speedo2`] = true,
			[`speedo3`] = true, [`policet`] = true
		}
	},

	SPAWN_AREAS = {
		--[[
			With this feature you will restrict everyone to spawn/despawn dog anywhere but in certain areas.
		]]
		enable = false, -- true / false
		require_house = false, -- cops will need to spawn dog house in the area first, it will also spawn the dog inside of the house
		areas = {
			{radius = 30.0, coords = vector3(432.3, -981.64, 30.71)}, -- area 1
			-- {radius = 30.0, coords = vector3(432.3, -981.64, 30.71)}, -- example
		}
	},

	CAMERA = {
		disable = false, -- true = disables camera menu options and commands

		-- required item for mounting camera, add the item by yourself
		-- you can make it false if you don't wanna use it
		item = false, -- 'k9_camera' 

		-- new options coming soon... sooon.... soooon...
	},

	TRACKING = {
		radius = 75.0, -- units, smell radius
		speed = 1.0, -- dog following track speed, from 1.0 to 5.0, this value is used if you are not using LVL SYSTEM
		cooldown = 3 -- minutes, make it 0 for removing cooldown
	},
	
	SEARCH = {

		--[[ 
			!!! ONLY FOR QBCORE / QBX USERS !!!
			- if you want to use advanced searching you need to use code provided in README file
			- true = means it will search all vehicle trunks and gloveboxes
			- false = it can search vehicles that are owned by players
		]]
		advanced = true,

		-- !!! ONLY FOR FRAMEWORK AND INVENTORY USERS !!!
		all_weapons = false, -- true/false, it will automatically add all items that start with 'weapon' word to the list so you don't have to add them
		items = { -- items that can be found by the dog
			['thermite'] = true,
			['ecstasy'] = true,
			['weed_package'] = true,
			['meth_bag'] = true,
			['crack'] = true,
			['heroin'] = true,
			['heroin_syringe'] = true,
			['coke_figure'] = true,
			['coke_pure'] = true,
			['weed_bud'] = true,
			['meth_pipe'] = true,
			['meth_sacid'] = true,
			['meth_sharp'] = true,
			['meth_syringe'] = true,
			['markedbills'] = true,
		},

		-- duration of searching peds
		search_time = 3, -- seconds

		-- what happens if dog finds something on player or in the vehicle
		onSuccess = 'bark', -- 'bark', 'sit', 'laydown' or make it false to do nothing

		-- vehicle settings
		vehicle = {
			open_doors = false, -- open all doors while searching vehicle

			-- chance to find something illegal in the vehicle
			chance = 100, -- % this parameter is used only if you are not using any framework
		},

		-- npc settings
		npc = {
			chance = 100, -- % chance to find something ilegall

			onSuccess = { -- if your dog finds ilegal items, npc could flee from the scene
				flee = {
					enabled = true, -- true / false
					chance = 30, -- % chance to flee
					attack = true, -- should dog attack if npc tries to flee (if u using lvl system, it still depends on chances from each lvl)
				}
			},
			onFail = { -- if dog doesnt find anything ilegal
				walk_away = true, -- send npc to walk away
			}
		}
	},

	STATUS = {
		-- new registered dog spawns automatically with maxHealth
		-- fyi if dog has 100 hp or lower, he always get killed after one shot... that's how the game works xd
		-- u can set any max values
		maxHealth = 200,
		maxArmor = 100,
	
		--[[ 
			true = it will don't save these values into database, 
			so players are able to respawn their dog through menu without reviving option
		]]
		disable_hp_and_armor_saving = true, 
	
		heal = {
			revive_timer = 3, -- reviving dog
	
			timer = 3, -- applying bandage
			amount = {from = 10, to = 25}, -- how much hp will be added to dog
			item = 'bandage',
		},
		armor = {
			timer = 3,
			amount = {from = 10, to = 25}, -- how much armor will be added to dog
			item = 'armor',
		},
	
		feed = {
			prop = `v_res_mbowl`, -- object
	
			item = 'water_bottle', -- item that is required
	
			-- thirst and hunger gets decreased every 10 seconds
			-- min 0.0, max 1.0
			thirst = { from = 0.1, to = 0.3 },
			hunger = { from = 0.1, to = 0.3 },
	
			warning = 20, -- warns player if thirst/hunger is under x %
			get_damaged = false, -- true/false - if dog is hungry/thirsty it will slowly decrease health
		
			-- dog will be forced to pee / poo 
			-- he'll do the action after getting fed 2-3x times
			peeing = true, pooping = true
		}
	}
}

-- DOGS FOR REGISTRATION --
CFG.DOGS = {
	-- Only these dog models i found can attack
	-- label and spawn name
	['Shepherd'] = `a_c_shepherd`,
	['Rottweiler'] = `a_c_rottweiler`,
	['Chop'] = `a_c_chop`,
}

CFG.COMMANDS = {

	BINDING_SYSTEM = { -- fivem keybinding system
		enable = false, -- true/false
		commands = {
			--[[ 
				- three parameters -
					command is name of command from the list below
					key is primary key for triggering
					label is showed in FiveM keybinds as description for bind

				- list of usable keys
				https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
			]]

			[1] = { command = 'k9', key = 'K', label = 'Open K9 Menu' }, -- binding command k9 to K key (example)
			-- [2] = { command = 'k9animations', key = 'L', label = 'Open K9 Animations' },
		},
	},


	--[[
		LIST OF COMMANDS
		- code_name and name of command
		- change only name of command if you need to!
	]]
	disable = false, -- true = disable all commands

	-- main
	['register_dog'] = 'k9register',
	['reselect'] = 'k9reselect',
	['main_menu'] = 'k9',
	['save_dog'] = 'k9save',
	['check_dog'] = 'k9check',
	['spawn'] = 'k9spawn',
	['animations'] = 'k9animations',

	-- actions
	['follow'] = 'k9follow',
	['vehicle'] = 'k9vehicle',
	['ball'] = 'k9ball',
	['fetch'] = 'k9fetch',
	['search_player'] = 'k9searchped',
	['search_car'] = 'k9searchcar',
	['feed'] = 'k9feed',
	['heal'] = 'k9heal',
	['armor'] = 'k9armor',
	['carry'] = 'k9carry',
	['track'] = 'k9trackall',
	['track_player'] = 'k9trackplayer',

	-- camera
	['toggle_camera'] = 'k9camera',
	['mount_camera'] = 'k9mount',

	-- anim commands
	['sit'] = 'k9sit',
	['laydown'] = 'k9laydown',
	['bark'] = 'k9bark',

	-- delete k9
	['delete'] = 'k9delete'
}

-- ANIMATIONS --
-- u can add more
CFG.DOG_ANIMATIONS = {
	--[[
		FLAGS:
		1 = repeat animation
		2 = stop on last frame of animation
		0 = normal
	]]

	[1] = {
		name = "Sit",
		dict = "creatures@rottweiler@tricks@", anim = "sit_enter", flags = 2,
	},
	[2] = {
		name = "Lay Down / Get Up",
		dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "sleep_in_kennel", flags = 2,
	},
	[3] = {
		name = "Bark",
		dict = "creatures@rottweiler@amb@world_dog_barking@idle_a", anim = "idle_a", flags = 1,
	},
	[4] = {
		name = "Indication",
		dict = "creatures@rottweiler@indication@", anim = "indicate_high", flags = 1,
	},
	[5] = {
		name = "Sniff",
		dict = "creatures@rottweiler@indication@", anim = "indicate_low", flags = 2,
	},
	[6] = {
		name = "Beg",
		dict = "creatures@rottweiler@tricks@", anim = "beg_enter", flags = 2,
	},
	[7] = {
		name = "Gimme Paw",
		dict = "creatures@rottweiler@tricks@", anim = "paw_right_enter", flags = 2,
	},
	[8] = {
		name = "Petting",
		dict = "creatures@rottweiler@tricks@", anim = "petting_chop", flags = 2,
	},
}

-- LANG --
CFG.LANG = {
	ox_notify_header = 'K9 ALERT',

	register_header = 'REGISTER YOUR DOG',
	breed = 'Choose breed of the dog',
	name_dog = 'Name Your K9',
	register_dog = 'Register K9',
	name = 'Name',

	select_dog = 'SELECT YOUR DOG',
	k9_menu = 'K9 MENU',

	spawn = 'Spawn | Remove K9',
	spawn_desc = 'Call your dog',

	follow = 'Follow',
	stop = 'Stop',
	follow_desc = 'Follow me doggie',
	f_type = 'Normal',
	f_type2 = 'Lead',

	leash = 'Leash',

	get_in = 'Get In',
	get_out = 'Go Out',
	get_desc = 'Send your dog to vehicle',

	search_ped = 'Search Player',
	search_npc = 'Search NPC',
	search_veh = 'Search Vehicle',
	search_desc = 'Search Options',

	search_ped2 = 'Player',
	search_npc2 = 'NPC',
	search_veh2 = 'Vehicle',
	search_desc2 = 'Search',

	track = 'Tracking',
	track_player = 'Track Player',
	find_tracks = 'Find Tracks',
	insert_id = 'Insert player id',

	animations = 'Animations',
	anim_desc = 'Play dog animations',

	reselect = 'Reselect Dog',
	reselect_desc = 'Open selection menu',

	other = 'Other Options',
	other_desc = 'Some cool features hiding there',

	main_actions = 'Care about your dog',

	check_dog = 'Check Status',
	check_desc = 'Make sure your dog is okay',

	carry = 'Carry',
	carry_desc = 'Carry your dog',
	stop_carry = 'Press ~INPUT_DETONATE~ to ~r~stop ~w~carrying.',

	feed_dog = 'Feed',
	feed_desc = 'Give him some good meal',

	ball = 'Ball',
	fetch = 'Fetch',
	play_desc = 'Play fetch or throw ball!',

	spawn_house = 'Place House',
	go_into_house = 'Enter | Leave - House',
	house_desc = 'Build a house or send your dog into house', -- this is used in ox menu
	house_desc2 = 'House Options', -- this is used in menuv
	missing_house = "House doesn't exist",

	mount_camera = 'Mount | Remove',
	open_camera = 'Check Camera',
	camera_desc = 'Camera Options',

	heal_dog = 'Revive | Heal',
	armor_dog = 'Armor',
	heal_desc = 'Help your dog',

	appearance = 'Apperance',
	dog_style = 'Switch Style (Random)',
	change_appearance = 'Appearance (BETA)',
	
	attack = 'Attack!',
	go = 'Go!',

	get_up = 'Press ~INPUT_PICKUP~ to get up.',

	camera_mounted = 'You mounted camera on your dog.',
	camera_removed = 'You removed camera from your dog.',
	mount_first = 'You need to mount camera on the dog first.',

	feeded = 'Dog got fed.',
	starving = "Your dog is starving...",
	thirsty = "Your dog is thirsty...",

	dog_died = 'Your dog died and got removed.', -- shows this message only if u using -> dog_remove = true

	missing_item = "You missing required item (%s)",

	status = "Health: %s, Armor: %s, Hunger: %s, Thirst: %s - LVL: %s (MAX %s), XP: %s (NEEDED %s)",

	max_limit = "You can't register more dogs... (limit %i)",

	no_name = "You didn't insert name of the dog",

	search = 'Searching...',
	search_found = '%s found something...',
	search_not_found = "%s didn't find anything...",
	nobody_close = 'Nobody close.',

	dog_not_close = 'You must be close to your dog.',

	ball_not_found = "Couldn't find the ball.",
	ball_lost = 'Ball got lost...',
	ball_not_close = 'You are not close to the ball.',

	lvl_up = 'Your dog ranked up to lvl %i!',
	fail_command = "%s didn't follow your command...",

	required_job = "You don't have required job.",

	all_seats_occupied = "All seats are occupied...",
	veh_no_found = "Vehicle not found.",
	no_vehicle = "Couldn't find vehicle, make sure you looking on one.",
	no_plate = "Couldn't find vehicle with plate.",
	veh_no_supported = "This vehicle model isn't supported.",
 
	saved = 'Dog was saved.',
	not_loaded = "Your dog isn't loaded.",
	deleted = 'Your dog was permanently deleted.',

	throw_ball = 'Press ~INPUT_PICKUP~ to throw the ball.',
	call_dog = 'Press ~INPUT_PICKUP~ to call him back.\nPress ~INPUT_DETONATE~ to ~r~stop ~w~activity.',
	stop_activity = 'Press ~INPUT_DETONATE~ to ~r~stop ~w~activity',
	pickup_ball = 'Press ~INPUT_PICKUP~ to pickup ball.\nPress ~INPUT_DETONATE~ to ~r~stop ~w~activity',

	track_player_action = 'Press ~INPUT_PICKUP~ to follow track\nPress ~INPUT_DETONATE~ to ~r~cancel ~w~tracking',
	track_action = 'Change track ~INPUT_CELLPHONE_LEFT~ ~INPUT_CELLPHONE_RIGHT~\nFollow track ~INPUT_PICKUP~',
	track_hint = 'Track #%i - Direction %s - Track is long approx. %i meters',
	dog_found_tracks = 'Dog found %i track/s.',
	dog_nothing_found = "Dog didn't find any track/s...",
	tracking_cooldown = "Tracking is not available at the moment.",
	
	release_dog = 'Press ~INPUT_PICKUP~ to release dog.',

	missing_dog_house = 'You need to create dog house in the area first.',
	designated_area = 'You must be in designated area.',
}