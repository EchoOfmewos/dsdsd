return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['hacking_device'] = {
		label = 'Hacking Device',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['drug_package'] = {
		label = 'Illegal Package',
		weight = 1,
		stack = false,
		close = false,
		description = 'Marked for police seizure'
	},

	['lawyerid'] = {
        label = 'Bar License ID Card.',
        weight = 1,
        consume = 0,
        stack = false,
        close = true,
        description = nil
    },

	["car_door"] = {label = "car door",weight = 100,stack = true,close = false,description = "",client = {	image = "car_door.png",}
	},
    ["car_wheel"] = {label = "car wheel",weight = 100,stack = true,close = false,description = " :D",client = {	image = "car_wheel.png",}
	},
    ["car_battery"] = {label = "car battery",weight = 100,stack = true,close = false,description = " :D",client = {	image = "car_battery.png",}
	},
    ["car_gearbox"] = {label = "car gearbox",weight = 100,stack = true,close = false,description = " :D",client = {	image = "car_gearbox.png",}
	},
    ["car_radiator"] = {label = "car radiator",weight = 100,stack = true,close = false,description = " :D",client = {	image = "car_radiator.png",}
	},
    ["car_scrap"] = {label = "car scrap",weight = 100,stack = true,close = false,description = " :D",client = {	image = "car_scrap.png",}
	},
    ["car_hood"] = {label = "car hood",weight = 100,stack = true,close = false,description = " :D",client = {	image = "car_hood.png",}
	},
    ["car_trunk"] = {label = "car trunk",weight = 100,stack = true,close = false,description = " :D",client = {	image = "car_trunk.png",}
	},
    ["chop_contract"] = {label = "chop_contract",weight = 100,stack = true,close = false,description = " :D",client = {	image = "chop_contract.png",}
	},

	['xmas_gift'] = {
        label = 'Unpacked Gift',
        weight = 100,
        stack = false,
        close = true,
        consume = 0,
        server = {
            export = 'rcore_xmas.xmas_gift'
        }
    },

    ['xmas_packed_gift'] = {
        label = 'Packed Gift',
        weight = 250,
        stack = false,
        close = true,
        consume = 0,
        server = {
            export = 'rcore_xmas.xmas_packed_gift',
        }
    },

    ['xmas_tree'] = {
        label = 'Christmas Tree',
        weight = 350,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'rcore_xmas.xmas_tree'
        }
    },

    ['xmas_star'] = {
        label = 'Christmas Star',
        weight = 50,
        stack = true,
        close = true,
        consume = 0,
        export = 'rcore_xmas.xmas_star'
    },

    ['xmas_decor'] = {
        label = 'Christmas Decor',
        weight = 50,
        stack = true,
        close = true,
        consume = 0,
        export = 'rcore_xmas.xmas_decor'
    },

	['cd'] = {
		label = 'CD',
		weight = 1,
		stack = false,
		close = true,
		description = 'Support your local artist!'
	},

	['backpack'] = {
    	label = 'Backpack',
    	weight = 5000,
    	stack = false,
   	 	consume = 0,
	},

	['delivery_food'] = {
   		label = 'Delivery Food',
   		weight = 300,
   		stack = false,
   		close = false,
   		description = 'Grab?'
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	-- WASABI AMBULANCE SHIT
	['morphine30'] = {
		label = 'Morphine 30MG',
		weight = 2,
		stack = true,
		close = true,
	},

	['morphine15'] = {
		label = 'Morphine 15MG',
		weight = 2,
		stack = true,
		close = true,
	},

	['perc30'] = {
		label = 'Percocet 30MG',
		weight = 2,
		stack = true,
		close = true,
	},

	['perc10'] = {
		label = 'Percocet 10MG',
		weight = 2,
		stack = true,
		close = true,
	},

	['perc5'] = {
		label = 'Percocet 5MG',
		weight = 2,
		stack = true,
		close = true,
	},

	['vic10'] = {
		label = 'Vicodin 10MG',
		weight = 2,
		stack = true,
		close = true,
	},

	['vic5'] = {
		label = 'Vicodin 5MG',
		weight = 2,
		stack = true,
		close = true,
	},

	['recoveredbullet'] = {
		label = 'Recovered Bullet',
		weight = 1,
		stack = true,
		close = false,
	},

	-- WASABI AMBULANCE SHIT

	['black_money'] = {
		label = 'Dirty Money',
	},

	['shovel'] = {
		label = 'Shovel',
		weight = 1000,
		decay = true,
		stack = false,
		close = false,
		description = 'Diggy Diggy Diggy?',
	},
	
	['dirty_potato'] = {
		label = 'Dirty Potato',
		weight = 250,
		stack = true,
		close = false,
		description = 'Potato potato but dirty dirty?',
	},

	['gopro'] = {
		label = 'GoPro',
		weight = 1,
		stack = true,
		close = true,
		description = 'A camera'
	},
	
	['potato'] = {
		label = 'Potato',
		weight = 250,
		stack = true,
		close = false,
		description = 'Potato potato?',
	},

	['cups'] = {
		label = 'cups',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_beerpong.cups',
		},
	},

	['spraygang'] = {
		label = 'Gang Spray',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['spraygangremover'] = {
		label = 'Gang Spray Remover',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	
	['laptop'] = {
		label = 'Laptop',
		weight = 1,
		stack = false,
		close = true,
		description = 'Laptop :)'
	},
	['decrypter'] = {
		label = 'Decrypter',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['black_usb'] = {
		label = 'Black USB',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['dirty_cabbage'] = {
		label = 'Dirty Cabbage',
		weight = 250,
		stack = true,
		close = false,
		description = 'Cabby cabby but dirty dirty?',
	},
	
	['cabbage'] = {
		label = 'Cabbage',
		weight = 250,
		stack = true,
		close = false,
		description = 'Cabby cabby?',
	},
	
	['dirty_tomato'] = {
		label = 'Dirty Tomato',
		weight = 250,
		stack = true,
		close = false,
		description = 'To-ma-to but dirty',
	},
	
	['tomato'] = {
		label = 'Tomato',
		weight = 250,
		stack = true,
		close = false,
		description = 'To-ma-to',
	},
	
	['dirty_orange'] = {
		label = 'Dirty Orange',
		weight = 250,
		stack = true,
		close = false,
		description = 'It talks!!!!',
	},
	
	['orange'] = {
		label = 'Orange',
		weight = 250,
		stack = true,
		close = false,
		description = 'It talks!!!!',
	},
	
	['dirty_coffee_beans'] = {
		label = 'Dirty Coffee Beans',
		weight = 250,
		stack = true,
		close = false,
		description = 'Ohh wakey wakey but dirty',
	},
	
	['coffee_beans'] = {
		label = 'Coffee Beans',
		weight = 250,
		stack = true,
		close = false,
		description = 'Ohh wakey wakey but dirty',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	--SABOTAGE SCRIPT
	['spanner'] = {
        label = 'Spanner',
        weight = 1000,
        stack = true,
        close = true,
        description = nil
    },
    ['firelighter'] = {
        label = 'Firelighters',
        weight = 500,
        stack = false,
        close = true,
        description = nil
    },
    ['adjustable_spanner'] = {
        label = 'Spanner',
        weight = 1000,
        stack = true,
        close = true,
        description = nil
    },
    ['drill'] = {
        label = 'Drill',
        weight = 3000,
        stack = true,
        close = true,
        description = nil
    },
    ['buzz_saw'] = {
        label = 'Buzz Saw',
        weight = 6000,
        stack = true,
        close = true,
        description = nil
    },
    ['impact_driver'] = {
        label = 'Impact Driver',
        weight = 4000,
        stack = true,
        close = true,
        description = nil
    },
    ['pliers'] = {
        label = 'Pliers',
        weight = 1000,
        stack = true,
        close = true,
        description = nil
    },
    ['impact_bomb'] = {
        label = 'Impact Explosive',
        weight = 3000,
        stack = true,
        close = true,
        description = nil
    },
    ['ignition_bomb'] = {
        label = 'Ignition Explosive',
        weight = 3000,
        stack = true,
        close = true,
        description = nil
    },
    ['remote_bomb'] = {
        label = 'Remote Explosive',
        weight = 3000,
        stack = true,
        close = true,
        description = nil
    },
    ['phone_bomb'] = {
        label = 'Detonator Device',
        weight = 1000,
        stack = false,
        close = true,
        description = nil
    },
	-- YOGA MATS
	['yogamat_pro'] = {
		label = 'ProLaps Yoga Mat',
		weight = 500,
		stack = true,
		close = true,
		description = 'A Limited Edition ProLaps Yogamat.'
	},
	['yogamat_blue'] = {
		label = 'Blue Yoga Mat',
		weight = 500,
		stack = true,
		close = true,
		description = 'Did somebody say Yoga?',
	},
	['yogamat_black'] = {
		label = 'Black Yoga Mat',
		weight = 500,
		stack = true,
		close = true,
		description = 'Did somebody say Yoga?',
	},
	['yogamat_red'] = {
		label = 'Red Yoga Mat',
		weight = 500,
		stack = true,
		close = true,
		description = 'Did somebody say Yoga?',
	},

	--MINING 

	['pickaxe'] = {
		label = 'Pickaxe',
		weight = 325,
		stack = true,
		degrade = 30 -- This is the time in minutes until a pickaxe degrades and is removed from inventory
	},
	
	['scrap_metal'] = {
		label = 'Scrap Metal',
		weight = 280,
		stack = true,
	},
	
	['stone'] = {
		label = 'Stone',
		weight = 265,
		stack = true,
	},
	
	['raw_copper'] = {
		label = 'Raw Copper',
		weight = 245,
		stack = true,
	},
	
	['raw_iron'] = {
		label = 'Raw Iron',
		weight = 225,
		stack = true,
	},
	
	['raw_steel'] = {
		label = 'Raw Steel',
		weight = 210,
		stack = true,
	},
	
	['raw_silver'] = {
		label = 'Raw Silver',
		weight = 190,
		stack = true,
	},
	
	['raw_gold'] = {
		label = 'Raw Gold',
		weight = 190,
		stack = true,
	},
	
	['raw_diamond'] = {
		label = 'Raw Diamond',
		weight = 165,
		stack = true,
	},
	
	['raw_emerald'] = {
		label = 'Raw Emerald',
		weight = 140,
		stack = true,
	},

	['raw_ruby'] = {
		label = 'Raw Emerald',
		weight = 140,
		stack = true,
	},
	
	['copper'] = {
		label = 'Copper',
		weight = 225,
		stack = true,
	},
	
	['iron'] = {
		label = 'Iron',
		weight = 200,
		stack = true,
	},
	
	['steel'] = {
		label = 'Steel',
		weight = 190,
		stack = true,
	},
	
	['silver'] = {
		label = 'Silver',
		weight = 175,
		stack = true,
	},
	
	['gold'] = {
		label = 'Gold',
		weight = 155,
		stack = true,
	},
	
	['diamond'] = {
		label = 'Diamond',
		weight = 140,
		stack = true,
	},
	
	['emerald'] = {
		label = 'Emerald',
		weight = 125,
		stack = true,
	},

	--HUNTING SCRIPT

	["hunting_stove"] = {
		label = "Hunting Stove",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_mtlion_meat"] = {
		label = "Lion Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_mtlion_skin"] = {
		label = "Lion Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},
	
	["hunting_deer_skin"] = {
		label = "Deer Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_deer_meat"] = {
		label = "Deer Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_boar_skin"] = {
		label = "Boar Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_boar_meat"] = {
		label = "Boar Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_coyote_skin"] = {
		label = "Coyote Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_coyote_meat"] = {
		label = "Coyote Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_chickenhawk_skin"] = {
		label = "Chickenhawk Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_chickenhawk_meat"] = {
		label = "Chickenhawk Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_rabbit_skin"] = {
		label = "Rabbit Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_rabbit_meat"] = {
		label = "Rabbit Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_crow_skin"] = {
		label = "Crow Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_crow_meat"] = {
		label = "Crow Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_pigeon_skin"] = {
		label = "Pigeon Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_pigeon_meat"] = {
		label = "Pigeon Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_seagull_skin"] = {
		label = "Seagull Skin",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_seagull_meat"] = {
		label = "Seagull Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_deer_meat_cooked"] = {
		label = "Cooked Deer Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_mtlion_meat_cooked"] = {
		label = "Cooked Lion Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_boar_meat_cooked"] = {
		label = "Cooked Boar Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_coyote_meat_cooked"] = {
		label = "Cooked Coyote Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_chickenhawk_meat_cooked"] = {
		label = "Cooked Chickenhawk Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_rabbit_meat_cooked"] = {
		label = "Cooked Rabbit Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_crow_meat_cooked"] = {
		label = "Cooked Crow Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_pigeon_meat_cooked"] = {
		label = "Cooked Pigeon Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	["hunting_seagull_meat_cooked"] = {
		label = "Cooked Seagull Meat",
		weight = 800,
		stack = true,
		close = true,
		usable = true,
		description = "",
	},

	-- BUTCHER JOB SCRIPT

	['butcher_knife'] = {
		label = 'Butcher knife',
		weight = 150,
		stack = true,
		close = true,
		description = 'A sharp tool for every butcher.'
	},
	
	['butcher_chicken'] = {
		label = 'Chicken',
		weight = 350,
		stack = true,
		close = true,
		description = 'A plump, ready-to-cook chicken.'
	},
	
	['butcher_ground_chicken'] = {
		label = 'Ground chicken',
		weight = 50,
		stack = true,
		close = true,
		description = 'Finely ground chicken for various dishes.'
	},
	
	['butcher_unplucked_chicken'] = {
		label = 'Unplucked chicken',
		weight = 100,
		stack = true,
		close = true,
		description = 'A raw chicken with feathers.'
	},
	
	['butcher_plucked_chicken'] = {
		label = 'Plucked chicken',
		weight = 75,
		stack = true,
		close = true,
		description = 'A chicken ready for further preparation.'
	},
	
	['butcher_chicken_gizzard'] = {
		label = 'Chicken Gizzard',
		weight = 10,
		stack = true,
		close = true,
		description = 'Flavorful chicken gizzard.'
	},
	
	['butcher_chicken_drumstick'] = {
		label = 'Chicken drumstick',
		weight = 20,
		stack = true,
		close = true,
		description = 'Juicy chicken drumstick.'
	},
	
	['butcher_chicken_breast'] = {
		label = 'Chicken Breast',
		weight = 25,
		stack = true,
		close = true,
		description = 'Lean and versatile chicken breast.'
	},
	
	['butcher_chicken_thigh'] = {
		label = 'Chicken thigh',
		weight = 45,
		stack = true,
		close = true,
		description = 'Flavorful chicken thigh.'
	},
	
	['butcher_chicken_wing'] = {
		label = 'Chicken wing',
		weight = 10,
		stack = true,
		close = true,
		description = 'Chicken wing ready for seasoning.'
	},
	
	['butcher_chicken_back'] = {
		label = 'Chicken back',
		weight = 100,
		stack = true,
		close = true,
		description = 'Flavorful chicken back.'
	},
	
	['butcher_chicken_leg'] = {
		label = 'Chicken leg',
		weight = 15,
		stack = true,
		close = true,
		description = 'Succulent chicken leg.'
	},
	
	['butcher_chicken_stock_bones'] = {
		label = 'Chicken stock bones',
		weight = 5,
		stack = true,
		close = true,
		description = 'Bones for a hearty chicken stock.'
	},
	
	['butcher_order'] = {
		label = 'Chicken order',
		weight = 650,
		stack = true,
		close = true,
		description = 'A customer s chicken order.'
	},

	-- CAT CAFE

	['cat_purple'] = {
		label = 'Purple cat figurine',
		weight = 150,
		stack = true
	},
	['cat_yellow'] = {
		label = 'Yellow cat figurine',
		weight = 150,
		stack = true
	},
	['cat_brown'] = {
		label = 'Brown cat figurine',
		weight = 150,
		stack = true
	},
	['cat_blue'] = {
		label = 'Blue cat figurine',
		weight = 150,
		stack = true
	},
	['cat_red'] = {
		label = 'Red cat figurine',
		weight = 150,
		stack = true
	},
	['cat_green'] = {
		label = 'Green cat figurine',
		weight = 150,
		stack = true
	},
	['princess_robo'] = {
		label = 'Princess Robo',
		weight = 150,
		stack = true
	},
	['shiny_wasabi'] = {
		label = 'Wasabi shiny',
		weight = 150,
		stack = true
	},
		['onion'] = {
		label = 'Onion',
		weight = 10,
		stack = true,
		close = true,
	},
	['chicken_thighs'] = {
		label = 'Chicken thighs',
		weight = 10,
		stack = true,
		close = true,
	},
	['virgin_olive_oil'] = {
		label = 'Virgin olive oil',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice'] = {
		label = 'Rice',
		weight = 10,
		stack = true,
		close = true,
	},
	['soy_sauce'] = {
		label = 'Soy sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['pullman_bread'] = {
		label = 'Pullman bread',
		weight = 10,
		stack = true,
		close = true,
	},
	['egg'] = {
		label = 'Egg',
		weight = 10,
		stack = true,
		close = true,
	},
	['chicken_breast'] = {
		label = 'Chicken breast',
		weight = 10,
		stack = true,
		close = true,
	},
	['flour'] = {
		label = 'Flour',
		weight = 10,
		stack = true,
		close = true,
	},
	['butter'] = {
		label = 'Butter',
		weight = 10,
		stack = true,
		close = true,
	},
	['milk'] = {
		label = 'Milk',
		weight = 10,
		stack = true,
		close = true,
	},
	['sea_moss'] = {
		label = 'Sea Moss',
		weight = 10,
		stack = true,
		close = true,
	},
	['matcha_powder'] = {
		label = 'Matcha Powder',
		weight = 10,
		stack = true,
		close = true,
	},
	['brewed_coffee'] = {
		label = 'Brewed coffee',
		weight = 10,
		stack = true,
		close = true,
	},
	['sugar'] = {
		label = 'Sugar',
		weight = 10,
		stack = true,
		close = true,
	},
	['cocoa_powder'] = {
		label = 'Cocoa powder',
		weight = 10,
		stack = true,
		close = true,
	},
	['dried_boba_tapioca_pearls'] = {
		label = 'Dried boba tapioca pearls',
		weight = 10,
		stack = true,
		close = true,
	},
	['juice'] = {
		label = 'Juice',
		weight = 10,
		stack = true,
		close = true,
	},
	['lemon'] = {
		label = 'Lemon',
		weight = 10,
		stack = true,
		close = true,
	},
	['mint'] = {
		label = 'Mint',
		weight = 10,
		stack = true,
		close = true,
	},
	['noodles'] = {
		label = 'Noodles',
		weight = 10,
		stack = true,
		close = true,
	},
	['chicken'] = {
		label = 'Chicken',
		weight = 10,
		stack = true,
		close = true,
	},
	['strawberry'] = {
		label = 'Strawberry',
		weight = 10,
		stack = true,
		close = true,
	},
	['baking_powder'] = {
		label = 'Baking powder',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice_flour'] = {
		label = 'Rice Flour',
		weight = 10,
		stack = true,
		close = true,
	},
	['awwdorable_valentines_chocolate'] = {
		label = 'Awwdorable valentines chocolate',
		weight = 10,
		stack = true,
		close = true,
	},
	['booba_milk_tea_1'] = {
		label = 'Booba milk tea 1',
		weight = 10,
		stack = true,
		close = true,
	},
	['booba_milk_tea_2'] = {
		label = 'Booba milk tea 2',
		weight = 10,
		stack = true,
		close = true,
	},
	['bowl_inperfect'] = {
		label = 'Bowl inperfect',
		weight = 10,
		stack = true,
		close = true,
	},
	['brewed_coffe'] = {
		label = 'Brewed coffe',
		weight = 10,
		stack = true,
		close = true,
	},
	['cocoa_powder'] = {
		label = 'Cocoa powder',
		weight = 10,
		stack = true,
		close = true,
	},
	['doki_doki_pancakes'] = {
		label = 'Doki doki pancakes',
		weight = 10,
		stack = true,
		close = true,
	},
	['dried_boba_tapioca_pearls'] = {
		label = 'Dried boba tapioca pearls',
		weight = 10,
		stack = true,
		close = true,
	},
	['gingerkitty_cookie'] = {
		label = 'Gingerkitty cookie',
		weight = 10,
		stack = true,
		close = true,
	},
	['hamburg_stake'] = {
		label = 'Hamburg steak',
		weight = 10,
		stack = true,
		close = true,
	},
	['hot_chocolate'] = {
		label = 'Hot chocolate',
		weight = 10,
		stack = true,
		close = true,
	},
	['jelly_beans'] = {
		label = 'Jelly beans',
		weight = 10,
		stack = true,
		close = true,
	},
	['lovely_hot_chocolate'] = {
		label = 'Lovely hot chocolate',
		weight = 10,
		stack = true,
		close = true,
	},
	['matcha_powder'] = {
		label = 'Matcha powder',
		weight = 10,
		stack = true,
		close = true,
	},
	['matcha_coffee'] = {
		label = 'Matcha coffee',
		weight = 10,
		stack = true,
		close = true,
	},
	['meowchi_mochi_ice_cream'] = {
		label = 'Meowchi mochi ice cream',
		weight = 10,
		stack = true,
		close = true,
	},
	['noodles'] = {
		label = 'Noodles',
		weight = 10,
		stack = true,
		close = true,
	},
	['om_nom_omurice'] = {
		label = 'Om nom omurice',
		weight = 10,
		stack = true,
		close = true,
	},
	['nuts'] = {
		label = 'Nuts',
		weight = 10,
		stack = true,
		close = true,
	},
	['pullman_bread'] = {
		label = 'Pullman bread',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice_balls'] = {
		label = 'Rice balls',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice_flour'] = {
		label = 'Rice flour',
		weight = 10,
		stack = true,
		close = true,
	},
	['sea_moss'] = {
		label = 'Sea moss',
		weight = 10,
		stack = true,
		close = true,
	},
	['soy_sauce'] = {
		label = 'Soy sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['strawberry'] = {
		label = 'Strawberry',
		weight = 10,
		stack = true,
		close = true,
	},
	['strawberry_shortcake'] = {
		label = 'Strawberry shortcake',
		weight = 10,
		stack = true,
		close = true,
	},
	['suger'] = {
		label = 'Suger',
		weight = 10,
		stack = true,
		close = true,
	},
	['sugoi_katsu_sando'] = {
		label = 'Sugoi katsu sando',
		weight = 10,
		stack = true,
		close = true,
	},
	['sweet_herbal_tea'] = {
		label = 'Sweet herbal tea',
		weight = 10,
		stack = true,
		close = true,
	},
	['warm_chicken_noodle'] = {
		label = 'Warm chicken noodle',
		weight = 10,
		stack = true,
		close = true,
	},
	['uwu_mysterybox'] = {
		label = 'UWU Mystery Box',
		weight = 10,
		stack = true,
		close = true,
	},
	['glass_tall_dirty'] = {
		label = 'Dirty Tall Glass',
		weight = 50,
		stack = true,
		close = false,
		consume = 0
	},
	['bar_bowl_dirty'] = {
		label = 'Dirty bowl',
		weight = 10,
		stack = true,
		close = true,
	},
	['bar_bowl'] = {
		label = 'Bowl',
		weight = 10,
		stack = true,
		close = true,
	},
	['glass_tall'] = {
		label = 'Glass Tall',
		weight = 50,
		stack = true,
		close = false,
		consume = 0
	},
	['steak'] = {
		label = 'Steak',
		weight = 10,
		stack = true,
		close = true,
	},
	['oxygen_cake'] = {
		label = 'Oxygen Cake',
		weight = 10,
		stack = true,
		close = true,
	},
	['dragos_fire_cupcake'] = {
		label = 'Dragon s Fire Cupcake',
		weight = 10,
		stack = true,
		close = true,
	},
	['kira_kira_currye'] = {
		label = 'Kira Kira Currye',
		weight = 10,
		stack = true,
		close = true,
	},
	['purrfect_parfait_ballaberry'] = {
		label = 'Purrfect Parfait',
		weight = 10,
		stack = true,
		close = true,
	},
	['ballbarry_cupcake'] = {
		label = 'Ballbarry Cupcake',
		weight = 10,
		stack = true,
		close = true,
	},
	['purrfect_parfait'] = {
		label = 'Purrfect Parfait',
		weight = 10,
		stack = true,
		close = true,
	},
	['cat_macaroon_brown'] = {
		label = 'Brown cat macaroon',
		weight = 10,
		stack = true,
		close = true,
	},
	['cat_macaroon_green'] = {
		label = 'Green cat macaroon',
		weight = 10,
		stack = true,
		close = true,
	},
	['cat_macaroon_pink'] = {
		label = 'Pink cat macaroon',
		weight = 10,
		stack = true,
		close = true,
	},
	['cat_macaroon_turquoise'] = {
		label = 'Turquoise cat macaroon',
		weight = 10,
		stack = true,
		close = true,
	},
	['brown_dye'] = {
		label = 'Brown dye',
		weight = 10,
		stack = true,
		close = true,
	},
	['pink_dye'] = {
		label = 'Pink dye',
		weight = 10,
		stack = true,
		close = true,
	},
	['green_dye'] = {
		label = 'Green dye',
		weight = 10,
		stack = true,
		close = true,
	},
	['turquoise_dye'] = {
		label = 'Turquoise dye',
		weight = 10,
		stack = true,
		close = true,
	},
	['plate'] = {
		label = 'Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['cup'] = {
		label = 'Cup',
		weight = 10,
		stack = true,
		close = true,
	},
	['cup_dirty'] = {
		label = 'Cup Dirty',
		weight = 10,
		stack = true,
		close = true,
	},
	['plate_dirty'] = {
		label = 'Plate Dirty',
		weight = 10,
		stack = true,
		close = true,
	},
	['ice'] = {
		label = 'Ice',
		weight = 10,
		stack = true,
		close = true,
	},

	-- MINING

	['jackhammer'] = {
		label = 'Jack Hammer',
		weight = 10000,
		stack = false,
		close = true,
	},
	['pickaxe'] = {
		label = 'Pickaxe',
		weight = 2500,
		stack = false,
		close = true,
	},
	['shovel'] = {
		label = 'Shovel',
		weight = 1500,
		stack = false,
		close = true,
	},
	
	['full_bucket'] = {
		label = 'Full Bucket',
		weight = 30,
		stack = true,
		close = false,
	},
	['empty_bucket'] = {
		label = 'Empty Bucket',
		weight =  20,
		stack = true,
		close = false,
	},
	['gem_rock'] = {
		label = 'Gem Rock',
		weight = 1,
		stack = true,
		close = false,
	},
	['ruby'] = {
		label = 'Ruby',
		weight = 0.1,
		stack = true,
		close = false,
	},
	['sapphire'] = {
		label = 'Sapphire',
		weight = 0.1,
		stack = true,
		close = false,
	},
	['emerald'] = {
		label = 'Emerald',
		weight = 0.1,
		stack = true,
		close = false,
	},

	--PEARLS

	['alla_vodka'] = {
		label = 'Alla Vodka',
		weight = 10,
		stack = true,
		close = true,
	},
	['bolognese'] = {
		label = 'Bolognese',
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
	},
	['calamari_marinara'] = {
		label = 'Calamari Marinara',
		weight = 10,
		stack = true,
		close = true,
	},
	['pescatore'] = {
		label = 'Pescatore',
		weight = 10,
		stack = true,
		close = true,
	},
	['calamari'] = {
		label = 'Calamari',
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
	},
	['clams'] = {
		label = 'Clams',
		weight = 10,
		stack = true,
		close = true,
	},
	['diced_prosciutto'] = {
		label = 'Diced Prosciutto',
		weight = 10,
		stack = true,
		close = true,
	},
	['meatballs'] = {
		label = 'Meatballs',
		weight = 10,
		stack = true,
		close = true,
	},
	['onion'] = {
		label = 'Onion',
		weight = 10,
		stack = true,
		close = true,
	},
	['pasta'] = {
		label = 'Pasta',
		weight = 10,
		stack = true,
		close = true,
	},
	['shrimps'] = {
		label = 'Shrimps',
		weight = 10,
		stack = true,
		close = true,
	},
	['shrimp'] = {
		label = 'Shrimp',
		weight = 10,
		stack = true,
		close = true,
	},
	['squid_rings'] = {
		label = 'Squid Rings',
		weight = 10,
		stack = true,
		close = true,
	},
	['vodka_sauce'] = {
		label = 'Vodka Sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['chocolate_and_vanilla_gelato_ice_cream'] = {
		label = 'Chocolate And vanilla gelato ice cream',
		weight = 10,
		stack = true,
		close = true,
	},
	['medaly_of_fresh_fruits'] = {
		label = 'Medely of fresh fruits',
		weight = 10,
		stack = true,
		close = true,
	},
	['tiramisu'] = {
		label = 'Tiramisu',
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
	},
	['chocolate_mocha'] = {
		label = 'Chocolate Mocha',
		weight = 10,
		stack = true,
		close = true,
	},
	['ice_cream'] = {
		label = 'Ice cream',
		weight = 10,
		stack = true,
		close = true,
	},
	['mascarpone'] = {
		label = 'Mascarpone',
		weight = 10,
		stack = true,
		close = true,
	},
	['artichokes'] = {
		label = 'Artichokes',
		weight = 10,
		stack = true,
		close = true,
	},
	['aubergines'] = {
		label = 'Aubergines',
		weight = 10,
		stack = true,
		close = true,
	},
	['basil'] = {
		label = 'Basil',
		weight = 10,
		stack = true,
		close = true,
	},
	['garlic'] = {
		label = 'Garlic',
		weight = 10,
		stack = true,
		close = true,
	},
	['ham'] = {
		label = 'Ham',
		weight = 10,
		stack = true,
		close = true,
	},
	['chili'] = {
		label = 'Chilli',
		weight = 10,
		stack = true,
		close = true,
	},
	['mozzarella'] = {
		label = 'Mozzarella',
		weight = 10,
		stack = true,
		close = true,
	},
	['mushroom'] = {
		label = 'Mushroom',
		weight = 10,
		stack = true,
		close = true,
	},
	['olives'] = {
		label = 'Olives',
		weight = 10,
		stack = true,
		close = true,
	},
	['oregano'] = {
		label = 'Oregano',
		weight = 10,
		stack = true,
		close = true,
	},
	['parmesan'] = {
		label = 'Parmesan',
		weight = 10,
		stack = true,
		close = true,
	},
	['prosciutto_cotto'] = {
		label = 'Prosciutto cotto',
		weight = 10,
		stack = true,
		close = true,
	},
	['roasted_fresh_vegetables'] = {
		label = 'Roasted fresh vegetables',
		weight = 10,
		stack = true,
		close = true,
	},
	['spici_salami'] = {
		label = 'Spici salami',
		weight = 10,
		stack = true,
		close = true,
	},
	['tomatto_sauce'] = {
		label = 'Tomatto sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['zucchini'] = {
		label = 'Zucchini',
		weight = 10,
		stack = true,
		close = true,
	},
	['ice'] = {
		label = 'Ice',
		weight = 10,
		stack = true,
		close = true,
	},
	['suger'] = {
		label = 'Suger',
		weight = 10,
		stack = true,
		close = true,
	},
	['salt'] = {
		label = 'Salt',
		weight = 10,
		stack = true,
		close = true,
	},
	['pearl_base'] = {
		label = 'pearl base',
		weight = 10,
		stack = true,
		close = true,
	},
	['dough'] = {
		label = 'Dough',
		weight = 10,
		stack = true,
		close = true,
	},
	['oil'] = {
		label = 'Oil',
		weight = 10,
		stack = true,
		close = true,
	},
	['cube_of_yeast'] = {
		label = 'Cube of yeast',
		weight = 10,
		stack = true,
		close = true,
	},
	['flour_packet'] = {
		label = 'Flour packet',
		weight = 10,
		stack = true,
		close = true,
	},
	['empty_cup'] = {
		label = 'Empty cup',
		weight = 10,
		stack = true,
		close = true,
	},
	['sprunk'] = {
		label = 'Sprunk',
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
	},
	['ecola'] = {
		label = 'eCola',
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
	},
	['ecola_light'] = {
		label = 'eCola Light',
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
	},
	['drang_o_tang'] = {
		label = 'Drang o Tang',
		weight = 10,
		stack = true,
		close = true,
	},
	['mango'] = {
		label = 'Mango',
		weight = 10,
		stack = true,
		close = true,
	},
	['raspberry'] = {
		label = 'Raspberry',
		weight = 10,
		stack = true,
		close = true,
	},
	['blueberry'] = {
		label = 'Blueberry',
		weight = 10,
		stack = true,
		close = true,
	},
	['strawberry'] = {
		label = 'Strawberry',
		weight = 10,
		stack = true,
		close = true,
	},
	['chocolate_ice_cream'] = {
		label = 'Chocolate ice cream',
		weight = 10,
		stack = true,
		close = true,
	},
	['vanilla_ice_cream'] = {
		label = 'Vanilla ice cream',
		weight = 10,
		stack = true,
		close = true,
	},
	['piswasser'] = {
		label = 'Piswasser',
		weight = 10,
		stack = true,
		close = true,
	},
	['am_beer'] = {
		label = 'A.M.',
		weight = 10,
		stack = true,
		close = true,
	},
	['duscbe_gold'] = {
		label = 'Duscbe Gold',
		weight = 10,
		stack = true,
		close = true,
	},
	['logger'] = {
		label = 'Loger',
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
	},
	['ragga_rum'] = {
		label = 'Ragga Rum',
		weight = 10,
		stack = true,
		close = true,
	},
	['cherenkov'] = {
		label = 'Cherenkov',
		weight = 10,
		stack = true,
		close = true,
	},
	['empty_beer'] = {
		label = 'Empty beer glass',
		weight = 10,
		stack = true,
		close = true,
	},
	['empty_rum'] = {
		label = 'Empty rum glass',
		weight = 10,
		stack = true,
		close = true,
	},
	['espresso'] = {
		label = 'Espresso',
		weight = 10,
		stack = true,
		close = true,
	},
	['milk'] = {
		label = 'Milk',
		weight = 10,
		stack = true,
		close = true,
	},
	['cappuccino'] = {
		label = 'Cappuccino',
		weight = 10,
		stack = true,
		close = true,
	},
	['latte_macchiato'] = {
		label = 'Latte Macchiato',
		weight = 10,
		stack = true,
		close = true,
	},
	['pearl_wood'] = {
		label = 'Wooden pearl tray',
		weight = 10,
		stack = true,
		close = true,
	},
	['table_plate'] = {
		label = 'Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['table_plate_dirty'] = {
		label = 'Dirty plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['cup'] = {
		label = 'Cup',
		weight = 10,
		stack = true,
		close = true,
	},
	['dirty_cup'] = {
		label = 'Dirty Cup',
		weight = 10,
		stack = true,
		close = true,
	},
	['pearl_wood_dirt'] = {
		label = 'Dirty Wooden pearl tray',
		weight = 10,
		stack = true,
		close = true,
	},
	['empty_rum_dirt'] = {
		label = 'Dirty rum glass',
		weight = 10,
		stack = true,
		close = true,
	},
	['empty_beer_dirt'] = {
		label = 'Dirty beer glass',
		weight = 10,
		stack = true,
		close = true,
	},
	['destroyed_cup'] = {
		label = 'Destroyed cup',
		weight = 10,
		stack = true,
		close = true,
	},

	['meat'] = {
		label = 'Meat',
		weight = 10,
		stack = true,
		close = true,
	},
	['meat_fries'] = {
		label = 'Meat with Fries',
		weight = 10,
		stack = true,
		close = true,
	},
	['grilled_meat'] = {
		label = 'Grilled Meat',
		weight = 10,
		stack = true,
		close = true,
	},
	['shrimp_ajillo'] = {
		label = 'Shrimp Ajillo',
		weight = 10,
		stack = true,
		close = true,
	},
	['shrimp_bowl'] = {
		label = 'Shrimp Bowl',
		weight = 10,
		stack = true,
		close = true,
	},	
	['shrimp_plate'] = {
		label = 'Shrimp Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['crawfish'] = {
		label = 'Crawfish',
		weight = 10,
		stack = true,
		close = true,
	},
	['crawfish_cut'] = {
		label = 'Cutted Crawfish',
		weight = 10,
		stack = true,
		close = true,
	},
	['crawfish_plate'] = {
		label = 'Crawfish Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['fish'] = {
		label = 'Fish',
		weight = 10,
		stack = true,
		close = true,
	},	
	['fish_cut'] = {
		label = 'Prepaired Fish',
		weight = 10,
		stack = true,
		close = true,
	},	
	['fish_plate'] = {
		label = 'Fish plate',
		weight = 10,
		stack = true,
		close = true,
	},	
	['potato'] = {
		label = 'Potato',
		weight = 10,
		stack = true,
		close = true,
	},	
	['potato_package_fries'] = {
		label = 'Potato packaged fries',
		weight = 10,
		stack = true,
		close = true,
	},	
	['fries'] = {
		label = 'Fries',
		weight = 10,
		stack = true,
		close = true,
	},	
	['pepper'] = {
		label = 'Pepper',
		weight = 10,
		stack = true,
		close = true,
	},	
	['octopus'] = {
		label = 'Octopus',
		weight = 10,
		stack = true,
		close = true,
	},	
	['octopus_cut'] = {
		label = 'Cutted Octopus',
		weight = 10,
		stack = true,
		close = true,
	},	
	['octopus_plate'] = {
		label = 'Octopus Plate',
		weight = 10,
		stack = true,
		close = true,
	},	
	['salmon'] = {
		label = 'salmon',
		weight = 10,
		stack = true,
		close = true,
	},	
	['salmon_grilled'] = {
		label = 'Grilled Salmon',
		weight = 10,
		stack = true,
		close = true,
	},
	['salmon_plate'] = {
		label = 'Salmon Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['tomate'] = {
		label = 'Tomato',
		weight = 10,
		stack = true,
		close = true,
	},

	['ahi_tuna'] = {
		label = 'Ahi Tuna',
		weight = 10,
		stack = true,
		close = true,
	},
	['cioppino'] = {
		label = 'Cioppino',
		weight = 10,
		stack = true,
		close = true,
	},
	['fish_and_chips'] = {
		label = 'Fish and Chips',
		weight = 10,
		stack = true,
		close = true,
	},
	['fish_sticks'] = {
		label = 'Fish Sticks',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice'] = {
		label = 'Rice',
		weight = 10,
		stack = true,
		close = true,
	},
	['salmon_teriyaki'] = {
		label = 'Salmon Teriyaki',
		weight = 10,
		stack = true,
		close = true,
	},
	['seafood_penne'] = {
		label = 'Seafood Penne',
		weight = 10,
		stack = true,
		close = true,
	},
	['tuna_steak'] = {
		label = 'Tuna Steak',
		weight = 10,
		stack = true,
		close = true,
	},
	['boat_big'] = {
		label = 'Big Boat',
		weight = 10,
		stack = true,
		close = true,
	},
	['boat_small'] = {
		label = 'Boat Small',
		weight = 10,
		stack = true,
		close = true,
	},

	['brown_sugar'] = {
		label = 'Brown Sugar',
		weight = 10,
		stack = true,
		close = true,
	},
	['butter'] = {
		label = 'Butter',
		weight = 10,
		stack = true,
		close = true,
	},
	['lemon'] = {
		label = 'Lemon',
		weight = 10,
		stack = true,
		close = true,
	},
	['lettuce'] = {
		label = 'Lettuce',
		weight = 10,
		stack = true,
		close = true,
	},
	['mussels'] = {
		label = 'Mussels',
		weight = 10,
		stack = true,
		close = true,
	},
	['penne_pasta'] = {
		label = 'Penne Pasta',
		weight = 10,
		stack = true,
		close = true,
	},
	['red_onion'] = {
		label = 'Red onion',
		weight = 10,
		stack = true,
		close = true,
	},
	['soy_sauce'] = {
		label = 'Soy Sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['teriyaki_sauce'] = {
		label = 'Teriyaki Sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['tuna'] = {
		label = 'Tuna',
		weight = 10,
		stack = true,
		close = true,
	},

	-- Chopshop
	['carparts'] = {
		label = 'Car Parts',
		weight = 1000,
		stack = true,
		close = false,
		description = 'Someone will buy this.'
	},

	["cwnotepad"] = {
		label = "Note Pad",
		weight = 300,
		stack = true,
		close = true,
		allowArmed = true,
		description = "Use this to write notes",
	},
	["cwnote"] = {
		label = "Note",
		weight = 350,
		stack = true,
		close = true,
		allowArmed = true,
		description = "A note",
	},

	['moneywash_keycard'] = {
		label = 'Wash Keycard',
		weight = 1,
		stack = false,
		description = 'This can be used to access the LaundryMat.'
	},

	['hose'] = {
		label = 'Fire Hose',
		weight = 1,
		stack = false,
		description = 'Fire Hose'
	},
	
	['moneywash_ticket'] = {
		label = 'Wash Ticket',
		weight = 1,
		stack = false,
		description = 'This can be used at the LaundryMat to start a wash.'
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['atmhacker'] = {
		label = 'ATM Hacker',
		weight = 750,
        description = 'Use for malicious activities..',
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		degrade = 5760,
        decay = true,
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['racingtablet'] = {
		label = 'Racing tablet',
		weight = 500,
		description = 'Seems like something to do with cars.',
		stack = false,
		client = {
			export = 'rahe-racing.racingtablet',
		}
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["farfetchd"] = {
		label = "Farfetchd",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "farfetchd.png",
		}
	},

	["taco"] = {
		label = "Taco",
		weight = 3000,
		stack = true,
		close = true,
		description = "Taco.",
		client = {
			image = "taco.png",
		}
	},

	["thermitec"] = {
		label = "Thermite C ",
		weight = 50,
		stack = true,
		close = true,
		description = "Thermite C",
		client = {
			image = "thermitec.png",
		}
	},

	['powersaw'] = { label = 'Power Saw', weight = 150, stack = false, close = true, description = 'Great Quality Saw for all purposes' },

	['brokenpowersaw'] = { label = 'Bladeless Power Saw', weight = 150, stack = false, close = true, description = 'A Power Saw, but without the Saw Blade...' },

	['sawbladepack'] = { label = 'Saw Blade Pack', weight = 150, stack = false, close = true, description = 'A Box full of Saw Blades' },

	['sawblade'] = { label = 'Saw Blade', weight = 150, stack = false, close = true, description = 'A singular Saw Blade' },

	['flightbox'] = { label = 'Flight Box', weight = 150, stack = false, close = true, description = 'A box containing the last momments of a plane\'s flight.' },

	["weed_purple-haze_crop"] = {
		label = "Purple-Haze: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest purple-haze flower!",
		client = {
			image = "weed_purple-haze_crop.png",
		}
	},

	["liquidheroin"] = {
		label = "Liquid Heroin",
		weight = 10,
		stack = true,
		close = true,
		description = "Heroin. Destroying lives since 1898!",
		client = {
			image = "liquidheroin.png",
		}
	},

	["slicedonion"] = {
		label = "Sliced Onions",
		weight = 100,
		stack = true,
		close = false,
		description = "Sliced Onion",
		client = {
			image = "burger-slicedonion.png",
		}
	},

	["pinacolada"] = {
		label = "Pina Colada",
		degrade = 5760,
        decay = true,
		weight = 400,
		stack = true,
		close = true,
		description = "Pina Colada!",
		client = {
			image = "pinacolada.png",
		}
	},

	["metallicaluminum"] = {
		label = "Metallic Aluminum",
		weight = 100,
		stack = true,
		close = true,
		description = "Make Explosives with this stuff dummy!",
		client = {
			image = "metallicaluminum.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Oxide",
		weight = 100,
		stack = true,
		close = true,
		description = "Make Explosives with this stuff dummy!",
		client = {
			image = "ironoxide.png",
		}
	},

	["scrap"] = {
		label = "Scrap Materials",
		weight = 100,
		stack = true,
		close = true,
		description = "Make Explosives with this stuff dummy!",
		client = {
			image = "scrap.png",
		}
	},

	["burger-meat"] = {
		label = "Cooked Patty",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_patty.png",
		}
	},

	["frappe"] = {
		label = "Frappe",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "frappe.png",
		}
	},

	["bigdoublecheese"] = {
		label = "bigdoublecheese",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "bigdoublecheese.png",
		}
	},

	["headbag"] = {
		label = "Head Bag",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ordinary Paper Bag",
		client = {
			image = "headbag.png",
		}
	},

	["silverchain"] = {
		label = "Silver Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silverchain.png",
		}
	},

	["rtx3090"] = {
		label = "RTX 3090",
		weight = 4000,
		stack = false,
		close = false,
		description = "RTX 3090 Graphics Card",
		client = {
			image = "standard_cpu.png",
		}
	},

	--DRC HOUSE ROBBERY

	['hack_laptop'] = {
		label = 'Hacking Laptop',
		description = "",
		weight = 20,
		stack = true
	},

	['loot_bag'] = {
		label = 'Duffle bag',
		description = "",
		weight = 50,
		stack = true
	},

	['laptop'] = {
		label = 'Laptop',
		description = "",
		weight = 100,
		stack = true
	},

	['printer'] = {
		label = 'Printer',
		description = "",
		weight = 190,
		stack = true
	},

	['npc_phone'] = {
		label = 'Phone',
		description = "",
		weight = 10,
		stack = true
	},

	['monitor'] = {
		label = 'Monitor',
		description = "",
		weight = 50,
		stack = true
	},

	['television'] = {
		label = 'TV',
		description = "",
		weight = 155,
		stack = true
	},

	['flat_television'] = {
		label = 'Flat TV',
		description = "",
		weight = 155,
		stack = true
	},

	['radio_alarm'] = {
		label = 'Radio',
		description = "",
		weight = 30,
		stack = true
	},

	['fan'] = {
		label = 'Fan',
		description = "",
		weight = 20,
		stack = true
	},

	['lockpick'] = {
		label = 'Lockpick',
		description = "Can lockpick any doors if you have enough skill!",
		weight = 165,
		stack = true
	},

	['shoebox'] = {
		label = 'Shoe box',
		description = "",
		weight = 45,
		stack = true
	},

	['dj_deck'] = {
		label = 'DJ Deck',
		description = "",
		weight = 95,
		stack = true
	},

	['console'] = {
		label = 'Console',
		description = "",
		weight = 55,
		stack = true
	},

	['boombox'] = {
		label = 'Boombox',
		description = "",
		weight = 85,
		stack = true
	},

	['bong'] = {
		label = 'Bong',
		description = "",
		weight = 25,
		stack = true
	},

	['coffemachine'] = {
		label = 'Coffe machine',
		description = "",
		weight = 55,
		stack = true
	},

	['tapeplayer'] = {
		label = 'Tape Player',
		description = "",
		weight = 55,
		stack = true
	},

	['hairdryer'] = {
		label = 'Hairdryer',
		description = "",
		weight = 55,
		stack = true
	},

	['j_phone'] = {
		label = 'Phone',
		description = "",
		weight = 55,
		stack = true
	},

	['sculpture'] = {
		label = 'Sculpture',
		description = "",
		weight = 55,
		stack = true
	},

	['toiletry'] = {
		label = 'Toiletry',
		description = "",
		weight = 10,
		stack = true
	},

	['pogo'] = {
		label = 'Art Piece',
		description = "Pogo Statue",
		weight = 155,
		stack = true
	},

	['powder'] = {
		label = 'Bag with powder',
		description = "Good for discovering lasers that are not visible",
		weight = 50,
		stack = true
	},

	['bracelet'] = {
		label = 'Bracelet',
		description = "",
		weight = 25,
		stack = true
	},

	['book'] = {
		label = 'Book',
		description = "",
		weight = 25,
		stack = true
	},

	['earings'] = {
		label = 'Earings',
		description = "",
		weight = 25,
		stack = true
	},

	['gold_bracelet'] = {
		label = 'Gold bracelet',
		description = "",
		weight = 45,
		stack = true
	},

	['gold_watch'] = {
		label = 'Gold watch',
		weight = 55,
		stack = true
	},

	['house_locator'] = {
		label = 'House locator',
		weight = 55,
		stack = true
	},

	['necklace'] = {
		label = 'Necklace',
		weight = 55,
		stack = true
	},

	['notepad'] = {
		label = 'Notepad',
		weight = 5,
		stack = true
	},

	['pencil'] = {
		label = 'Pencil',
		weight = 25,
		stack = true
	},

	['romantic_book'] = {
		label = 'Romantic book',
		weight = 25,
		stack = true
	},

	['shampoo'] = {
		label = 'Shampoo',
		weight = 25,
		stack = true
	},

	['soap'] = {
		label = 'Soap',
		weight = 25,
		stack = true
	},

	['toothpaste'] = {
		label = 'Toothpaste',
		weight = 15,
		stack = true
	},

	['watch'] = {
		label = 'Watch',
		weight = 35,
		stack = true
	},
		
	['skull'] = {
		label = 'Skull Art with diamonds',
		weight = 95,
		stack = true
	},

	--DRUG SHIT

	['trowel'] = {
		label = 'Trowel',
		description = "Perfect for your garden or for Coca plant",
		weight = 250,
		stack = true
	},

	['coke_leaf'] = {
		label = 'Coca Leaf',
		description = "Leaf from amazing plant",
		weight = 15,
		stack = true
	},

	['coke_access'] = {
		label = 'Access card',
		description = "Access Card for Coke Lab",
		weight = 50,
		stack = true
	},

	['coke_box'] = {
		label = 'Box with Coke',
		description = "Be careful not to spill it on the ground",
		weight = 2000,
		stack = true
	},

	['coke_raw'] = {
		label = 'Raw Coke',
		description = "Coke with some dirty particles",
		weight = 50,
		stack = true
	},

	['coke_pure'] = {
		label = 'Pure Coke',
		description = "Coke without any dirty particles",
		weight = 70,
		stack = true,
		close = true
	},

	['coke_figure'] = {
		label = 'Action Figure',
		description = "Action Figure of the cartoon superhero Impotent Rage",
		weight = 150,
		stack = true
	},

	['coke_figureempty'] = {
		label = 'Action Figure',
		description = "Action Figure of the cartoon superhero Impotent Rage",
		weight = 150,
		stack = true
	},

	['coke_figurebroken'] = {
		label = 'Pieces of Action Figure',
		description = "You can throw this away or try to repair with glue",
		weight = 100,
		stack = true
	},

	['meth_amoniak'] = {
		label = 'Ammonia',
		description = "Warning! Dangerous Chemicals!",
		weight = 1000,
		stack = true
	},

	['meth_pipe'] = {
		label = 'Meth Pipe',
		description = "Enjoy your new crystal clear stuff!",
		weight = 880,
		stack = true
	},

	['crack_pipe'] = {
		label = 'Crack Pipe',
		description = "Enjoy your Crack!",
		weight = 550,
		stack = true
	},

	['meth_syringe'] = {
		label = 'Syringe Meth',
		description = "Enjoy your new crystal clear stuff!",
		weight = 300,
		stack = true
	},

	['heroin_syringe'] = {
		label = 'Syringe Heroin',
		description = "Enjoy your new crystal clear stuff!",
		weight = 300,
		stack = true
	},

	['syringe'] = {
		label = 'Syringe',
		description = "Enjoy your new crystal clear stuff!",
		weight = 300,
		stack = true
	},

	['meth_sacid'] = {
		label = 'Sodium Benzoate Canister',
		description = "Warning! Dangerous Chemicals!",
		weight = 5000,
		stack = true
	},

	['meth_emptysacid'] = {
		label = 'Empty Canister',
		description = "Material: Plastic, Good for Sodium Benzoate",
		weight = 2000,
		stack = true
	},

	['meth_access'] = {
		label = 'Access card',
		description = "Access Card for Meth Lab",
		weight = 100,
		stack = true,
		close = true
	},

	['meth_glass'] = {
		label = 'Tray with meth',
		description = "Needs to be smashed with hammer",
		weight = 1000,
		stack = true
	},

	['meth_sharp'] = {
		label = 'Tray with smashed meth',
		description = "Can be packed",
		weight = 1000,
		stack = true
	},

	['meth_bag'] = {
		label = 'Meth bag',
		description = "Plastic bag with magic stuff!",
		weight = 1000,
		stack = true
	},

	['weed_package'] = {
		label = 'Weed Bag',
		description = "Plastic bag with magic stuff!",
		weight = 500,
		stack = true
	},

	['weed_access'] = {
		label = 'Access card',
		description = "Access Card for Weed Lab",
		weight = 100,
		stack = true
	},

	['weed_bud'] = {
		label = 'Weed Bud',
		description = "Needs to be clean at the table",
		weight = 40,
		stack = true
	},

	['weed_blunt'] = {
		label = 'Blunt',
		description = "Enjoy your weed!",
		weight = 90,
		stack = true,
		close = true
	},

	['weed_wrap'] = {
		label = 'Blunt wraps',
		description = "Get Weed Bag and roll blunt!",
		weight = 75,
		stack = true,
		close = true
	},

	['weed_papers'] = {
		label = 'Weed papers',
		description = "Get Weed Bag and roll joint!",
		weight = 15,
		stack = true,
		close = true
	},

	['weed_joint'] = {
		label = 'Joint',
		description = "Enjoy your weed!",
		weight = 50,
		stack = true,
		close = true
	},

	['weed_budclean'] = {
		label = 'Weed Bud',
		description = "You can pack this at the table",
		weight = 35,
		stack = true
	},

	['plastic_bag'] = {
		label = 'Plastic bag',
		description = "You can pack a lot of stuff here!",
		weight = 8,
		stack = true
	},

	['scissors'] = {
		label = 'Scissors',
		description = "To help you with collecting",
		weight = 40,
		stack = true
	},

	['ecstasy1'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy2'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy3'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy4'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy5'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd1'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd2'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd3'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd4'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd5'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['magicmushroom'] = {
		label = 'Mushroom',
		description = "Explore a new universe!",
		weight = 30,
		stack = true,
		close = true
	},

	['peyote'] = {
		label = 'Peyote',
		description = "Explore a new universe!",
		weight = 30,
		stack = true,
		close = true
	},

	['xanaxpack'] = {
		label = 'Pack of Xanax',
		description = "Needs to be open",
		weight = 130,
		stack = true,
		close = true
	},

	['xanaxplate'] = {
		label = 'Plate of Xanax',
		description = "Needs to be open",
		weight = 30,
		stack = true,
		close = true
	},

	['xanaxpill'] = {
		label = 'Xanax pill',
		description = "Explore a new universe!",
		weight = 2,
		stack = true,
		close = true
	},

    ['glue'] = {
		label = 'Glue',
		description = "Good for repairing things!",
		weight = 30,
		stack = true
	},

    ['hammer'] = {
		label = 'Hammer',
		description = "Good for smashing things!",
		weight = 500,
		stack = true
	},

	['poppyplant'] = {
		label = 'Poppy Plant',
		description = "Very nice plant!",
		weight = 30,
		stack = true
	},
	
	['heroin'] = {
		label = 'Heroin',
		description = "Explore a new universe!",
		weight = 30,
		stack = true
	},
	['crack'] = {
		label = 'Crack',
		description = "Explore a new universe!",
		weight = 30,
		stack = true
	},
	['baking_soda'] = {
		label = 'Baking Soda',
		description = "Baking Bad!",
		weight = 30,
		stack = true
	},

	["mshake"] = {
		label = "Milk Shake",
		weight = 0,
		stack = true,
		close = true,
		description = "Milk Shake..",
		client = {
			image = "mshake.png",
		}
	},

	["pd_adv_tracker"] = {
		label = "Advanced Vehicle Tracking Device",
		weight = 20,
		stack = true,
		close = true,
		description = "Place this on a vehicle to track it. Advanced Quality",
		client = {
			image = "tracker.png",
		}
	},

	["prisonbag"] = {
		label = "Plastic Bag",
		weight = 1000,
		stack = true,
		close = false,
		description = "A plastic bag",
		client = {
			image = "prisonbag.png",
		}
	},

	["magmar"] = {
		label = "Magmar",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Volcano Badge",
		client = {
			image = "magmar.png",
		}
	},

	["weed_ak47_seed_f"] = {
		label = "AK47: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized ak47 seed.",
		client = {
			image = "weed_ak47_seed_f.png",
		}
	},

	["peyote_button"] = {
		label = "Peyote Button",
		weight = 20,
		stack = true,
		close = false,
		description = "A handful of peyote buttons!",
		client = {
			image = "peyote_button.png",
		}
	},

	["weed_og-kush_seed_f"] = {
		label = "OG-Kush: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized og-kush seed.",
		client = {
			image = "weed_og-kush_seed_f.png",
		}
	},

	["puremethtray"] = {
		label = "Pure Meth Tray",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "methbrick.png",
		}
	},

	["micard_booster_pack2"] = {
		label = "Booster Pack",
		weight = 0,
		stack = true,
		close = true,
		description = "Contains 10 cards",
		client = {
			image = "micard_booster_pack2.png",
		}
	},

	["chair27"] = {
		label = "Black Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair27.png",
		}
	},

	["chair53"] = {
		label = "Fancy Garden Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair53.png",
		}
	},

	["microwave"] = {
		label = "Microwave",
		weight = 500,
		stack = false,
		close = true,
		description = "Stolen microwave",
		client = {
			image = "microwave.png",
		}
	},

	["hybrid"] = {
		label = "CREAMSICLE (HYBRID)",
		weight = 50,
		stack = false,
		close = true,
		description = "CREAMSICLE (HYBRID)",
		client = {
			image = "joint.png",
		}
	},

	["meat_deer"] = {
		label = "Venison",
		weight = 850,
		stack = true,
		close = true,
		description = "Deer meat!",
		client = {
			image = "meat_deer.png",
		}
	},

	["toy-eggg"] = {
		label = "RoosterRest Toy Egg",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gives Random Toys",
		client = {
			image = "toy-eggg.png",
		}
	},

	["fob_racing_master"] = {
		label = "Master Racing Fob",
		weight = 500,
		stack = false,
		close = true,
		description = "This master fob allows someone to create custom races.",
		client = {
			image = "fob_racing_master.png",
		}
	},

	["snorlaxvmaxrainbow"] = {
		label = "Rainbox Snorlax",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "snorlaxvmaxrainbow.png",
		}
	},

	["rose_gold"] = {
		label = "Rose Gold",
		weight = 0,
		stack = true,
		close = true,
		description = "Rose Goldd",
		client = {
			image = "rose_gold.png",
		}
	},

	["chair64"] = {
		label = "Striped Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair64.png",
		}
	},

	["blue_meth"] = {
		label = "blue_meth",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real fast.",
		client = {
			image = "blue_meth.png",
		}
	},

	["mintgreen"] = {
		label = "Xenons - Mint Green",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "mintgreen.png",
		}
	},

	["blueberry_crate"] = {
		label = "Blueberry Crate",
		weight = 2500,
		stack = true,
		close = false,
		description = "A crate of blueberries ready for selling!",
		client = {
			image = "blueberry_crate.png",
		}
	},

	["nestea"] = {
		label = "nestea",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "nestea.png",
		}
	},

	["flour"] = {
		label = "Flour",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "flour.png",
		}
	},

	["burgerbun"] = {
		label = "Burger Bun",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big burger brother",
		client = {
			image = "burgerbun.png",
		}
	},

	["weed_zkittlez_seed_m"] = {
		label = "Zkittlez: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male zkittlez seed!",
		client = {
			image = "weed_zkittlez_seed_m.png",
		}
	},

	["laptop_red"] = {
		label = "Laptop",
		weight = 2500,
		stack = false,
		close = true,
		description = "A laptop that you got from Plague",
		client = {
			image = "laptop_red.png",
		}
	},

	["coke_1oz"] = {
		label = "Ounce of Cocaine",
		weight = 280,
		stack = true,
		close = true,
		description = "A ounce of the finest nose candy!",
		client = {
			image = "coke_1oz.png",
		}
	},

	["petfood"] = {
		label = "pet food",
		weight = 500,
		stack = true,
		close = true,
		description = "food for your companion!",
		client = {
			image = "petfood.png",
		}
	},

	["yeager"] = {
		label = "Yeager",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "yeager.png",
		}
	},

	["bento"] = {
		label = "Bento Box",
		degrade = 5760,
        decay = true,
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bento.png",
		}
	},

	["tigersharkmeat"] = {
		label = "tigersharkmeat",
		weight = 1111,
		stack = true,
		close = true,
		description = "Fish for Fishing.",
		client = {
			image = "tigersharkmeat.png",
		}
	},

	["origami16"] = {
		label = "Origami Butterfly",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami16.png",
		}
	},

	["clean_cocktailglass"] = {
		label = "Clean Cocktail Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean cocktail glass!",
		client = {
			image = "clean_cocktailglass.png",
		}
	},

	["hydrochloric.png"] = {
		label = "hydrochloric.png",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real fast.",
		client = {
			image = "hydrochloric.png",
		}
	},

	["weed_purple-haze_joint"] = {
		label = "Purple-Haze: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest purple-haze!",
		client = {
			image = "weed_purple-haze_joint.png",
		}
	},

	["poundcake8th"] = {
		label = "PoundCake8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "poundcake8th.png",
		}
	},

	["uwuchocsandy"] = {
		label = "uWu C-Icecream Sandy",
		weight = 200,
		stack = true,
		close = true,
		description = "Sweet Chocolate Biscuit filled with Icecreamy!",
		client = {
			image = "uwuchocsandy.png",
		}
	},

	["hulkcocktail"] = {
		label = "Hulk Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "hulkcocktail.png",
		}
	},

	["stickybuns"] = {
		label = "Sticky Buns",
		weight = 50,
		stack = false,
		close = true,
		description = "Sticky Buns",
		client = {
			image = "StickyBuns.png",
		}
	},

	["brakes2"] = {
		label = "Tier 2 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes2.png",
		}
	},

	["fishtacklebox"] = {
		label = "Tackle Box",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seems to be left over tackle box from another fisherman",
		client = {
			image = "fishtacklebox.png",
		}
	},

	["bscoffee"] = {
		label = "BurgerShot Coffee",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Coffee",
		client = {
			image = "burger-coffee.png",
		}
	},

	["apple_crate"] = {
		label = "Apple Crate",
		weight = 3500,
		stack = true,
		close = false,
		description = "A crate of apples ready for selling!",
		client = {
			image = "apple_crate.png",
		}
	},

	["dirty_cocktailglass"] = {
		label = "Dirty Cocktail Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty cocktail glass!",
		client = {
			image = "dirty_cocktailglass.png",
		}
	},

	["meatfree"] = {
		label = "Meat Free",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Meat Free",
		client = {
			image = "burger-meatfree.png",
		}
	},

	["laptop_gold"] = {
		label = "Laptop",
		weight = 2500,
		stack = false,
		close = true,
		description = "A laptop that you got from Trinity",
		client = {
			image = "laptop_gold.png",
		}
	},

	["barbera"] = {
		label = "Barbera D'Asti",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "barbera.png",
		}
	},

	["zubat"] = {
		label = "Zubat",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "zubat.png",
		}
	},

	["m45a1_supp"] = {
		label = "M45A1 Supp",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "m45a1_supp.png",
		}
	},

	["chair9"] = {
		label = "Standard Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair9.png",
		}
	},

	["burger-softdrink"] = {
		label = "Soft Drink",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ice Cold Drink.",
		client = {
			image = "bs_softdrink.png",
		}
	},

	["burger-potato"] = {
		label = "Bag of Potatoes",
		weight = 1500,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_potato.png",
		}
	},

	["fakeweaplicence"] = {
		label = "Fake Weapon Licence",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fakeweap.png",
		}
	},

	["weaponrepairkit"] = {
		label = "Weapon Repair Kit",
		weight = 10000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weaponrepairkit.png",
		}
	},

	["gun_stock"] = {
		label = "Weapon Stock",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gun_stock.png",
		}
	},

	["gun_barrel"] = {
		label = "Weapon Barrel",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gun_barrel.png",
		}
	},

	["gun_muzzle"] = {
		label = "Weapon Muzzle",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gun_muzzle.png",
		}
	},

	["wrench"] = {
		label = "Wrench",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "wrench.png",
		}
	},

	["packofscrews"] = {
		label = "Pack of Screws",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "packofscrews.png",
		}
	},

	["gun_grip"] = {
		label = "Weapon Grip",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gun_grip.png",
		}
	},

	["bobatea"] = {
		label = "Boba Tea",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bubbletea.png",
		}
	},

	["lowervaultcodes"] = {
		label = "Access Codes",
		weight = 0,
		stack = false,
		close = false,
		description = "A copy of the Pacific Bank lower vault access code..",
		client = {
			image = "lowervaultcodes.png",
		}
	},

	["marijuana_seeds"] = {
		label = "Marijuana Seeds",
		weight = 500,
		stack = true,
		close = true,
		description = "marijuana seeds",
		client = {
			image = "marijuana_seeds.png",
		}
	},

	["chair30"] = {
		label = "Light Grey Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair30.png",
		}
	},

	["mtlion1"] = {
		label = "Mountain Lion Carcass",
		weight = 3000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mtlion1.png",
		}
	},

	["fishingrod"] = {
		label = "Fishing Rod",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this I can catch the fish..",
		client = {
			image = "fishingrod.png",
		}
	},

	["casino_burger"] = {
		label = "Casino Burger",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Burger",
		client = {
			image = "casino_burger.png",
		}
	},

	["powerbank"] = {
		label = "Power Bank",
		weight = 200,
		stack = false,
		close = true,
		description = "Incredible portable charger!",
		client = {
			image = "powerbank.png",
		}
	},

	["egg_crate"] = {
		label = "Egg Crate",
		weight = 2500,
		stack = true,
		close = false,
		description = "A crate of eggs ready for selling!",
		client = {
			image = "egg_crate.png",
		}
	},

	["carwheel"] = {
		label = "Car Wheel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A wheel from a vehicle",
		client = {
			image = "carwheel.png",
		}
	},

	["hackerphone"] = {
		label = "Hacker phone",
		weight = 500,
		stack = true,
		close = true,
		description = "hackerphone",
		client = {
			image = "hackerphone.png",
		}
	},

	["sprunklight"] = {
		label = "Sprunk Light",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sprunklight.png",
		}
	},

	["trimmers"] = {
		label = "Trimming Shears",
		weight = 200,
		stack = true,
		close = true,
		description = "High quality trimming shears.",
		client = {
			image = "ww_shears.png",
		}
	},

	["kuz_pearl"] = {
		label = "Pearl",
		weight = 250,
		stack = true,
		close = false,
		description = "Pearl",
		client = {
			image = "kuz_pearl.png",
		}
	},

	["rice"] = {
		label = "Bowl of Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rice.png",
		}
	},

	["pinkcookiesblunt"] = {
		label = "Pink Cookies Blunt",
		weight = 0,
		stack = true,
		close = true,
		description = "Rolled Up",
		client = {
			image = "pinkcookiesblunt.png",
		}
	},

	["mewtwo"] = {
		label = "Mewtwo",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Earth Badge - Ultra Rare",
		client = {
			image = "mewtwo.png",
		}
	},

	["blastoisevmax"] = {
		label = "Blastoise Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "blastoisevmax.png",
		}
	},

	["chair58"] = {
		label = "Zebra Print Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair58.png",
		}
	},

	["cloyster"] = {
		label = "Cloyster",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cloyster.png",
		}
	},

	["emerald_earring_silver"] = {
		label = "Emerald Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring_silver.png",
		}
	},

	["italianice8th"] = {
		label = "italianice8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "italianice8th.png",
		}
	},

	["usb_gold"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A gold USB flash drive",
		client = {
			image = "usb_gold.png",
		}
	},

	["spearow"] = {
		label = "Spearow",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "spearow.png",
		}
	},

	["jefeog8tht"] = {
		label = "jefeog8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "jefeog8th.png",
		}
	},

	["wheelchair"] = {
		label = "Wheel Chair",
		weight = 500,
		stack = false,
		close = true,
		description = "Wheel Chair",
		client = {
			image = "wheelchair.png",
		}
	},

	["weed_gelato_crop"] = {
		label = "Gelato: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest gelato flower!",
		client = {
			image = "weed_gelato_crop.png",
		}
	},

	["chickensandwich"] = {
		label = "Chicken Sandwich",
		weight = 0,
		stack = true,
		close = true,
		description = "Chicken Sandwich...",
		client = {
			image = "chickensandwich.png",
		}
	},

	["diamond_necklace"] = {
		label = "Diamond Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["dabpen"] = {
		label = "Empty Dab Pen",
		weight = 0,
		stack = true,
		close = true,
		description = "This is a placeholder description",
		client = {
			image = "dabpen.png",
		}
	},

	["chair66"] = {
		label = "Yellow Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair66.png",
		}
	},

	["steak"] = {
		label = "Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "steak.png",
		}
	},

	["italianiceblunt"] = {
		label = "ItalianIceBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "italianiceblunt.png",
		}
	},

	["moonshine_distill"] = {
		label = "Distilled Moonshine",
		weight = 5000,
		stack = true,
		close = false,
		description = "A bucket of distilled moonshine!",
		client = {
			image = "moonshine_distill.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "Sell some Meth",
		client = {
			image = "meth10g.png",
		}
	},

	["tiramisu"] = {
		label = "Tiramisu",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tiramisu.png",
		}
	},

	["bong"] = {
		label = "Bong",
		weight = 500,
		stack = true,
		close = true,
		description = "BONG BABY BONGGGGG",
		client = {
			image = "bong.png",
		}
	},

	["chair21"] = {
		label = "Metal Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair21.png",
		}
	},

	["weed_amnesia_joint"] = {
		label = "Amnesia: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest amnesia!",
		client = {
			image = "weed_amnesia_joint.png",
		}
	},

	["cokeblueprint"] = {
		label = "Cocaine Blueprint",
		weight = 500,
		stack = false,
		close = true,
		description = "Ingredients to cut bricks of cocaine...",
		client = {
			image = "printerdocument.png",
		}
	},

	["cereal"] = {
		label = "Cereal",
		weight = 100,
		stack = true,
		close = true,
		description = "Yum! Cereal",
		client = {
			image = "ww_cereal.png",
		}
	},

	["packagedchicken"] = {
		label = "packagedchicken",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "packagedchicken.png",
		}
	},

	["greencrack_joint"] = {
		label = "Green Crack Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "Green Crack Joint",
		client = {
			image = "ww_greencrack_joint.png",
		}
	},

	["golbat"] = {
		label = "Golbat",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Soul Badge",
		client = {
			image = "golbat.png",
		}
	},

	["weddingcake_bud"] = {
		label = "Wedding Cake Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "Wedding Cake Bud",
		client = {
			image = "ww_weddingcake_bud.png",
		}
	},

	["carradio"] = {
		label = "Car Radio",
		weight = 100,
		stack = true,
		close = true,
		description = "A radio from a vehicle",
		client = {
			image = "carradio.png",
		}
	},

	["pikachu"] = {
		label = "Pikachu",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Thunder Badge",
		client = {
			image = "pikachu.png",
		}
	},

	["kq_regulartire"] = {
		label = "Regular Tire",
		weight = 2000,
		stack = true,
		close = true,
		description = "Regular car tire",
		client = {
			image = "kq_regulartire.png",
		}
	},

	["glass_drpepper"] = {
		label = "Glass of Dr Pepper",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of dr pepper!",
		client = {
			image = "glass_drpepper.png",
		}
	},

	["snikkel_candy"] = {
		label = "Kit Kat",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["butterfree"] = {
		label = "Butterfree",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "butterfree.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card belonging to the Pacific Savings Bank.",
		client = {
			image = "security_card_02.png",
		}
	},

	["sandshrew"] = {
		label = "Sandshrew",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sandshrew.png",
		}
	},

	["paramedicbag"] = {
		label = "Paramedic bag",
		weight = 5000,
		stack = false,
		close = true,
		description = "Paramedic bag",
		client = {
			image = "paramedic_bag.png",
		}
	},

	["gangarchain"] = {
		label = "Iced Out Chain",
		weight = 1000,
		stack = true,
		close = true,
		description = "Custom Chain Sum Light...",
		client = {
			image = "gangarchain.png",
		}
	},

	["mangohabaneroseason"] = {
		label = "Mango Habanero Season",
		weight = 1,
		stack = true,
		close = true,
		description = "mangohabaneroseason.",
		client = {
			image = "mangohabaneroseason.png",
		}
	},

	["spoiler4"] = {
		label = "Custom Spoiler",
		weight = 5000,
		stack = true,
		close = true,
		description = "Custom Spoiler",
		client = {
			image = "spoiler4.png",
		}
	},

	["washednoodles"] = {
		label = "Washed Noodles",
		weight = 1000,
		stack = true,
		close = true,
		description = "Washed Noodles",
		client = {
			image = "washednoodlesicon.png",
		}
	},

	["tacosalad"] = {
		label = "Taco Salad",
		weight = 1000,
		stack = true,
		close = true,
		description = "Taco Salad",
		client = {
			image = "tacosalad.png",
		}
	},

	["drowzee"] = {
		label = "Drowzee",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "drowzee.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["ambeer"] = {
		label = "AM Beer",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ambeer.png",
		}
	},

	["codfish"] = {
		label = "Cod",
		weight = 2500,
		stack = false,
		close = false,
		description = "Cod",
		client = {
			image = "codfish.png",
		}
	},

	["boar4"] = {
		label = "Boar Carcass",
		weight = 4000,
		stack = true,
		close = false,
		description = "This looks like a protected boar.",
		client = {
			image = "boar4.png",
		}
	},

	["bbq2"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq2.png",
		}
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 100,
		stack = true,
		close = false,
		description = "Unprocessed Cannabis",
		client = {
			image = "cannabis.png",
		}
	},

	["brakes1"] = {
		label = "Tier 1 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes1.png",
		}
	},

	["rainbowvmaxcharizard"] = {
		label = "Rainbow Charizard",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "rainbowvmaxcharizard.png",
		}
	},

	["bottle"] = {
		label = "Empty Bottle",
		weight = 10,
		stack = true,
		close = false,
		description = "A glass bottle",
		client = {
			image = "bottle.png",
		}
	},

	["yeast"] = {
		label = "Yeast",
		weight = 100,
		stack = true,
		close = false,
		description = "A packet of yeast!",
		client = {
			image = "yeast.png",
		}
	},

	["strawberrydonut"] = {
		label = "Strawberry Donut",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "strawberrydonut.png",
		}
	},

	["prisonwine_fermented"] = {
		label = "Pruno",
		weight = 1000,
		stack = true,
		close = true,
		description = "This should give you a good buzz",
		client = {
			image = "prisonwine_fermented.png",
		}
	},

	["bjorn"] = {
		label = "Bjorn",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "bjorn.png",
		}
	},

	["white_gold"] = {
		label = "White Gold",
		weight = 0,
		stack = true,
		close = true,
		description = "White Gold",
		client = {
			image = "white_gold.png",
		}
	},

	["cremebrulee"] = {
		label = "Creme Brulee",
		weight = 50,
		stack = false,
		close = true,
		description = "Creme Brulee",
		client = {
			image = "cremebrulee.png",
		}
	},

	["watering_can"] = {
		label = "Watering Can",
		weight = 100,
		stack = true,
		close = false,
		description = "A empty watering can!",
		client = {
			image = "watering_can.png",
		}
	},

	["bulbasaur"] = {
		label = "Bulbasaur",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "bulbasaur.png",
		}
	},

	["pineapple"] = {
		label = "Pineapple",
		weight = 60,
		stack = true,
		close = false,
		description = "Lemon!",
		client = {
			image = "pineapple.png",
		}
	},

	["burger-box"] = {
		label = "Burger Box",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big burger brother",
		client = {
			image = "taco-box.png",
		}
	},

	["wings"] = {
		label = "Plate of Wings",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of Chicken Wings",
		client = {
			image = "wings.png",
		}
	},

	["mcroyaldeluxe"] = {
		label = "mcroyaldeluxe",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "mcroyaldeluxe.png",
		}
	},

	["yellow"] = {
		label = "Xenons - Yellow",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "yellow.png",
		}
	},

	["sterilewater"] = {
		label = "Sterile Water",
		weight = 50,
		stack = true,
		close = true,
		description = "A vial of sterile water for injecting meds.",
		client = {
			image = "sterilewater.png",
		}
	},

	["slakedlime"] = {
		label = "Slaked Lime",
		weight = 1000,
		stack = true,
		close = true,
		description = "Supposed to be used in preparation of dry mixer for painting and white washing.. However..",
		client = {
			image = "slakedlime.png",
		}
	},

	["cheese"] = {
		label = "Cheese",
		weight = 100,
		stack = true,
		close = false,
		description = "Cheese - Who knows that type..",
		client = {
			image = "cheese.png",
		}
	},

	["barley"] = {
		label = "Barley",
		weight = 100,
		stack = true,
		close = false,
		description = "Barley!",
		client = {
			image = "barley.png",
		}
	},

	["milkdragon"] = {
		label = "Milk Dragon",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "milkdragon.png",
		}
	},

	["geodude"] = {
		label = "Geodude",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Boulder Badge",
		client = {
			image = "geodude.png",
		}
	},

	["vileplume"] = {
		label = "Vileplume",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Rainbow Badge",
		client = {
			image = "vileplume.png",
		}
	},

	["coyote4"] = {
		label = "Coyote Carcass",
		weight = 4000,
		stack = true,
		close = false,
		description = "This looks like a protected coyote.",
		client = {
			image = "coyote4.png",
		}
	},

	["thunderbadge"] = {
		label = "ThunderBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "3/8 for Trophy Badge",
		client = {
			image = "thunderBadge.png",
		}
	},

	["whitewidow_crop"] = {
		label = "White Widow Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "White Widow Crop",
		client = {
			image = "ww_whitewidow_crop.png",
		}
	},

	["transmission4"] = {
		label = "Tier 4 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission4.png",
		}
	},

	["donut"] = {
		label = "Donut",
		weight = 400,
		stack = true,
		close = true,
		description = "Donut.",
		client = {
			image = "donut.png",
		}
	},

	["magikarp"] = {
		label = "Magikarp",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "magikarp.png",
		}
	},

	["gummy_grape"] = {
		label = "Grand Daddy Purp Gummy",
		weight = 4,
		stack = true,
		close = true,
		description = "Grand Daddy of Gummies",
		client = {
			image = "ww_grapegummies.png",
		}
	},

	["bark"] = {
		label = "Tree Bark",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "bark.png",
		}
	},

	["chair105"] = {
		label = "Light Material Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair105.png",
		}
	},

	["mtlion2"] = {
		label = "Mountain Lion Carcass",
		weight = 3500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mtlion2.png",
		}
	},

	["ironore"] = {
		label = "Iron Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Iron, a base ore.",
		client = {
			image = "ironore.png",
		}
	},

	["whale"] = {
		label = "Whale",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "whale.png",
		}
	},

	["purple_haze_joint"] = {
		label = "Purple Haze Joint",
		weight = 200,
		stack = true,
		close = true,
		description = "Good joint",
		client = {
			image = "purple_haze_joint.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space.",
		client = {
			image = "coke_brick.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = true,
		close = true,
		description = "Quite a few grams of cocaine, often used for sale and taking up a lot of space.",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["meowth"] = {
		label = "Meowth",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "meowth.png",
		}
	},

	["happymeal"] = {
		label = "happymeal",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "happymeal.png",
		}
	},

	["weedburn"] = {
		label = "Weed Burn",
		weight = 5000,
		stack = true,
		close = true,
		description = "Weed USB",
		client = {
			image = "weedburn.png",
		}
	},

	["prosecco"] = {
		label = "Prosecco",
		weight = 200,
		stack = true,
		close = true,
		description = "Prosecco",
		client = {
			image = "prosecco.png",
		}
	},

	["finishpuremeth"] = {
		label = "Crystal Pure Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "Perfect crystal goodness, ready to bag. Heisenberg!",
		client = {
			image = "methbatch.png",
		}
	},

	["cardhat"] = {
		label = "Cardboard Box",
		weight = 100,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "cardhat.png",
		}
	},

	["uwuvanillasandy"] = {
		label = "uWu V-Icecream Sandy",
		weight = 200,
		stack = true,
		close = true,
		description = "Sweet Vanilla Biscuit filled with Icecreamy!",
		client = {
			image = "uwuvanillasandy.png",
		}
	},

	["mozz"] = {
		label = "Mozzeralla",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mozz.png",
		}
	},

	["woowoo"] = {
		label = "Woo Woo",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Woowoo Cocktail",
		client = {
			image = "woowoo.png",
		}
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this medikit to treat your patients",
		client = {
			image = "medikit.png",
		}
	},

	["purple"] = {
		label = "Xenons - Purple",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "purple.png",
		}
	},

	["heartysandwich"] = {
		label = "Hearty Sandwich",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "heartysandwich.png",
		}
	},

	["thermite_h"] = {
		label = "Thermite",
		weight = 1000,
		stack = false,
		close = true,
		description = "A low-yield thermite charge..",
		client = {
			image = "thermite_h.png",
		}
	},

	["jackherrer_joint"] = {
		label = "Jack Herrer Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "Jack Herrer Joint",
		client = {
			image = "ww_jackherrer_joint.png",
		}
	},

	["sparetire"] = {
		label = "Spare Tire",
		weight = 0,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "sparetire.png",
		}
	},

	["tauros"] = {
		label = "Tauros",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tauros.png",
		}
	},

	["mininglaser"] = {
		label = "Mining Laser",
		weight = 900,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mininglaser.png",
		}
	},

	["golem"] = {
		label = "Golem",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "golem.png",
		}
	},

	["marinarabox"] = {
		label = "Boxed Marinara",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["wet_greenlight_phone"] = {
		label = "Wet Green Light Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "wet_greenlight_phone.png",
		}
	},

	["hd_favcolored"] = {
		label = "Falovered Cup",
		weight = 0,
		stack = true,
		close = false,
		description = "Cup with jolly ranchers.",
		client = {
			image = "hd_favcolored.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat.",
		client = {
			image = "tosti.png",
		}
	},

	["raticate"] = {
		label = "Raticate",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "raticate.png",
		}
	},

	["moltres"] = {
		label = "Moltres",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Volcano Badge - Ultra Rare",
		client = {
			image = "moltres.png",
		}
	},

	["raichu"] = {
		label = "Raichu",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "raichu.png",
		}
	},

	["hitmonlee"] = {
		label = "Hitmonlee",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "hitmonlee.png",
		}
	},

	["ephedrine"] = {
		label = "Ephedrine",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "chemical1.png",
		}
	},

	["alla"] = {
		label = "Alla Vodka",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alla.png",
		}
	},

	["murderbag"] = {
		label = "Murder Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "Grab a Murder Bag of Burgers",
		client = {
			image = "burgerbag.png",
		}
	},

	["fanta"] = {
		label = "fanta",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "fanta.png",
		}
	},

	["laptop_pink"] = {
		label = "Pink Laptop",
		weight = 5000,
		stack = false,
		close = true,
		description = "A security Laptop",
		client = {
			image = "laptop_pink.png",
		}
	},

	["burger-bun"] = {
		label = "Bun",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_bun.png",
		}
	},

	["uwubudhabowl"] = {
		label = "uWu Budha Bowl",
		weight = 200,
		stack = true,
		close = true,
		description = "Bowl of nourishment and balance.",
		client = {
			image = "uwubudhabowl.png",
		}
	},

	["chair54"] = {
		label = "Old Wooden Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair54.png",
		}
	},

	["vehiclergb"] = {
		label = "Vehicle RGB",
		weight = 50,
		stack = true,
		close = true,
		description = "Sorry I cant hear you over the sound of my RGB!",
		client = {
			image = "vehiclergb.png",
		}
	},

	["snorlax"] = {
		label = "Snorlax",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Soul Badge - Ultra Rare",
		client = {
			image = "snorlax.png",
		}
	},

	["cookedegg"] = {
		label = "Freshly Cooked Egg",
		weight = 50,
		stack = true,
		close = false,
		description = "Freshly Cooked Egg",
		client = {
			image = "cookedegg.png",
		}
	},

	["blue_dream_bag"] = {
		label = "Blue Dream Bag",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "blue_dream_bag.png",
		}
	},

	["purplecookiepunch8th"] = {
		label = "Purple Cookies Punch 8th",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed bag",
		client = {
			image = "purplecookiepunch8th.png",
		}
	},

	["prisonwateringcan"] = {
		label = "Watering Can",
		weight = 1000,
		stack = false,
		close = false,
		description = "Watering can with a Bolingbroke Penitentiary label.",
		client = {
			image = "prisonwateringcan.png",
		}
	},

	["casino_ego_chaser"] = {
		label = "Casino Ego Chaser",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ego Chaser",
		client = {
			image = "casino_ego_chaser.png",
		}
	},

	["polywhirl"] = {
		label = "Polywhirl",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "polywhirl.png",
		}
	},

	["bburrito"] = {
		label = "Breakfast Burrito",
		weight = 200,
		stack = true,
		close = true,
		description = "A breakfast Burrito",
		client = {
			image = "bburrito.png",
		}
	},

	["burgerpatty"] = {
		label = "Burger Patty",
		weight = 500,
		stack = true,
		close = false,
		description = "Raw Patty",
		client = {
			image = "burgerpatty.png",
		}
	},

	["vodka_distill"] = {
		label = "Distilled Vodka",
		weight = 5000,
		stack = true,
		close = false,
		description = "A bucket of distilled vodka!",
		client = {
			image = "vodka_distill.png",
		}
	},

	["casino_chips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Casino Chips",
		client = {
			image = "casino_chips.png",
		}
	},

	["lime_crate"] = {
		label = "Lime Crate",
		weight = 3500,
		stack = true,
		close = false,
		description = "A crate of limes ready for selling!",
		client = {
			image = "lime_crate.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here.. Maybe you'll be.. The new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["emerald_ring_silver"] = {
		label = "Emerald Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring_silver.png",
		}
	},

	["milk"] = {
		label = "Milk",
		weight = 300,
		stack = true,
		close = true,
		description = "Carton of Milk",
		client = {
			image = "burger-milk.png",
		}
	},

	["banana_kush_weed"] = {
		label = "Banana Kush Weed 1G",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "banana_kush_weed.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this.",
		client = {
			image = "metalscrap.png",
		}
	},

	["pisswasser3"] = {
		label = "Pißwasser Pale Ale",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pisswaser3.png",
		}
	},

	["bkamikaze"] = {
		label = "Blue Kamikaze",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Blue Kamikaze Cocktail",
		client = {
			image = "bkamikaze.png",
		}
	},

	["cosmopolitan"] = {
		label = "Cosmopolitan",
		degrade = 5760,
        decay = true,
		weight = 400,
		stack = true,
		close = true,
		description = "Cosmopolitan!",
		client = {
			image = "cosmopolitan.png",
		}
	},

	["ccookie"] = {
		label = "Cranberry Cookie",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Cranberry Cookie Cocktail",
		client = {
			image = "ccookie.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["meatball"] = {
		label = "Homemade Meatballs",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "meatball.png",
		}
	},

	["rtx3080ti"] = {
		label = "RTX 3080TI",
		weight = 4000,
		stack = false,
		close = false,
		description = "RTX 3080TI Graphics Card",
		client = {
			image = "standard_cpu.png",
		}
	},

	["cubancigar"] = {
		label = "Cuban Cigar",
		weight = 100,
		stack = true,
		close = true,
		description = "Real cigar",
		client = {
			image = "cubancigar.png",
		}
	},

	["ducttape"] = {
		label = "Duct Tape",
		weight = 0,
		stack = false,
		close = true,
		description = "Good for quick fixes",
		client = {
			image = "bodyrepair.png",
		}
	},

	["rawcoke"] = {
		label = "Raw Coke",
		weight = 50,
		stack = true,
		close = true,
		description = "Unprocessed  cocaine,.",
		client = {
			image = "rawcoke.png",
		}
	},

	["dirtymoney"] = {
		label = "Dirty Money",
		weight = 0,
		stack = true,
		close = false,
		description = "The ill-gotten proceeds of criminal activity.",
		client = {
			image = "dirtymoney.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["sodiumcarbonate"] = {
		label = "Sodium Carbonate",
		weight = 200,
		stack = true,
		close = true,
		description = "Sodium Carbonate is the disodium salt of carbonic acid with alkalinizing property.",
		client = {
			image = "sodiumcarbonate.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["bag"] = {
		label = "Bag",
		weight = 5,
		stack = false,
		close = true,
		description = "Bag",
		client = {
			image = "bag.png",
		}
	},

	["strawberry_seed"] = {
		label = "Strawberry Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of strawberry seeds!",
		client = {
			image = "strawberry_seed.png",
		}
	},

	["cigarecubain"] = {
		label = "Cuban Cigar",
		weight = 10,
		stack = true,
		close = false,
		description = "Smoking KILLS",
		client = {
			image = "cigarecubain.png",
		}
	},

	["chair93"] = {
		label = "Brown Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair93.png",
		}
	},

	["burger-fries"] = {
		label = "Fries",
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_fries.png",
		}
	},

	["volcanobadge"] = {
		label = "Volcano Badge",
		weight = 0,
		stack = true,
		close = false,
		description = "7/8 for Trophy Badge",
		client = {
			image = "volcanoBadge.png",
		}
	},

	["hood"] = {
		label = "Vehicle Hood",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "hood.png",
		}
	},

	["cactusfruit_crate"] = {
		label = "Cactus Fruit Crate",
		weight = 3500,
		stack = true,
		close = false,
		description = "A crate of cactus fruits ready for selling!",
		client = {
			image = "cactusfruit_crate.png",
		}
	},

	["milk_crate"] = {
		label = "Milk Crate",
		weight = 5500,
		stack = true,
		close = false,
		description = "A crate of milk bottles ready for selling!",
		client = {
			image = "milk_crate.png",
		}
	},

	["cokebrick"] = {
		label = "Coke Brick (100g)",
		weight = 10000,
		stack = true,
		close = true,
		description = "Cocaine Brick",
		client = {
			image = "cokebrick.png",
		}
	},

	["timsdonutdough"] = {
		label = "Timmies Donut Dough",
		weight = 200,
		stack = true,
		close = false,
		description = "Dough to make Timmies donuts!",
		client = {
			image = "timsdonutdough.png",
		}
	},

	["marshbadge"] = {
		label = "MarshBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "6/8 for Trophy Badge",
		client = {
			image = "marshBadge.png",
		}
	},

	["weed_white-widow_seed_m"] = {
		label = "White-Widow: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male white-widow seed!",
		client = {
			image = "weed_white-widow_seed_m.png",
		}
	},

	["lettuce_seed"] = {
		label = "Lettuce Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of lettuce seeds!",
		client = {
			image = "lettuce_seed.png",
		}
	},

	["dunkincoldbrew"] = {
		label = "Cold Brew",
		weight = 50,
		stack = false,
		close = true,
		description = "Cold Brew",
		client = {
			image = "DunkinColdBrew.png",
		}
	},

	["mewtwogx"] = {
		label = "Mewtwo Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "mewtwogx.png",
		}
	},

	["ergotfungus"] = {
		label = "Ergot Fungus",
		weight = 150,
		stack = true,
		close = false,
		description = "Strange looking fungus that has a peculiar smell to it.",
		client = {
			image = "ergotfungus.png",
		}
	},

	["blue_dream_weed"] = {
		label = "Blue Dream Weed 1G",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "blue_dream_weed.png",
		}
	},

	["green_phone"] = {
		label = "Green Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "green_phone.png",
		}
	},

	["gin"] = {
		label = "Gin",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Gin",
		client = {
			image = "gin.png",
		}
	},

	["puremethbaggy"] = {
		label = "Pure Meth Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "10g perfect bag of a highly addictive stimulant. Very illegal, best on the market, sell quick.",
		client = {
			image = "puremethbag.png",
		}
	},

	["caterpie"] = {
		label = "Caterpie",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caterpie.png",
		}
	},

	["bottle_acid_on"] = {
		label = "bottle acid ",
		weight = 5,
		stack = false,
		close = true,
		description = "Bag",
		client = {
			image = "bottle_acid_on.png",
		}
	},

	["flareon"] = {
		label = "Flareon",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "flareon.png",
		}
	},

	["dirty_cup"] = {
		label = "Dirty Bowl",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty cup!",
		client = {
			image = "dirty_cup.png",
		}
	},

	["trophybadge"] = {
		label = "Trophy Badge",
		weight = 0,
		stack = true,
		close = false,
		description = "OwO You have a Trophy",
		client = {
			image = "trophyBadge.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["emptycowbucket"] = {
		label = "Empty Bucket",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emptybucket.png",
		}
	},

	["sapphire_ring"] = {
		label = "Sapphire Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring.png",
		}
	},

	["clean_smallglass"] = {
		label = "Clean Small Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean small glass!",
		client = {
			image = "clean_smallglass.png",
		}
	},

	["tentacruel"] = {
		label = "Tentacruel",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tentacruel.png",
		}
	},

	["potato_sack"] = {
		label = "Potato Sack",
		weight = 5000,
		stack = true,
		close = false,
		description = "A sack of potatoes ready for selling!",
		client = {
			image = "potato_sack.png",
		}
	},

	["dirty_pintglass"] = {
		label = "Dirty Pint Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty pint glass!",
		client = {
			image = "dirty_pintglass.png",
		}
	},

	["squid"] = {
		label = "Calamari",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "squid.png",
		}
	},

	["golduck"] = {
		label = "Golduck",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Cascade Badge",
		client = {
			image = "golduck.png",
		}
	},

	["artpeice"] = {
		label = "Art Peice",
		weight = 0,
		stack = true,
		close = true,
		description = "artpeice...",
		client = {
			image = "artpeice.png",
		}
	},

	["chair49"] = {
		label = "Brown Wodd Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair49.png",
		}
	},

	["pertrolcontainer"] = {
		label = "pertrolcontainer",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "pertrolcontainer.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 50,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["heroinbase"] = {
		label = "Heroin Base",
		weight = 100,
		stack = true,
		close = true,
		description = "Heroin base. Refine this into heroin powder.",
		client = {
			image = "heroinbase.png",
		}
	},

	["white"] = {
		label = "Xenons - White",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "white.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed-plant-seed.png",
		}
	},

	["rawsausage"] = {
		label = "Raw Sausage",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rawsausage.png",
		}
	},

	["cocacola"] = {
		label = "CocaCola",
		weight = 100,
		stack = true,
		close = true,
		description = "Probably have some issues with your blood suger level",
		client = {
			image = "cocacola.png",
		}
	},

	["buddha"] = {
		label = "Buddha",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "buddha.png",
		}
	},

	["vvs_diamonds"] = {
		label = "VVS Diamonds",
		weight = 0,
		stack = true,
		close = true,
		description = "VVSSsSSSsss...",
		client = {
			image = "vvs_diamonds.png",
		}
	},

	["gummy_applering"] = {
		label = "Green Crack Gummy",
		weight = 4,
		stack = true,
		close = true,
		description = "There is no Crack in this Gummy stop asking",
		client = {
			image = "ww_greenapplegummies.png",
		}
	},

	["specialbadge"] = {
		label = "Police Badge",
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Badge of Law Enforcements",
		client = {
			image = "specialbadge.png",
		}
	},

	["hotdog"] = {
		label = "Hotdog",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "hotdog.png",
		}
	},

	["weed_purple-haze_seed_m"] = {
		label = "Purple-Haze: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male purple-haze seed!",
		client = {
			image = "weed_purple-haze_seed_m.png",
		}
	},

	["meat_rat"] = {
		label = "Rat Meat",
		weight = 200,
		stack = true,
		close = true,
		description = "Rat meat!",
		client = {
			image = "meat_rat.png",
		}
	},

	["bbq4"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq4.png",
		}
	},

	["friedpick"] = {
		label = "Fried Pickles",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of fried pickles",
		client = {
			
			image = "friedpick.png",
		}
	},

	["usb_red"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A red USB flash drive",
		client = {
			image = "usb_red.png",
		}
	},

	["bucket"] = {
		label = "Bucket",
		weight = 100,
		stack = true,
		close = false,
		description = "A empty bucket!",
		client = {
			image = "bucket.png",
		}
	},

	["paintcan"] = {
		label = "Vehicle Spray Can",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spraycan.png",
		}
	},

	["chair90"] = {
		label = "White Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair90.png",
		}
	},

	["chair89"] = {
		label = "Light Blue Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair89.png",
		}
	},

	["hanno"] = {
		label = "Hanno",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "hanno.png",
		}
	},

	["weddingcake_crop"] = {
		label = "Wedding Cake Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "Wedding Cake Crop",
		client = {
			image = "ww_weddingcake_crop.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 100,
		stack = true,
		close = false,
		description = "A lighter, everybody has to have one of these on hand!",
		client = {
			image = "lighter.png",
		}
	},

	["articuno"] = {
		label = "Articuno",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "articuno.png",
		}
	},

	["chair82"] = {
		label = "Small Black Stool",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair82.png",
		}
	},

	["chair37"] = {
		label = "Dark Brown Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair37.png",
		}
	},

	["snowmontana8th"] = {
		label = "SnowMontana8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "snowmontana8th.png",
		}
	},

	["cheesypie"] = {
		label = "Cheesypie",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "cheesypie.png",
		}
	},

	["suturekit"] = {
		label = "Suture Kit",
		weight = 60,
		stack = true,
		close = true,
		description = "For stitching your patients",
		client = {
			image = "suturekit.png",
		}
	},

	["plastic_baggy"] = {
		label = "plastic baggy",
		weight = 450,
		stack = true,
		close = true,
		description = "plastic baggy",
		client = {
			image = "empty_weed_bag",
		}
	},

	["sbullet"] = {
		label = "Silver Bullet",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Silver Bullet Cocktail",
		client = {
			image = "sbullet.png",
		}
	},

	["kingler"] = {
		label = "Kingler",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "kingler.png",
		}
	},

	["pd_brown_mushroom"] = {
		label = "Brown Mushroom",
		weight = 300,
		stack = true,
		close = true,
		description = "I should look for a fruit stall",
		client = {
			image = "brown_mushroom.png",
		}
	},

	["purplecookiepunchblunt"] = {
		label = "Purple Cookie Punch Blunt",
		weight = 0,
		stack = true,
		close = true,
		description = "Rolled Up",
		client = {
			image = "purplecookiepunchblunt.png",
		}
	},

	["stancerkit"] = {
		label = "stancerkit",
		weight = 500,
		stack = false,
		close = true,
		description = "stancerkit",
		client = {
			image = "stancerkit.png",
		}
	},

	["chair17"] = {
		label = "Green Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair17.png",
		}
	},

	["pizzabase"] = {
		label = "Pizza Base",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "base2.png",
		}
	},

	["transmission0"] = {
		label = "Stock Transmission A",
		weight = 7500,
		stack = true,
		close = true,
		description = "Stock Transmission",
		client = {
			image = "transmission_parts_a.png",
		}
	},

	["goldcubanchain"] = {
		label = "Iced Out Chain",
		weight = 1000,
		stack = true,
		close = true,
		description = "Custom Chain Sum Light...",
		client = {
			image = "goldcubanchain.png",
		}
	},

	["chair69"] = {
		label = "Dark Material Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair69.png",
		}
	},

	["barley_sack"] = {
		label = "Barley Sack",
		weight = 5000,
		stack = true,
		close = false,
		description = "A sack of barley ready for selling!",
		client = {
			image = "barley_sack.png",
		}
	},

	["maitai"] = {
		label = "Mai Tai",
		weight = 400,
		stack = true,
		close = true,
		description = "Mai Tai!",
		client = {
			image = "maitai.png",
		}
	},

	["chair107"] = {
		label = "Red Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair107.png",
		}
	},

	["diavola"] = {
		label = "Diavola",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diavola.png",
		}
	},

	["micard_psa"] = {
		label = "PSA Case",
		weight = 0,
		stack = false,
		close = true,
		description = "PSA Case",
		client = {
			image = "micard_booster_pack2.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["skin_dolphin"] = {
		label = "Dolphin Skin",
		weight = 850,
		stack = true,
		close = true,
		description = "Dolphin skin. Highly illegal!",
		client = {
			image = "skin_dolphin.png",
		}
	},

	["miningdrill"] = {
		label = "Mining Drill",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "miningdrill.png",
		}
	},

	["amarone"] = {
		label = "Amarone",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "amarone.png",
		}
	},

	["chair10"] = {
		label = "Black Office Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair10.png",
		}
	},

	["chair20"] = {
		label = "Blue Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair20.png",
		}
	},

	["weed_fertilizer"] = {
		label = "Big Bud Fertilizer",
		weight = 1000,
		stack = true,
		close = false,
		description = "Get that big bug energy!",
		client = {
			image = "weed_fertilizer.png",
		}
	},

	["gorrilaglue8th"] = {
		label = "GorrilaGlue8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "gorrilaglue8th.png",
		}
	},

	["bmx"] = {
		label = "Bmx",
		weight = 0,
		stack = true,
		close = true,
		description = "A BMX Bike",
		client = {
			image = "bmx.png",
		}
	},

	['huntinglicense'] = {
		label = 'HuntingLicense',
		weight = 0,
		stack = false,
		close = true,
		description = 'Type of this ID card: HuntingLicense',
		client = {image = 'huntinglicense.png'}
  	},

	["crutch"] = {
		label = "Crutch",
		weight = 650,
		stack = true,
		close = true,
		description = "A device used to assist with walking.",
		client = {
			image = "crutch.png",
		}
	},

	["scratch_ticket"] = {
		label = "Scratch Ticket",
		weight = 25,
		stack = true,
		close = true,
		description = "Odds Are Meant to be Beaten",
		client = {
			image = "scratch_ticket.png",
		}
	},

	["bacon"] = {
		label = "Cooked Bacon",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "Cooked Bacon",
		client = {
			image = "bacon.png",
		}
	},

	["cement"] = {
		label = "Cement",
		weight = 1000,
		stack = true,
		close = true,
		description = "Just a regular bag of builders cement.",
		client = {
			image = "cement.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 3000,
		stack = false,
		close = true,
		description = "Some protection won't hurt.. right?",
		client = {
			image = "armor.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences.",
		client = {
			image = "usb_device.png",
		}
	},

	["cajunseason"] = {
		label = "Cajun Season",
		weight = 1,
		stack = true,
		close = true,
		description = "cajunseason.",
		client = {
			image = "cajunseason.png",
		}
	},

	["coke_spoon"] = {
		label = "Coke Spoon",
		weight = 1,
		stack = true,
		close = true,
		description = "Mmmmh sniff sniff.",
		client = {
			image = "coke_spoon.png",
		}
	},

	["wartortle"] = {
		label = "Wartortle",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "wartortle.png",
		}
	},

	["chair60"] = {
		label = "Brown Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair60.png",
		}
	},

	["toy-egg"] = {
		label = "Burgershot Toy Egg",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gives Random Toys",
		client = {
			image = "toy-egg.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = true,
		description = "Permit to show you can drive a vehicle.",
		client = {
			image = "driver_license.png",
		}
	},

	["customplate"] = {
		label = "Customized Plates",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "plate.png",
		}
	},

	["weed_bag"] = {
		label = "Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real fast.",
		client = {
			image = "weed-baggie.png",
		}
	},

	["transmission1"] = {
		label = "Transmission Upgrade B",
		weight = 7800,
		stack = true,
		close = true,
		description = "Transmission Upgrade 1",
		client = {
			image = "transmission_parts_b.png",
		}
	},

	["tentacool"] = {
		label = "Tentacool",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tentacool.png",
		}
	},

	["deer1"] = {
		label = "Deer Carcass",
		weight = 3000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "deer1.png",
		}
	},

	["maize"] = {
		label = "Maize",
		weight = 100,
		stack = true,
		close = false,
		description = "Maize!",
		client = {
			image = "maize.png",
		}
	},

	["pizzadough"] = {
		label = "Pizza Dough",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pizzadough.png",
		}
	},

	["glass_vodkalemon"] = {
		label = "Glass of Vodka Lemonade",
		weight = 200,
		stack = true,
		close = true,
		description = "A small glass of vodka lemonade!",
		client = {
			image = "glass_vodkalemon.png",
		}
	},

	["origami5"] = {
		label = "Origami Unicorn",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami5.png",
		}
	},

	["eggsbacon"] = {
		label = "Eggs & Bacon",
		weight = 600,
		stack = true,
		close = true,
		description = "Eggs & Bacon.",
		client = {
			image = "eggsbacon.png",
		}
	},

	["nachos"] = {
		label = "Nachos",
		weight = 200,
		stack = true,
		close = true,
		description = "A bag of Nachos",
		client = {
			
			image = "nachos.png",
		}
	},

	["sim_card"] = {
		label = "Sim Card",
		weight = 100,
		stack = false,
		close = true,
		description = "Change Your phone Number to Any Number (One-time use)",
		client = {
			image = "sim_card.png",
		}
	},

	["davidoffcigar"] = {
		label = "Davidoff Cigar",
		weight = 200,
		stack = true,
		close = true,
		description = "Real cigar",
		client = {
			image = "davidoffcigar.png",
		}
	},

	["chair71"] = {
		label = "Brown Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair71.png",
		}
	},

	["weed4g"] = {
		label = "Weed Qz",
		weight = 450,
		stack = true,
		close = false,
		description = "4 grams of weed",
		client = {
			image = "weed4g.png",
		}
	},

	["rapidash"] = {
		label = "Rapidash",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Volcano Badge",
		client = {
			image = "rapidash.png",
		}
	},

	["fishingtin"] = {
		label = "Fishing Tin",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Tin",
		client = {
			image = "fishingtin.png",
		}
	},

	["visa"] = {
		label = "Visa Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
		}
	},

	["silveringot"] = {
		label = "Silver Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silveringot.png",
		}
	},

	["dirty_glass"] = {
		label = "Dirty Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty glass!",
		client = {
			image = "dirty_glass.png",
		}
	},

	["clean_glass"] = {
		label = "Clean Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean glass!",
		client = {
			image = "clean_glass.png",
		}
	},

	["origami21"] = {
		label = "Origami Wolf",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami21.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws..",
		client = {
			image = "screwdriverset.png",
		}
	},

	["weed_purple-haze_seed_f"] = {
		label = "Purple-Haze: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized purple-haze seed.",
		client = {
			image = "weed_purple-haze_seed_f.png",
		}
	},

	["housewhite"] = {
		label = "House White Wine",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "housewhite.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 50,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something.",
		client = {
			image = "steel.png",
		}
	},

	["weedkey"] = {
		label = "Weed Lab USB",
		weight = 5000,
		stack = true,
		close = true,
		description = "What is this USB used for?",
		client = {
			image = "usb_green.png",
		}
	},

	["gold"] = {
		label = "Gold",
		weight = 0,
		stack = true,
		close = true,
		description = "Golddddd",
		client = {
			image = "gold.png",
		}
	},

	["gorrilaglueblunt"] = {
		label = "GorrilaGlueBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "gorrilaglueblunt.png",
		}
	},

	["uwumisosoup"] = {
		label = "uWu Miso Soup",
		weight = 200,
		stack = true,
		close = true,
		description = "Fungus never tasted so good!",
		client = {
			image = "uwumisosoup.png",
		}
	},

	["chair59"] = {
		label = "Lime Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair59.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "This is a placeholder description",
		client = {
			image = "rolling_paper.png",
		}
	},

	["pidgeotto"] = {
		label = "Pidgeotto",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pidgeotto.png",
		}
	},

	["bellsprout"] = {
		label = "Bellsprout",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Rainbow Badge",
		client = {
			image = "bellsprout.png",
		}
	},

	["fob_racing_basic"] = {
		label = "Basic Racing Fob",
		weight = 500,
		stack = false,
		close = true,
		description = "This basic fob allows someone to join custom races.",
		client = {
			image = "fob_racing_basic.png",
		}
	},

	["chair110"] = {
		label = "Black Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair110.png",
		}
	},

	["liquid"] = {
		label = "Liquid",
		weight = 200,
		stack = true,
		close = true,
		description = "Vape liquid",
		client = {
			image = "liquid.png",
		}
	},

	["squirtle"] = {
		label = "Squirtle",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "squirtle.png",
		}
	},

	["lemonpeper8th"] = {
		label = "LemonPeper8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "lemonpeper8th.png",
		}
	},

	["chair94"] = {
		label = "Grey Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair94.png",
		}
	},

	["copperore"] = {
		label = "Copper Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Copper, a base ore.",
		client = {
			image = "copperore.png",
		}
	},

	["monsterenergy"] = {
		label = "monsterenergy",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "monsterenergy.png",
		}
	},

	["hamburger"] = {
		label = "Hamburger",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "hamburger.png",
		}
	},

	["chair55"] = {
		label = "Old Metal ",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair55.png",
		}
	},

	["tapiokaballs"] = {
		label = "Flour",
		weight = 200,
		stack = true,
		close = true,
		description = "Tapioka balls typically seen in making Bubble Tea!",
		client = {
			image = "tapiokaballs.png",
		}
	},

	["cheesepie"] = {
		label = "Microwavable Cheese Pie",
		weight = 400,
		stack = true,
		close = true,
		description = "A microwavable cheese and onion pie!",
		client = {
			image = "cheesepie.png",
		}
	},

	["chair91"] = {
		label = "White Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair91.png",
		}
	},

	["clayvon"] = {
		label = "Clayvon",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "clayvon.png",
		}
	},

	["chair104"] = {
		label = "Blue Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair104.png",
		}
	},

	["origami11"] = {
		label = "Origami Bunny",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami11.png",
		}
	},

	["weed_purple_haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed-baggie.png",
		}
	},

	["log"] = {
		label = "Log",
		weight = 2000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "log.png",
		}
	},

	["margarita"] = {
		label = "Margarita",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Margarita",
		client = {
			image = "margarita.png",
		}
	},

	["origami15"] = {
		label = "Origami Dinosaur",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami15.png",
		}
	},

	["orange_juice"] = {
		label = "Orange Juice",
		weight = 450,
		stack = true,
		close = true,
		description = "Tasty Orange Juice",
		client = {
			image = "orange_juice.png",
		}
	},

	["curaco"] = {
		label = "Curaco",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Curaco",
		client = {
			image = "curaco.png",
		}
	},

	["housered"] = {
		label = "House Red Wine",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "housered.png",
		}
	},

	["lionsmane"] = {
		label = "Lions Mane",
		weight = 50,
		stack = false,
		close = true,
		description = "LionsMane",
		client = {
			image = "LionsMane.png",
		}
	},

	["glass_whiskeycoke"] = {
		label = "Glass of Whiskey Coke",
		weight = 200,
		stack = true,
		close = true,
		description = "A small glass of whiskey and coke!",
		client = {
			image = "glass_whiskeycoke.png",
		}
	},

	["panini"] = {
		label = "Panini",
		weight = 400,
		stack = true,
		close = true,
		description = "Panini.",
		client = {
			image = "panini.png",
		}
	},

	["morphinebaggy"] = {
		label = "Bag of Morphine",
		weight = 10,
		stack = true,
		close = true,
		description = "Morphine. Destroying lives since 1898!",
		client = {
			image = "morphinebaggy.png",
		}
	},

	["kadabra"] = {
		label = "Kadabra",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Marsh Badge - Rare",
		client = {
			image = "kadabra.png",
		}
	},

	["kuz_divinggear"] = {
		label = "Diving gear",
		weight = 3000,
		stack = true,
		close = true,
		description = "Basic diving gear",
		client = {
			image = "kuz_divinggear.png",
		}
	},

	["dodrio"] = {
		label = "Dodrio",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "dodrio.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["suspension5"] = {
		label = "Tier 5 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension5.png",
		}
	},

	["windowtint1"] = {
		label = "Window Tint Stage 1",
		weight = 2200,
		stack = true,
		close = true,
		description = "Window Tint Stage 1",
		client = {
			image = "stockwindowtint1.png",
		}
	},

	["cutchicken"] = {
		label = "Cut Chicken",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cut Chicken",
		client = {
			image = "cutchickenicon.png",
		}
	},

	["stagdancer"] = {
		label = "StagDancer",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "stagdancer.png",
		}
	},

	["pint_logger"] = {
		label = "Pint of Logger",
		weight = 400,
		stack = true,
		close = true,
		description = "The beer that brings the forest down!",
		client = {
			image = "pint_logger.png",
		}
	},

	["rollingpapers"] = {
		label = "Rolling Papers",
		weight = 50,
		stack = true,
		close = false,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rollingpapers.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed-plant-seed.png",
		}
	},

	["tomato"] = {
		label = "Tomato",
		weight = 0,
		stack = true,
		close = true,
		description = "Tomato..",
		client = {
			image = "tomato.png",
		}
	},

	["cherry"] = {
		label = "Cherry",
		weight = 20,
		stack = true,
		close = false,
		description = "Cherry!",
		client = {
			image = "cherry.png",
		}
	},

	["diglett"] = {
		label = "Diglett",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diglett.png",
		}
	},

	["sprunk"] = {
		label = "Sprunk",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sprunk.png",
		}
	},

	["cooked_sausage"] = {
		label = "Cooked Sausage",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_sausage.png",
		}
	},

	["flv_weed_white-widow"] = {
		label = "White Widow Additive",
		weight = 200,
		stack = true,
		close = false,
		description = "White Widow Additive",
		client = {
			image = "flv_weed_white-widow.png",
		}
	},

	["nidoking"] = {
		label = "Nidoking",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Earth Badge - Rare",
		client = {
			image = "nidoking.png",
		}
	},

	["pumpkinpiebox"] = {
		label = "Box of Pie",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pumpkinpiebox.png",
		}
	},

	["otfchain"] = {
		label = "Iced Out Chain",
		weight = 1000,
		stack = true,
		close = true,
		description = "Custom Chain Sum Light...",
		client = {
			image = "otfchain.png",
		}
	},

	["whitewidow_bud"] = {
		label = "White Widow Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "White Widow Bud",
		client = {
			image = "ww_whitewidow_bud.png",
		}
	},

	["hotdogbun"] = {
		label = "Hot Dog Bun",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hotdogbun.png",
		}
	},

	["methtray"] = {
		label = "Meth Tray",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "methbrick.png",
		}
	},

	["brake1"] = {
		label = "Brakes Upgrade B",
		weight = 3000,
		stack = true,
		close = true,
		description = "Brake Upgrade 1",
		client = {
			image = "brake_parts_b.png",
		}
	},

	["peanutbutter"] = {
		label = "Peanut Butter",
		weight = 100,
		stack = true,
		close = true,
		description = "Creamy Goodness",
		client = {
			image = "ww_peanutbutter.png",
		}
	},

	["cakepop"] = {
		label = "Cat Cake-Pop",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "cakepop.png",
		}
	},

	["mtlion3"] = {
		label = "Mountain Lion Carcass",
		weight = 3800,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mtlion3.png",
		}
	},

	["kuz_divinggeargood"] = {
		label = "Scuba gear",
		weight = 6000,
		stack = true,
		close = true,
		description = "Advanced diving gear",
		client = {
			image = "kuz_divinggeargood.png",
		}
	},

	["chair14"] = {
		label = "White Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair14.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "#Fuel like #YOLO",
		client = {
			image = "jerry_can.png",
		}
	},

	["bolognese"] = {
		label = "Bolognese",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bolognese.png",
		}
	},

	["sven"] = {
		label = "Sven",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "sven.png",
		}
	},

	["blackcherrygelatoblunt"] = {
		label = "BlackCherryGelatoBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "blackcherrygelatoblunt.png",
		}
	},

	["bluedream_joint"] = {
		label = "Blue Dream Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "Grand Daddy Purple Joint",
		client = {
			image = "ww_bluedream_joint.png",
		}
	},

	["meat_boar"] = {
		label = "Boar Meat",
		weight = 700,
		stack = true,
		close = true,
		description = "Boar meat!",
		client = {
			image = "meat_boar.png",
		}
	},

	["muffin"] = {
		label = "Muffin",
		weight = 600,
		stack = true,
		close = true,
		description = "Tasty Muffin.",
		client = {
			image = "muffin.png",
		}
	},

	["redfish"] = {
		label = "Redfish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "redfish.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain.",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["uncut_sapphire"] = {
		label = "Uncut Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Sapphire",
		client = {
			image = "uncut_sapphire.png",
		}
	},

	["edible_ricecrispy"] = {
		label = "Buddy Crocker Crispy",
		weight = 4,
		stack = true,
		close = true,
		description = "Buddy Crockers Homemade Goods",
		client = {
			image = "ww_crispytreat.png",
		}
	},

	["football"] = {
		label = "Football",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "football.png",
		}
	},

	["skin_cow"] = {
		label = "Cow Hide",
		weight = 1250,
		stack = true,
		close = true,
		description = "Cow hide.",
		client = {
			image = "skin_cow.png",
		}
	},

	["soulbadge"] = {
		label = "SoulBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "5/8 for Trophy Badge",
		client = {
			image = "soulBadge.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["croissant"] = {
		label = "Croissant",
		weight = 200,
		stack = true,
		close = false,
		description = "Croissant Dough",
		client = {
			image = "croissant.png",
		}
	},

	["vaporeon"] = {
		label = "Vaporeon",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "vaporeon.png",
		}
	},

	["methburn"] = {
		label = "Meth Burn",
		weight = 5000,
		stack = true,
		close = true,
		description = "Meth USB",
		client = {
			image = "methburn.png",
		}
	},

	["aspirine"] = {
		label = "Aspirin",
		weight = 200,
		stack = false,
		close = true,
		description = "Welcome to GTA:Vice City",
		client = {
			image = "aspirine.png",
		}
	},

	["musicequipment"] = {
		label = "Music Equipment",
		weight = 0,
		stack = true,
		close = true,
		description = "MusicEquipment",
		client = {
			image = "musicequipment.png",
		}
	},

	["marijuana_baggies"] = {
		label = "Baggies",
		weight = 0,
		stack = true,
		close = true,
		description = "Need some baggies? i got some baggies",
		client = {
			image = "marijuana_baggies.png",
		}
	},

	["hotchocolate"] = {
		label = "Hot Chocolate",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "hotchocolate.png",
		}
	},

	["diamondstones"] = {
		label = "Diamond Stones",
		weight = 0,
		stack = true,
		close = true,
		description = "Them Stonessss",
		client = {
			image = "diamondstones.png",
		}
	},

	["tv"] = {
		label = "Stolen TV",
		weight = 500,
		stack = false,
		close = true,
		description = "Stolen TV",
		client = {
			image = "tv.png",
		}
	},

	["newoil"] = {
		label = "Car Oil",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caroil.png",
		}
	},

	["meowfurryon"] = {
		label = "MeowFurryon",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "meowfurryon.png",
		}
	},

	["car_armor"] = {
		label = "Vehicle Armor",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "armour.png",
		}
	},

	["lysergicacid"] = {
		label = "Lysergic Acid",
		weight = 700,
		stack = true,
		close = false,
		description = "Chemically manufactured in illicit laboratories, except for a small amount, which is produced legally for research. Colorless and odorless, it has a slight bitter taste.",
		client = {
			image = "lysergicacid.png",
		}
	},

	["coconut"] = {
		label = "Coconut",
		weight = 80,
		stack = true,
		close = false,
		description = "Coconut!",
		client = {
			image = "coconut.png",
		}
	},

	["chair92"] = {
		label = "Brown Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair92.png",
		}
	},

	["uwubentobox"] = {
		label = "uWu Bento Box",
		weight = 200,
		stack = true,
		close = true,
		description = "An uWu Selection with a surprise!",
		client = {
			image = "uwubentobox.png",
		}
	},

	["weed_gelato_seed_f"] = {
		label = "Gelato: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized gelato seed.",
		client = {
			image = "weed_gelato_seed_f.png",
		}
	},

	["bellini"] = {
		label = "Bellini",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Bellini",
		client = {
			image = "bellini.png",
		}
	},

	["gummy_blueberry"] = {
		label = "Blue Dream Gummy",
		weight = 4,
		stack = true,
		close = true,
		description = "A hazy Blue Dream Gummy",
		client = {
			image = "ww_blueberrygummies.png",
		}
	},

	["jefeogblunt"] = {
		label = "JefeOgBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "jefeogblunt.png",
		}
	},

	["meat_cormorant"] = {
		label = "Cormorant Meat",
		weight = 400,
		stack = true,
		close = true,
		description = "Cormorant meat!",
		client = {
			image = "meat_cormorant.png",
		}
	},

	["bloodymary"] = {
		label = "bloodymary",
		weight = 400,
		stack = true,
		close = true,
		description = "Bloody Mary!",
		client = {
			image = "bloodymary.png",
		}
	},

	["radiocar"] = {
		label = "radiocar",
		weight = 100,
		stack = true,
		close = true,
		description = "radiocar",
		client = {
			image = "radiocar.png",
		}
	},

	["sulfuricacid"] = {
		label = "sulfuricacid",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real fast.",
		client = {
			image = "sulfuricacid.png",
		}
	},

	["metapod"] = {
		label = "Metapod",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "metapod.png",
		}
	},

	["redw"] = {
		label = "Redwood Pack",
		weight = 200,
		stack = true,
		close = true,
		description = "Take out your cigarettes",
		client = {
			image = "redw.png",
		}
	},

	["clean_pintglass"] = {
		label = "Clean Pint Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean pint glass!",
		client = {
			image = "clean_pintglass.png",
		}
	},

	["skin_rabbit"] = {
		label = "Rabbit Hide",
		weight = 550,
		stack = true,
		close = true,
		description = "Rabbit hide.",
		client = {
			image = "skin_rabbit.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed-plant-seed.png",
		}
	},

	["skin_rat"] = {
		label = "Rat Hide",
		weight = 150,
		stack = true,
		close = true,
		description = "Rat hide.",
		client = {
			image = "skin_rat.png",
		}
	},

	["mrmime"] = {
		label = "Mr_mime",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Marsh Badge",
		client = {
			image = "mrmime.png",
		}
	},

	["bread"] = {
		label = "Bread",
		weight = 100,
		stack = true,
		close = false,
		description = "Bread",
		client = {
			image = "bread.png",
		}
	},

	["art"] = {
		label = "Stolen Art",
		weight = 500,
		stack = false,
		close = true,
		description = "Stolen Art",
		client = {
			image = "art.png",
		}
	},

	["meat_cow"] = {
		label = "Beef Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cow meat!",
		client = {
			image = "meat_cow.png",
		}
	},

	["uwusushi"] = {
		label = "uWu Sushi",
		weight = 200,
		stack = true,
		close = true,
		description = "Designed as a window to your soul.",
		client = {
			image = "uwusushi.png",
		}
	},

	["pisswasser"] = {
		label = "Pißwasser",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pisswaser1.png",
		}
	},

	["patatasfritas"] = {
		label = "patatasfritas",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "patatasfritas.png",
		}
	},

	["cutveggies"] = {
		label = "Cut Veggies",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cut Veggies",
		client = {
			image = "cutveggieicon.png",
		}
	},

	["persian"] = {
		label = "Persian",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Earth Badge",
		client = {
			image = "persian.png",
		}
	},

	["transmission2"] = {
		label = "Transmission Upgrade C",
		weight = 7400,
		stack = true,
		close = true,
		description = "Transmission Upgrade 2",
		client = {
			image = "transmission_parts_c.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 100,
		stack = true,
		close = true,
		description = "Ever been so drunk you start speaking Russian? This will do the trick",
		client = {
			image = "vodka.png",
		}
	},

	["kq_drifttire"] = {
		label = "Drift Tire",
		weight = 1500,
		stack = true,
		close = true,
		description = "Drift car tire",
		client = {
			image = "kq_drifttire.png",
		}
	},

	["funkopop_dumbledore"] = {
		label = "Dumbledore Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Dumbledore Funkopop Toy",
		client = {
			image = "funkopop_dumbledore.png",
		}
	},

	["chair95"] = {
		label = "Dark Brown Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair95.png",
		}
	},

	["blackbeanburger"] = {
		label = "blackbeanburge",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "blackbeanburger.png",
		}
	},

	["recyclablematerial"] = {
		label = "Recycle Box",
		weight = 100,
		stack = true,
		close = false,
		description = "A box of Recyclable Materials",
		client = {
			image = "recyclablematerial.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldchain.png",
		}
	},

	["tweezers"] = {
		label = "Tweezers",
		weight = 50,
		stack = true,
		close = true,
		description = "For picking out bullets",
		client = {
			image = "tweezers.png",
		}
	},

	["suspension3"] = {
		label = "Suspension Upgrade D",
		weight = 5700,
		stack = true,
		close = true,
		description = "Suspension Upgrade 3",
		client = {
			image = "race_suspension.png",
		}
	},

	["oki"] = {
		label = "Oki",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "oki.png",
		}
	},

	["origami4"] = {
		label = "Origami Dragon",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami4.png",
		}
	},

	["scyther"] = {
		label = "Scyther",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Rainbow Badge - Rare",
		client = {
			image = "scyther.png",
		}
	},

	["powersaw"] = {
		label = "Power Saw",
		weight = 1000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "powersaw.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 50,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something.",
		client = {
			image = "aluminum.png",
		}
	},

	["telescope"] = {
		label = "Stolen Telescope",
		weight = 500,
		stack = false,
		close = true,
		description = "Stolen Telescope",
		client = {
			image = "telescope.png",
		}
	},

	["wet_red_phone"] = {
		label = "Wet Red Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?",
		client = {
			image = "wet_red_phone.png",
		}
	},

	["emerald_earring"] = {
		label = "Emerald Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring.png",
		}
	},

	["apple"] = {
		label = "Apple",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple.png",
		}
	},

	["uwupancake"] = {
		label = "uWu Savory Pancake",
		weight = 200,
		stack = true,
		close = true,
		description = "Korean savory pancake made with scallions.",
		client = {
			image = "uwupancake.png",
		}
	},

	["fish2"] = {
		label = "Fish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "fish2.png",
		}
	},

	["revivekit"] = {
		label = "Revival Kit",
		weight = 3000,
		stack = false,
		close = false,
		description = "When your pal needs that pick me up",
		client = {
			image = "revivekit.png",
		}
	},

	["riceball"] = {
		label = "Neko Onigiri",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "catrice.png",
		}
	},

	["bleeder"] = {
		label = "The Bleeder",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "The Bleeder",
		client = {
			
			image = "burger-bleeder.png",
		}
	},

	["krabby"] = {
		label = "Krabby",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "krabby.png",
		}
	},

	["silver_ring"] = {
		label = "Silver Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_ring.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest amnesia flower!",
		client = {
			image = "weed_amnesia.png",
		}
	},

	["weed_skunk_seed_f"] = {
		label = "Skunk: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized skunk seed.",
		client = {
			image = "weed_skunk_seed_f.png",
		}
	},

	["exeggutor"] = {
		label = "Exeggutor",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "exeggutor.png",
		}
	},

	["cakemixblunt"] = {
		label = "Cake Mix Blunt",
		weight = 0,
		stack = true,
		close = true,
		description = "Rolled Up",
		client = {
			image = "cakemixblunt.png",
		}
	},

	["marvelcocktail"] = {
		label = "Marvel Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "marvelcocktail.png",
		}
	},

	["whiteruntz"] = {
		label = "White Runtz",
		weight = 50,
		stack = false,
		close = true,
		description = "White Runtz",
		client = {
			image = "WhiteRuntz.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective..",
		client = {
			image = "radioscanner.png",
		}
	},

	["petrol"] = {
		label = "petrol",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "petrol.png",
		}
	},

	["afghankush_bud"] = {
		label = "Afghan Kush Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "Afghan Kush Bud",
		client = {
			image = "ww_afghankush_bud.png",
		}
	},

	["glass_water"] = {
		label = "Glass of Water",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of water!",
		client = {
			image = "glass_water.png",
		}
	},

	["rum"] = {
		label = "Rum",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Rum",
		client = {
			image = "rum.png",
		}
	},

	["patochebeer"] = {
		label = "Deluxe Beer",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "patochebeer.png",
		}
	},

	["kuz_jewelry"] = {
		label = "Jewelry",
		weight = 1000,
		stack = true,
		close = false,
		description = "Jewelry",
		client = {
			image = "kuz_jewelry.png",
		}
	},

	["electricblue"] = {
		label = "Xenons - Electric Blue",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "electricblue.png",
		}
	},

	["horn"] = {
		label = "Custom Vehicle Horn",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "horn.png",
		}
	},

	["tint_supplies"] = {
		label = "Window Tint",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tint_supplies.png",
		}
	},

	["prisonsugar"] = {
		label = "Sugar Pack",
		weight = 1000,
		stack = true,
		close = false,
		description = "Plain old sugar",
		client = {
			image = "prisonsugar.png",
		}
	},

	["uwububbleteamint"] = {
		label = "Minty B-T",
		weight = 200,
		stack = true,
		close = true,
		description = "Matcha Tea with Mint Boba.",
		client = {
			image = "uwububbleteamint.png",
		}
	},

	["engine5"] = {
		label = "Tier 5 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine5.png",
		}
	},

	["washedstone"] = {
		label = "Washed Stone",
		weight = 3500,
		stack = true,
		close = false,
		description = "ORE",
		client = {
			image = "washedstone.png",
		}
	},

	["sapphire_ring_silver"] = {
		label = "Sapphire Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring_silver.png",
		}
	},

	["glass_pinotgrigio"] = {
		label = "Glass of Pinot Grigio",
		weight = 1000,
		stack = true,
		close = true,
		description = "One should always be drunk. Thats all that matters.",
		client = {
			image = "glass_pinotgrigio.png",
		}
	},

	["emerald_necklace"] = {
		label = "Emerald Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace.png",
		}
	},

	["rabbitfood"] = {
		label = "Veggie Salad",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "rabbitfood.png",
		}
	},

	["dunkinamericano"] = {
		label = "Dunkin Americano",
		weight = 50,
		stack = false,
		close = true,
		description = "Dunkin Americano",
		client = {
			image = "DunkinAmericano.png",
		}
	},

	["axleparts"] = {
		label = "Axle Parts",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "axleparts.png",
		}
	},

	["dirty_plate"] = {
		label = "Dirty Plate",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty dinner plate!",
		client = {
			image = "dirty_plate.png",
		}
	},

	["taserammo"] = {
		label = "Taser Cartridges",
		weight = 3000,
		stack = true,
		close = true,
		description = "Special Cartridge for a taser",
		client = {
			image = "taserammo.png",
		}
	},

	["weed_amnesia_seed_f"] = {
		label = "Amnesia: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized amnesia seed.",
		client = {
			image = "weed_amnesia_seed_f.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect.",
		client = {
			image = "lawyerpass.png",
		}
	},

	["marijuana_crop_high"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "high grade harvested marijuana crop",
		client = {
			image = "marijuana_crop_high.png",
		}
	},

	["earthbadge"] = {
		label = "Earth Badge",
		weight = 0,
		stack = true,
		close = false,
		description = "8/8 for Trophy Badge",
		client = {
			image = "earthBadge.png",
		}
	},

	["gummy_belt"] = {
		label = "Herrer Belts",
		weight = 4,
		stack = true,
		close = true,
		description = "Sour Belts with a Twist",
		client = {
			image = "ww_rainbowbelts.png",
		}
	},

	["raw_ham"] = {
		label = "Raw Ham",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_ham.png",
		}
	},

	["toolbox"] = {
		label = "Toolbox",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for Performance part removal",
		client = {
			image = "toolbox.png",
		}
	},

	["burger-moneyshot"] = {
		label = "Moneyshot",
		weight = 300,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_money-shot.png",
		}
	},

	["mewv"] = {
		label = "Mew V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "mewv.png",
		}
	},

	["prisonjuice"] = {
		label = "Orange Juice",
		weight = 1000,
		stack = true,
		close = false,
		description = "Regular Orange Juice",
		client = {
			image = "prisonjuice.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 50,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something.",
		client = {
			image = "ironplate.png",
		}
	},

	["petgroomingkit"] = {
		label = "Pet Grooming Kit",
		weight = 1000,
		stack = false,
		close = true,
		description = "Pet Grooming Kit",
		client = {
			image = "petgroomingkit.png",
		}
	},

	["rednails"] = {
		label = "Red Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Red Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["logger"] = {
		label = "Logger Beer",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "logger.png",
		}
	},

	["funkopop_voldemort"] = {
		label = "Voldemort Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Voldemort Funkopop Toy",
		client = {
			image = "funkopop_voldemort.png",
		}
	},

	["skin_deer"] = {
		label = "Deer Hide",
		weight = 950,
		stack = true,
		close = true,
		description = "Deer hide.",
		client = {
			image = "skin_deer.png",
		}
	},

	["slowpoke"] = {
		label = "Slowpoke",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "slowpoke.png",
		}
	},

	["spoiler0"] = {
		label = "Stock Spoiler",
		weight = 7500,
		stack = true,
		close = true,
		description = "Stock Spoiler",
		client = {
			image = "spoiler0.png",
		}
	},

	["irishcoffee"] = {
		label = "Irish Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of irish coffee.",
		client = {
			image = "irishcoffee.png",
		}
	},

	["diamond_necklace_silver"] = {
		label = "Diamond Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace_silver.png",
		}
	},

	["payticket"] = {
		label = "Receipt",
		weight = 150,
		stack = true,
		close = false,
		description = "Cash these in at the bank!",
		client = {
			image = "ticket.png",
		}
	},

	["mrhappy"] = {
		label = "Mr Happy",
		weight = 50,
		stack = false,
		close = true,
		description = "Mr Happy",
		client = {
			image = "mrhappy.png",
		}
	},

	["lemon"] = {
		label = "Lemon",
		weight = 40,
		stack = true,
		close = false,
		description = "Lemon!",
		client = {
			image = "lemon.png",
		}
	},

	["whiteruntzblunt"] = {
		label = "WhiteRuntzBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "whiteruntzblunt.png",
		}
	},

	["largemilkshake"] = {
		label = "Large Milkshake",
		weight = 50,
		stack = false,
		close = true,
		description = "Large Milkshake",
		client = {
			image = "largemilkshake.png",
		}
	},

	["pickle"] = {
		label = "Pickle",
		weight = 200,
		stack = true,
		close = true,
		description = "A jar of Pickles",
		client = {
			
			image = "pickle.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing lol",
		client = {
			image = "tunerlaptop.png",
		}
	},

	["weed_og-kush_joint"] = {
		label = "OG-Kush: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest og-kush!",
		client = {
			image = "weed_og-kush_joint.png",
		}
	},

	["handcuffkey"] = {
		label = "Handcuff Key",
		weight = 50,
		stack = false,
		close = true,
		description = "Good for getting a person out of cuffs",
		client = {
			image = "handcuffkey.png",
		}
	},

	["wet_black_phone"] = {
		label = "Wet Black Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?",
		client = {
			image = "wet_black_phone.png",
		}
	},

	["dvrcocktail"] = {
		label = "DVR Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "dvrcocktail.png",
		}
	},

	["towing_rope"] = {
		label = "Tow Rope",
		weight = 100,
		stack = true,
		close = false,
		description = "Lets tow It",
		client = {
			image = "towing_rope.png",
		}
	},

	["aceticacid"] = {
		label = "Acetic Acid",
		weight = 1000,
		stack = true,
		close = true,
		description = "Acetic Acid is a clear colourless liquid which has a pungent, vinegar-like odour.",
		client = {
			image = "aceticacid.png",
		}
	},

	["chickennuggets"] = {
		label = "Chicken Nuggets",
		weight = 0,
		stack = true,
		close = true,
		description = "Chicken Nuggets..",
		client = {
			image = "chickennuggets.png",
		}
	},

	["casino_bluechip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Roulette Chip",
		client = {
			image = "casino_bluechip.png",
		}
	},

	["suspension4"] = {
		label = "Suspension Upgrade S",
		weight = 5700,
		stack = true,
		close = true,
		description = "Suspension Upgrade 4",
		client = {
			image = "race_suspension.png",
		}
	},

	["ergo"] = {
		label = "Ergometrine Tartrate",
		weight = 400,
		stack = true,
		close = false,
		description = "Medication used to treat or prevent a certain type of headache (vascular headaches such as migraine headaches and cluster headaches)",
		client = {
			image = "ergo.png",
		}
	},

	["mwbcburger"] = {
		label = "Microwave Bacon Burger",
		weight = 300,
		stack = true,
		close = true,
		description = "A microwavable bacon cheeseburger!",
		client = {
			image = "mwbcburger.png",
		}
	},

	["olives"] = {
		label = "Olives",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "olives.png",
		}
	},

	["chair77"] = {
		label = "Yellow Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair77.png",
		}
	},

	["pdbadge"] = {
		label = "Police Badge",
		weight = 0,
		stack = true,
		close = true,
		description = "Police Badge.",
		client = {
			image = "badge.png",
		}
	},

	["chair85"] = {
		label = "Wine Red Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair85.png",
		}
	},

	["capricciosabox"] = {
		label = "Boxed Capriccosa",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["coke"] = {
		label = "Coke",
		weight = 1000,
		stack = true,
		close = true,
		description = "package of cocaine,.",
		client = {
			image = "coke.png",
		}
	},

	["maize_sack"] = {
		label = "Maize Sack",
		weight = 5000,
		stack = true,
		close = false,
		description = "A sack of maize ready for selling!",
		client = {
			image = "maize_sack.png",
		}
	},

	["prisonwine"] = {
		label = "Pruno Mix",
		weight = 1000,
		stack = true,
		close = false,
		description = "You should ferment this to get a good buzz",
		client = {
			image = "prisonwine.png",
		}
	},

	["casino_vip"] = {
		label = "V.I.P Membership",
		weight = 500,
		stack = false,
		close = false,
		description = "Diamond Casino V.I.P Card",
		client = {
			image = "casino_vip.png",
		}
	},

	["slaughteredchicken"] = {
		label = "slaughteredchicken",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "slaughteredchicken.png",
		}
	},

	["pd_screwdriver"] = {
		label = "Screwdriver",
		weight = 1,
		stack = true,
		close = true,
		description = "Required to install or remove Vehicle Tracking Devices",
		client = {
			image = "screwdriver.png",
		}
	},

	["weed_skunk_seed_m"] = {
		label = "Skunk: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male skunk seed!",
		client = {
			image = "weed_skunk_seed_m.png",
		}
	},

	["nuclear"] = {
		label = "nuclear",
		weight = 500,
		stack = false,
		close = true,
		description = "nuclear",
		client = {
			image = "stopsign.png",
		}
	},

	["noodlebowl"] = {
		label = "Bowl of Noodles",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "noodlebowl.png",
		}
	},

	["emptybaggy"] = {
		label = "Resealable Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "ww_baggie.png",
		}
	},

	["cplate"] = {
		label = "Fish Plate",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A Catfish Plate",
		client = {
			
			image = "cplate.png",
		}
	},

	["rattata"] = {
		label = "Rattata",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "rattata.png",
		}
	},

	["kangaskhan"] = {
		label = "Kangaskhan",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "kangaskhan.png",
		}
	},

	["dslrcamera"] = {
		label = "PD Camera",
		weight = 1000,
		stack = false,
		close = true,
		description = "DSLR Camera, with cloud uplink.. cool right?",
		client = {
			image = "dslrcamera.png",
		}
	},

	["kuz_plasmacutter"] = {
		label = "Underwater Plasma cutter",
		weight = 2500,
		stack = false,
		close = false,
		description = "Underwater Plasma Cutter",
		client = {
			image = "kuz_plasmacutter.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["thraxogblunt"] = {
		label = "ThraxOgBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "thraxogblunt.png",
		}
	},

	["debarkedlog"] = {
		label = "Debarked Log",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "debarkedlog.png",
		}
	},

	["origami13"] = {
		label = "Origami Turkey",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami13.png",
		}
	},

	["wafflepotatoefries"] = {
		label = "Waffle Potatoe fries",
		weight = 50,
		stack = false,
		close = true,
		description = "Waffle Potatoe fries",
		client = {
			image = "WafflePotatoefries.png",
		}
	},

	["roof"] = {
		label = "Vehicle Roof",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "roof.png",
		}
	},

	["chair45"] = {
		label = "Dark Brown Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair45.png",
		}
	},

	["chair15"] = {
		label = "Old Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair15.png",
		}
	},

	["magic_mushroom"] = {
		label = "Magic Mushroom",
		weight = 20,
		stack = true,
		close = false,
		description = "A handful of magic mushrooms!",
		client = {
			image = "magic_mushroom.png",
		}
	},

	["jackherrer_bud"] = {
		label = "Jack Herrer Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "Jack Herrer Bud",
		client = {
			image = "ww_jackherrer_bud.png",
		}
	},

	["tillie"] = {
		label = "Tillie Mae",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "The Tillie Mae Special",
		client = {
			image = "tillie.png",
		}
	},

	["rawbeef"] = {
		label = "Raw Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "This butter sure do smell funny",
		client = {
			image = "rawbeef.png",
		}
	},

	["glass_mountaindew"] = {
		label = "Glass of Mountain Dew",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of mountain dew!",
		client = {
			image = "glass_mountaindew.png",
		}
	},

	["crisps"] = {
		label = "Crisps",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chips.png",
		}
	},

	["marijuana_phone"] = {
		label = "Burner Phone",
		weight = 0,
		stack = true,
		close = true,
		description = "Burner phone used to sell eights",
		client = {
			image = "marijuana_phone.png",
		}
	},

	["lsd"] = {
		label = "LSD",
		weight = 5,
		stack = false,
		close = true,
		description = "Bag",
		client = {
			image = "lsd.png",
		}
	},

	["bplate"] = {
		label = "Brisket Plate",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A Brisket Plate",
		client = {
			
			image = "bplate.png",
		}
	},

	["fishingkey"] = {
		label = "Corroded Key",
		weight = 100,
		stack = true,
		close = true,
		description = "A weathered key that looks usefull",
		client = {
			image = "fishingkey.png",
		}
	},

	["chair3"] = {
		label = "Metal Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair3.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Casino Chips",
		client = {
			image = "casinochips.png",
		}
	},

	["chicknstrips"] = {
		label = "Chick N Strips",
		weight = 0,
		stack = true,
		close = true,
		description = "Chick N Strips...",
		client = {
			image = "chicknstrips.png",
		}
	},

	["grilledcheese"] = {
		label = "Grilled Cheese",
		weight = 0,
		stack = true,
		close = true,
		description = "grilledcheese..",
		client = {
			image = "grilledcheese.png",
		}
	},

	["blastoise"] = {
		label = "Blastoise",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Cascade Badge - Ultra Rare",
		client = {
			image = "blastoise.png",
		}
	},

	["vegetariana"] = {
		label = "Vegetariana",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vegetariana.png",
		}
	},

	["marowak"] = {
		label = "Marowak",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "marowak.png",
		}
	},

	["chair98"] = {
		label = "Red/Green Gamer Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair98.png",
		}
	},

	["cigarelegit"] = {
		label = "American Cigar",
		weight = 10,
		stack = true,
		close = false,
		description = "Smoking KILLS",
		client = {
			image = "cigareusa.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest ak47 flower!",
		client = {
			image = "weed_ak47.png",
		}
	},

	["chickenfillet"] = {
		label = "Chicken fillet",
		degrade = 5760,
        decay = true,
		weight = 50,
		stack = true,
		close = true,
		description = "Chicken fillet",
		client = {
			image = "chickenfillet.png",
		}
	},

	["margheritabox"] = {
		label = "Boxed Margherita",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["cigarette"] = {
		label = "Cigarette",
		weight = 250,
		stack = true,
		close = true,
		description = "Smokeable Tobacco",
		client = {
			image = "cigarette.png",
		}
	},

	["chair32"] = {
		label = "Luxury Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair32.png",
		}
	},

	["sandslash"] = {
		label = "Sandslash",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sandslash.png",
		}
	},

	["hd_cups"] = {
		label = "Paper Cup",
		weight = 0,
		stack = true,
		close = false,
		description = "Lean cups.",
		client = {
			image = "hd_cups.png",
		}
	},

	["mwburger"] = {
		label = "Microwave Burger",
		weight = 300,
		stack = true,
		close = true,
		description = "A microwavable burger!",
		client = {
			image = "mwburger.png",
		}
	},
--R14 EVIDENCE
	['filled_evidence_bag'] = {
		consume = 0.0,
		label = 'Collected Evidence',
		weight = 0,
		stack = false,
		description = 'This is police evidence.',
		server = {export = 'r14-evidence.filled_evidence_bag'},
	},


	['empty_evidence_bag'] = {
		consume = 0.0,
		label = 'Empty Evidence Bag',
		weight = 0,
		stack = true,
		description = 'This is an evidence bag.',
	},

	['nikon'] = {
		consume = 0.0,
		label = 'Nikoff G600',
		weight = 500,
		stack = false,
		description = 'Caught in 4k',
		server = {export = 'r14-evidence.nikon'},
	},

	['sdcard'] = {
		consume = 0.0,
		label = 'SD Card',
		weight = 100,
		stack = false,
		description = 'People still use these??',
		server = {export = 'r14-evidence.sdcard'},
	},

	['gsrtestkit'] = {
		consume = 0.0,
		label = 'GSR Field Test Kit',
		weight = 100,
		stack = true,
		close = true,
		description = "A field GSR test kit containing several test strips",
		server = {export = 'r14-evidence.gsrtestkit'},
	},

	['dnatestkit'] = {
		consume = 0.0,
		label = 'DNA Field Swab Kit',
		weight = 100,
		stack = true,
		close = true,
		description = "A field DNA swab kit containing several vials and swabs",
		server = {export = 'r14-evidence.dnatestkit'},
	},


	['drugtestkit'] = {
		consume = 0.0,
		label = 'DNA Field Swab Kit',
		weight = 100,
		stack = true,
		description = 'A multipanel oral drug test kit like the one your lame dad or boss buys... but for cops.',
		server = {export = 'r14-evidence.drugtestkit'},
	},

	['breathalyzer'] = {
		consume = 0.0,
		label = 'Breathalyzer',
		weight = 200,
		stack = true,
		close = true,
		description = "A vintage 2000's WiWang breathalyzer engraved Property of LSPD",
		server = {export = 'r14-evidence.breathalyzer'},
	},

	['fingerprintreader'] = {
		consume = 0.0,
		label = 'Pro Tech XFR8001',
		weight = 200,
		stack = false,
		close = true,
		description = "A Pro Tech mobile fingerprint reader that looks like it's seen better days, currently stuck in french.",
		server = {export = 'r14-evidence.fingerprintreader'},
	},

	['accesstool'] = {
		consume = 0.0,
		label = 'Access Tool',
		weight = 200,
		stack = false,
		description = 'Snap into an access tool.',
		server = {export = 'r14-evidence.accesstool'},
	},

	['fingerprintkit'] = {
		consume = 0.0,
		label = 'Fingerprint Kit',
		weight = 1000,
		stack = true,
		close = true,
		description = "A small kit that includes fingerprint dust, chemicals, and a brush for developing fingerprints",
	},

	['mikrosil'] = {
		consume = 0.0,
		label = 'Mikrosil',
		weight = 200,
		stack = true,
		close = true,
		description = "Two tubes of silicon casting material used to lift fingerprints from irregular surfaces",
	},

	['fingerprinttape'] = {
		consume = 0.0,
		label = 'Fingerprint Tape',
		weight = 200,
		stack = true,
		close = true,
		description = "Extra clear tape used to lift fingerprints from smooth, nonporous surfaces",
	},

	['blox'] = {
		consume = 0.0,
		label = 'Blox Multisurface',
		weight = 200,
		stack = true,
		close = true,
		description = 'Kills everything!',
	},

	['microfibercloth'] = {
		consume = 0.0,
		label = 'Microfiber Cloth',
		weight = 200,
		stack = true,
		description = 'Polyester, but fluffy',
		server = {export = 'r14-evidence.microfibercloth'},
		allowArmed = true,
	},

	["cookedsteakpie"] = {
		label = "Steak Pie",
		weight = 300,
		stack = true,
		close = true,
		description = "A cooked steak pie!",
		client = {
			image = "cookedsteakpie.png",
		}
	},

	["cookedchickenpie"] = {
		label = "Chicken Pie",
		weight = 300,
		stack = true,
		close = true,
		description = "A cooked chicken and mushroom pie!",
		client = {
			image = "cookedchickenpie.png",
		}
	},

	["cocaleaf"] = {
		label = "Cocaine Leaf",
		weight = 200,
		stack = true,
		close = false,
		description = "Makes that premium nose candy!",
		client = {
			image = "cocaineleaf.png",
		}
	},

	["peyote_seed"] = {
		label = "Peyote Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of peyote seeds!",
		client = {
			image = "peyote_seed.png",
		}
	},

	["vodka_ferm"] = {
		label = "Fermented Vodka",
		weight = 5000,
		stack = true,
		close = false,
		description = "A bucket of fermented vodka!",
		client = {
			image = "vodka_ferm.png",
		}
	},

	["mankey"] = {
		label = "Mankey",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mankey.png",
		}
	},

	["muk"] = {
		label = "Muk",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "muk.png",
		}
	},

	["ruby_earring_silver"] = {
		label = "Ruby Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring_silver.png",
		}
	},

	["chopkit"] = {
		label = "Special Toolkit",
		weight = 3000,
		stack = false,
		close = true,
		description = "A special toolkit.",
		client = {
			image = "chopkit.png",
		}
	},

	["methkey"] = {
		label = "Lab Access Key",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with \"Walter\" Engraved on the Back...",
		client = {
			image = "methcard.png",
		}
	},

	["egg"] = {
		label = "Fresh Egg",
		weight = 50,
		stack = true,
		close = false,
		description = "Raw Fresh Egg",
		client = {
			image = "egg.png",
		}
	},

	["goldingot"] = {
		label = "Gold Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldingot.png",
		}
	},

	["blueberry"] = {
		label = "Blueberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "blueberry.png",
		}
	},

	["ogstory"] = {
		label = "OG STORY (INDICA)",
		weight = 50,
		stack = false,
		close = true,
		description = "OG STORY (INDICA)",
		client = {
			image = "joint.png",
		}
	},

	["mcpollo"] = {
		label = "mcpollo",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "mcpollo.png",
		}
	},

	["chair40"] = {
		label = "Grey Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair40.png",
		}
	},

	["cookedmwcburger"] = {
		label = "Cheeseburger",
		weight = 300,
		stack = true,
		close = true,
		description = "A cooked microwavable cheeseburger!",
		client = {
			image = "cookedmwcburger.png",
		}
	},

	["cookedcheesepie"] = {
		label = "Cheese Pie",
		weight = 300,
		stack = true,
		close = true,
		description = "A cooked cheese and onion pie!",
		client = {
			image = "cookedcheesepie.png",
		}
	},

	["aquarius"] = {
		label = "aquarius",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "aquarius.png",
		}
	},

	["origami14"] = {
		label = "Origami Eagle",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami14.png",
		}
	},

	["indica"] = {
		label = "BANANA OG (INDICA)",
		weight = 50,
		stack = false,
		close = true,
		description = "BANANA OG (INDICA)",
		client = {
			image = "joint.png",
		}
	},

	["skin_pig"] = {
		label = "Pig Skin",
		weight = 850,
		stack = true,
		close = true,
		description = "Pig skin.",
		client = {
			image = "skin_pig.png",
		}
	},

	["horsea"] = {
		label = "Horsea",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "horsea.png",
		}
	},

	["marijuana_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 0,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "marijuana_nutrition.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 50,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["cokebaggy"] = {
		label = "Coke Baggy",
		weight = 0,
		stack = true,
		close = true,
		description = "For the quick pick-ups.",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["rainbowbadge"] = {
		label = "RainbowBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Rainbow Badge",
		client = {
			image = "rainbowBadge.png",
		}
	},

	["chair50"] = {
		label = "Plastic Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair50.png",
		}
	},

	["chair1"] = {
		label = "Black Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair1.png",
		}
	},

	["silverore"] = {
		label = "Silver Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Silver Ore",
		client = {
			image = "silverore.png",
		}
	},

	["catfish"] = {
		label = "Catfish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "catfish.png",
		}
	},

	["tomatopaste"] = {
		label = "tomato Paste",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomatopaste.png",
		}
	},

	["glass_barolo"] = {
		label = "Glass of Barolo",
		weight = 1000,
		stack = true,
		close = true,
		description = "The King of Wines and the Wine of Kings.",
		client = {
			image = "glass_barolo.png",
		}
	},

	["pikachuv"] = {
		label = "Pikachu V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "pikachuv.png",
		}
	},

	["sodiumbicarbonate"] = {
		label = "Baking Soda",
		weight = 1000,
		stack = true,
		close = true,
		description = "Baking soda ey? What you cooking?",
		client = {
			image = "sodiumbicarbonate.png",
		}
	},

	["b52"] = {
		label = "B-52",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "B-52 Cocktail",
		client = {
			image = "b52.png",
		}
	},

	["opmcocktail"] = {
		label = "One Punch Man Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "opmcocktail.png",
		}
	},

	["basil"] = {
		label = "Basil",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "basil.png",
		}
	},

	["burger-tomato"] = {
		label = "Tomato",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_tomato.png",
		}
	},

	["hd_sprite"] = {
		label = "Bottled Sprite",
		weight = 0,
		stack = true,
		close = false,
		description = "20oz Sprite.",
		client = {
			image = "hd_sprite.png",
		}
	},

	["chicken"] = {
		label = "Cooked Chicken",
		weight = 200,
		stack = true,
		close = false,
		description = "Cooked Chicken",
		client = {
			image = "chicken.png",
		}
	},

	["mtlion4"] = {
		label = "Mountain Lion Carcass",
		weight = 4000,
		stack = true,
		close = false,
		description = "This looks like a protected mountain lion.",
		client = {
			image = "mtlion4.png",
		}
	},

	["hybridpurple"] = {
		label = "PURPLE RAIN (HYBRID)",
		weight = 50,
		stack = false,
		close = true,
		description = "PURPLE RAIN (HYBRID)",
		client = {
			image = "joint.png",
		}
	},

	["pd_dirty_magic_mushroom"] = {
		label = "Dirty Gleaming Mushroom",
		weight = 300,
		stack = true,
		close = true,
		description = "I should probably clean this first",
		client = {
			image = "magic_mushroom.png",
		}
	},

	["cookedmeatpie"] = {
		label = "Meat Pie",
		weight = 300,
		stack = true,
		close = true,
		description = "A cooked meat pie!",
		client = {
			image = "cookedmeatpie.png",
		}
	},

	["basketball"] = {
		label = "Basketball",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "basketball.png",
		}
	},

	['basketball_hoop'] = {
		label = 'Basketball Hoop',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_basketball.basketball_hoop',
		},
	},

	["creampie"] = {
		label = "Creampie",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Apple Pie",
		client = {
			
			image = "burger-creampie.png",
		}
	},

	["seaking"] = {
		label = "Seaking",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seaking.png",
		}
	},

	["rhyhorn"] = {
		label = "Rhyhorn",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Boulder Badge",
		client = {
			image = "rhyhorn.png",
		}
	},

	["cookedmwburger"] = {
		label = "Burger",
		weight = 300,
		stack = true,
		close = true,
		description = "A cooked microwavable burger!",
		client = {
			image = "cookedmwburger.png",
		}
	},

	["lime"] = {
		label = "Lime",
		weight = 200,
		stack = true,
		close = false,
		description = "A Lime.",
		client = {
			image = "lime.png",
		}
	},

	["granddaddypurple_bud"] = {
		label = "Grand Daddy Purple Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "Grand Daddy Purple Bud",
		client = {
			image = "ww_granddaddypurple_bud.png",
		}
	},

	["georgiapie"] = {
		label = "Georgia Pie",
		weight = 50,
		stack = false,
		close = true,
		description = "Georgia Pie",
		client = {
			image = "GeorgiaPie.png",
		}
	},

	["bb-flavoring"] = {
		label = "Bluebuerry Flavoring",
		weight = 200,
		stack = true,
		close = true,
		description = "Blueberry flavoring for Bubble Tea!",
		client = {
			image = "bb-flavoring.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["bun"] = {
		label = "Bun",
		weight = 0,
		stack = true,
		close = true,
		description = "Bun",
		client = {
			image = "bun.png",
		}
	},

	["icecream"] = {
		label = "Ice Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "Ice Cream.",
		client = {
			image = "icecream.png",
		}
	},

	["hydrochloricacid"] = {
		label = "Hydrochloric Acid",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "chemical1.png",
		}
	},

	["weedseed"] = {
		label = "WeedSeed",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "weedseed.png",
		}
	},

	["weed_white-widow_crop"] = {
		label = "White-Widow: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest white-widow flower!",
		client = {
			image = "weed_white-widow_crop.png",
		}
	},

	["cakemix8th"] = {
		label = "Cake Mix 8th",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed bag",
		client = {
			image = "cakemix8th.png",
		}
	},

	["arbok"] = {
		label = "Arbok",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "arbok.png",
		}
	},

	["meatpie"] = {
		label = "Microwavable Meat Pie",
		weight = 400,
		stack = true,
		close = true,
		description = "A microwavable meat pie!",
		client = {
			image = "meatpie.png",
		}
	},

	["stripedbass"] = {
		label = "Striped Bass",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "stripedbass.png",
		}
	},

	["glass_whiskey"] = {
		label = "Glass of Whiskey",
		weight = 200,
		stack = true,
		close = true,
		description = "A small glass of whiskey!",
		client = {
			image = "glass_whiskey.png",
		}
	},

	["weed_ak47_crop"] = {
		label = "AK47: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest ak47 flower!",
		client = {
			image = "weed_ak47_crop.png",
		}
	},

	["ecola"] = {
		label = "eCola",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ecola.png",
		}
	},

	["license_plate"] = {
		label = "Plate",
		weight = 0,
		stack = false,
		close = false,
		description = "Plate for vehicle",
		client = {
			image = "plate.png",
		}
	},

	["vegaalootikki"] = {
		label = "Aaloo tikki",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "vegaalootikki.png",
		}
	},

	["greenpepper"] = {
		label = "Green Pepper",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "greenpepper.png",
		}
	},

	["wet_green_phone"] = {
		label = "Wet Green Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "wet_green_phone.png",
		}
	},

	["hd_mixedsprite"] = {
		label = "Mixed Sprite",
		weight = 0,
		stack = true,
		close = false,
		description = "1ml Cough Syrup",
		client = {
			image = "hd_mixedsprite.png",
		}
	},

	["ammonia"] = {
		label = "Ammonia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ammonia is a colorless, highly irritating gas with a pungent, suffocating odor.",
		client = {
			image = "ammonia.png",
		}
	},

	["photo"] = {
		label = "Saved Pic",
		weight = 500,
		stack = false,
		close = true,
		description = "Brand new picture saved!",
		client = {
			image = "photo.png",
		}
	},

	["m45a1_mag1"] = {
		label = "M45A1 Mag 1",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "m45a1_mag1.png",
		}
	},

	["empty_baggie"] = {
		label = "Empty Baggie",
		weight = 0,
		stack = true,
		close = false,
		description = "Empty Baggie to fill",
		client = {
			image = "empty_baggie.png",
		}
	},

	["funkopop_snape"] = {
		label = "Severus Snape Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Severus Snape Funkopop Toy",
		client = {
			image = "funkopop_snape.png",
		}
	},

	["origami6"] = {
		label = "Origami Pig",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami6.png",
		}
	},

	["sulfuricacid_bottle"] = {
		label = "sulfuricacid_bottle",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real fast.",
		client = {
			image = "sulfuricacid_bottle.png",
		}
	},

	["laptop_green"] = {
		label = "Laptop",
		weight = 2500,
		stack = false,
		close = true,
		description = "Illegal Hacking Laptop",
		client = {
			image = "laptop_green.png",
		}
	},

	["cerealmilk8th"] = {
		label = "Cereal Milk 8th",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed bag",
		client = {
			image = "cerealmilk8th.png",
		}
	},

	["amaretto"] = {
		label = "Amaretto",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Amaretto",
		client = {
			image = "amaretto.png",
		}
	},

	["vodka_mash"] = {
		label = "Vodka Mash",
		weight = 5000,
		stack = true,
		close = false,
		description = "A bucket of vodka mash!",
		client = {
			image = "vodka_mash.png",
		}
	},

	["raw_beef"] = {
		label = "Raw Beef",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_beef.png",
		}
	},

	["ruby_ring"] = {
		label = "Ruby Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring.png",
		}
	},

	["weedle"] = {
		label = "Weedle",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weedle.png",
		}
	},

	["peach"] = {
		label = "Peach",
		weight = 200,
		stack = true,
		close = true,
		description = "A peach",
		client = {
			
			image = "peach.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex_watch.png",
		}
	},

	["chickenwings"] = {
		label = "Chicken Wings",
		weight = 1,
		stack = true,
		close = true,
		description = "chickenwings",
		client = {
			image = "chickenwings.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["porkchop"] = {
		label = "Pork Chop",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "porkchop.png",
		}
	},

	["chair38"] = {
		label = "Ol' Rocking Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair38.png",
		}
	},

	["iflag"] = {
		label = "Irish Flag",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Irish Flag Cocktail",
		client = {
			image = "iflag.png",
		}
	},

	["advanced_miningrig"] = {
		label = "Advanced Mining Rig",
		weight = 15000,
		stack = false,
		close = false,
		description = "An Advanced Mining Rig!",
		client = {
			image = "quantum_cpu.png",
		}
	},

	["marijuana_3.5_low"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = false,
		close = true,
		description = "3.5g low grade marijuana",
		client = {
			image = "marijuana_3.5_low.png",
		}
	},

	["rawwedges"] = {
		label = "Pre cut Raw Wedges",
		weight = 200,
		stack = true,
		close = false,
		description = "Bag of pre cut raw Wedges",
		client = {
			image = "rawwedges.png",
		}
	},

	["duffel-bag"] = {
		label = "Bag",
		weight = 5000,
		stack = false,
		close = false,
		description = "im bag im baag im bag",
		client = {
			image = "duffel.png",
		}
	},

	["yukoncigs"] = {
		label = "Yukon Cigarettes",
		weight = 250,
		stack = false,
		close = true,
		description = "Pack of Menthol Cigarettes, Made in USA",
		client = {
			image = "yukoncigs.png",
		}
	},

	["chair25"] = {
		label = "Red Plastic Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair25.png",
		}
	},

	["red"] = {
		label = "Xenons - Red",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "red.png",
		}
	},

	["ponyta"] = {
		label = "Ponyta",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ponyta.png",
		}
	},

	["charizardv"] = {
		label = "Charizard V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "charizardv.png",
		}
	},

	["chair19"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair19.png",
		}
	},

	["chair88"] = {
		label = "Black Deco Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair88.png",
		}
	},

	["icream"] = {
		label = "Irish Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Irish Cream Liquer",
		client = {
			image = "icream.png",
		}
	},

	["ruby_ring_silver"] = {
		label = "Ruby Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring_silver.png",
		}
	},

	["windowtint3"] = {
		label = "Window Tint Stage 3",
		weight = 2200,
		stack = true,
		close = true,
		description = "Window Tint Stage 3",
		client = {
			image = "stockwindowtint3.png",
		}
	},

	["25ctstonechain"] = {
		label = "Iced Out Chain",
		weight = 1000,
		stack = true,
		close = true,
		description = "Custom Chain Sum Light...",
		client = {
			image = "25ctstonechain.png",
		}
	},

	["greenchair"] = {
		label = "Green Chair",
		weight = 50,
		stack = true,
		close = true,
		description = "Green Chair",
		client = {
			image = "greenchair.png",
		}
	},

	["poliwag"] = {
		label = "Poliwag",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "poliwag.png",
		}
	},

	["whiskeysmash"] = {
		label = "Whiskey Smash",
		weight = 400,
		stack = true,
		close = true,
		description = "Whiskey Smash!",
		client = {
			image = "whiskeysmash.png",
		}
	},

	["chair5"] = {
		label = "Old Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair5.png",
		}
	},

	["ruby_necklace"] = {
		label = "Ruby Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace.png",
		}
	},

	["marijuana_trowel"] = {
		label = "Trowel",
		weight = 0,
		stack = true,
		close = true,
		description = "Small handheld garden shovel",
		client = {
			image = "marijuana_trowel.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A Diamond that shimmers",
		client = {
			image = "diamond.png",
		}
	},

	["blackdiamond"] = {
		label = "Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A Black Diamond that shimmers",
		client = {
			image = "blackdiamond.png",
		}
	},

	["boar1"] = {
		label = "Boar Carcass",
		weight = 3000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "boar1.png",
		}
	},

	["casino_coke"] = {
		label = "Casino Kofola",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Kofola",
		client = {
			image = "casino_coke.png",
		}
	},

	["explosive"] = {
		label = "Explosive",
		weight = 5000,
		stack = true,
		close = true,
		description = "An improvised explosive of fireworks and thermite",
		client = {
			image = "explosive.png",
		}
	},

	["pisswasser2"] = {
		label = "Pißwasser Stout",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pisswaser2.png",
		}
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal..",
		client = {
			image = "drill.png",
		}
	},

	["welcomegift"] = {
		label = "Welcome Gift",
		weight = 0,
		stack = false,
		close = true,
		description = "Awarded to every player as a thanks for playing!",
		client = {
			image = "kadoo.png",
		}
	},

	["vutacos"] = {
		label = "Tacos",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Tacos",
		client = {
			
			image = "tacos.png",
		}
	},

	["brussian"] = {
		label = "Black Russian",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Black Russian Cocktail",
		client = {
			image = "brussian.png",
		}
	},

	["fearow"] = {
		label = "Fearow",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fearow.png",
		}
	},

	["chair103"] = {
		label = "Green Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair103.png",
		}
	},

	["acetone"] = {
		label = "Acetone",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "chemical2.png",
		}
	},

	["raw_pork"] = {
		label = "Raw Pork",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pork.png",
		}
	},

	["engine4"] = {
		label = "Engine Upgrade S",
		weight = 5000,
		stack = true,
		close = true,
		description = "Engine Upgrade 4",
		client = {
			image = "engine_parts_s.png",
		}
	},

	["salami"] = {
		label = "Salami",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "salami.png",
		}
	},

	["hamburgesa"] = {
		label = "hamburgesa",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "hamburgesa.png",
		}
	},

	["longisland"] = {
		label = "Long Island Ice tea",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Long Island Ice Tea",
		client = {
			image = "longisland.png",
		}
	},

	["currybeef"] = {
		label = "Curry beef",
		weight = 1000,
		stack = true,
		close = true,
		description = "Curry Beef",
		client = {
			image = "currybeeficon.png",
		}
	},

	["spoiler1"] = {
		label = "Custom Spoiler",
		weight = 4000,
		stack = true,
		close = true,
		description = "Custom Spoiler",
		client = {
			image = "spoiler1.png",
		}
	},

	["mangohabanerowings"] = {
		label = "Mango Habanero Wings",
		weight = 1,
		stack = true,
		close = true,
		description = "mangohabanerowings",
		client = {
			image = "mangohabanerowings.png",
		}
	},

	["psilocybin_seed"] = {
		label = "Psilocybin Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of psilocybin seeds!",
		client = {
			image = "psilocybin_seed.png",
		}
	},

	["wingstopdrink"] = {
		label = "Wing Stop Drink",
		weight = 1,
		stack = true,
		close = true,
		description = "wingstopdrink",
		client = {
			image = "wingstopdrink.png",
		}
	},

	["bootlegvodka"] = {
		label = "Bootleg Vodka",
		weight = 500,
		stack = true,
		close = false,
		description = "A bottle of bootleg vodka!",
		client = {
			image = "bootlegvodka.png",
		}
	},

	["thinmintcookiesblunt"] = {
		label = "Thin Mint Cookies Blunt",
		weight = 0,
		stack = true,
		close = true,
		description = "Rolled Up",
		client = {
			image = "thinmintcookiesblunt.png",
		}
	},

	["fish"] = {
		label = "CatFish",
		weight = 200,
		stack = true,
		close = false,
		description = "A Catfish",
		client = {
			
			image = "fish.png",
		}
	},

	["casino_blackchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Blackjack Chip",
		client = {
			image = "casino_blackchip.png",
		}
	},

	["saltandpepper"] = {
		label = "Salt And Pepper",
		weight = 1,
		stack = true,
		close = true,
		description = "saltandpepper",
		client = {
			image = "saltandpepper.png",
		}
	},

	["chickenpie"] = {
		label = "Microwavable Chicken Pie",
		weight = 400,
		stack = true,
		close = true,
		description = "A microwavable chicken and mushroom pie!",
		client = {
			image = "chickenpie.png",
		}
	},

	["livemouse"] = {
		label = "Live Mouse",
		weight = 450,
		stack = true,
		close = false,
		description = "A mouse! A snakes favorite meal!",
		client = {
			image = "livemouse.png",
		}
	},

	["gelatti"] = {
		label = "Gelatti",
		weight = 50,
		stack = false,
		close = true,
		description = "Gelatti",
		client = {
			image = "Gelatti.png",
		}
	},

	["slicedpie"] = {
		label = "Slice of Pie",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "slicedpie.png",
		}
	},

	["drinkingredient"] = {
		label = "Drink Ingredient",
		weight = 50,
		stack = false,
		close = true,
		description = "Drink Ingredient",
		client = {
			image = "drinkingredient.png",
		}
	},

	["thraxog8th"] = {
		label = "ThraxOG8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "thraxog8th.png",
		}
	},

	["granddaddypurple_crop"] = {
		label = "Grand Daddy Purple Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "Grand Daddy Purple Crop",
		client = {
			image = "ww_granddaddypurple_crop.png",
		}
	},

	["sparkplugs"] = {
		label = "Spark Plugs",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sparkplugs.png",
		}
	},

	["skin_boar"] = {
		label = "Boar Hide",
		weight = 1250,
		stack = true,
		close = true,
		description = "Boar hide.",
		client = {
			image = "skin_boar.png",
		}
	},

	["cubone"] = {
		label = "Cubone",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cubone.png",
		}
	},

	["whiteruntz8th"] = {
		label = "WhiteRuntz8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "whiteruntz8th.png",
		}
	},

	["weed_og-kush_crop"] = {
		label = "OG-Kush: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest og-kush flower!",
		client = {
			image = "weed_og-kush_crop.png",
		}
	},

	["cappucino"] = {
		label = "Cappucino",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "cappucino.png",
		}
	},

	["chair61"] = {
		label = "Cream Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair61.png",
		}
	},

	["weed_zkittlez_joint"] = {
		label = "Zkittlez: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest zkittlez!",
		client = {
			image = "weed_zkittlez_joint.png",
		}
	},

	["dratini"] = {
		label = "Dratini",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "dratini.png",
		}
	},

	["chair24"] = {
		label = "Old White Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair24.png",
		}
	},

	["blottingpaper"] = {
		label = "Blotting Paper",
		weight = 250,
		stack = true,
		close = false,
		description = "High absorbency, neutral pH paper used for a variety of purposes.",
		client = {
			image = "blottingpaper.png",
		}
	},

	["emerald_ring"] = {
		label = "Emerald Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring.png",
		}
	},

	["whale2"] = {
		label = "Whale",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "whale2.png",
		}
	},

	["coyote2"] = {
		label = "Coyote Carcass",
		weight = 3500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coyote2.png",
		}
	},

	["psyduck"] = {
		label = "Psyduck",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Cascade Badge",
		client = {
			image = "psyduck.png",
		}
	},

	["emptyvial"] = {
		label = "Empty Vial",
		weight = 50,
		stack = true,
		close = true,
		description = "A empty sterile vial for storing liquid meds.",
		client = {
			image = "emptyvial.png",
		}
	},

	["windowtint4"] = {
		label = "Window Tint Stage 4",
		weight = 2200,
		stack = true,
		close = true,
		description = "Window Tint Stage 4",
		client = {
			image = "stockwindowtint4.png",
		}
	},

	["vulpix"] = {
		label = "Vulpix",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vulpix.png",
		}
	},

	["ifak"] = {
		label = "iFak",
		weight = 1000,
		stack = false,
		close = true,
		description = "ifak",
		client = {
			image = "ifak.png",
		}
	},

	["burger-mshakeformula"] = {
		label = "Milkshake Formula",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_icecream.png",
		}
	},

	["bscoke"] = {
		label = "BurgerShot Coke",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Cola",
		client = {
			image = "burger-softdrink.png",
		}
	},

	["timsjellydonut"] = {
		label = "Jelly Donut",
		weight = 5,
		stack = true,
		close = true,
		description = "Jelly Filled Donut from Timmies!",
		client = {
			image = "timsjellydonut.png",
		}
	},

	["victreebel"] = {
		label = "Victreebel",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Rainbow Badge",
		client = {
			image = "victreebel.png",
		}
	},

	["rx6800xt"] = {
		label = "RX 6800 XT",
		weight = 4000,
		stack = false,
		close = false,
		description = "RX 6800 XT Graphics Card",
		client = {
			image = "e2_cpu.png",
		}
	},

	["chair6"] = {
		label = "Grey Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair6.png",
		}
	},

	["burger-lettuce"] = {
		label = "Lettuce",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_lettuce.png",
		}
	},

	["timsveggies"] = {
		label = "Timmies Veggies",
		weight = 100,
		stack = true,
		close = false,
		description = "Lettuce, Tomatos and Onions",
		client = {
			image = "lettuce.png",
		}
	},

	["lemonpepperseason"] = {
		label = "Lemon Pepper Season",
		weight = 1,
		stack = true,
		close = true,
		description = "lemonpepperseason.",
		client = {
			image = "lemonpepperseason.png",
		}
	},

	["refinedpetrol"] = {
		label = "refinedpetrol",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "refinedpetrol.png",
		}
	},

	["boulderbadge"] = {
		label = "boulderbadge",
		weight = 0,
		stack = true,
		close = false,
		description = "1/8 for Trophy Badge",
		client = {
			image = "boulderBadge.png",
		}
	},

	["maui"] = {
		label = "MAUI WOWIE (SATIVA)",
		weight = 50,
		stack = false,
		close = true,
		description = "MAUI WOWIE (SATIVA)",
		client = {
			image = "joint.png",
		}
	},

	["chair48"] = {
		label = "Brown Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair48.png",
		}
	},

	["meth10g"] = {
		label = "10g Meth",
		weight = 1000,
		stack = true,
		close = false,
		description = "10 grams of meth",
		client = {
			image = "meth10g.png",
		}
	},

	["magnemite"] = {
		label = "Magnemite",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "magnemite.png",
		}
	},

	["marijuana_lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "Cheap tweaker lighter, Still does the job",
		client = {
			image = "marijuana_lighter.png",
		}
	},

	["huntingbait"] = {
		label = "Animal Bait",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "huntingbait.png",
		}
	},

	["blue"] = {
		label = "Xenons - Blue",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "blue.png",
		}
	},

	["kakuna"] = {
		label = "Kakuna",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "kakuna.png",
		}
	},

	["tomato_seed"] = {
		label = "Tomato Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of tomato seeds!",
		client = {
			image = "tomato_seed.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 50,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something.",
		client = {
			image = "copper.png",
		}
	},

	["casino_beer"] = {
		label = "Casino Beer",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Beer",
		client = {
			image = "casino_beer.png",
		}
	},

	["goldearring"] = {
		label = "Golden Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_earring.png",
		}
	},

	["drynoodles"] = {
		label = "Dry Noodles",
		weight = 1000,
		stack = true,
		close = true,
		description = "Dry Noodles",
		client = {
			image = "drynoodleicon.png",
		}
	},

	["blastoisev"] = {
		label = "Blastoise V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "blastoisev.png",
		}
	},

	["meat_dolphin"] = {
		label = "Dolphin Meat",
		weight = 850,
		stack = true,
		close = true,
		description = "Dolphin meat!",
		client = {
			image = "meat_dolphin.png",
		}
	},

	["parasect"] = {
		label = "Parasect",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "parasect.png",
		}
	},

	["cokekey"] = {
		label = "Coke Lab USB",
		weight = 5000,
		stack = true,
		close = true,
		description = "What is this USB used for?",
		client = {
			image = "usb_green.png",
		}
	},

	["cooked_ham"] = {
		label = "Cooked Ham",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_ham.png",
		}
	},

	["groundbeef"] = {
		label = "Raw Hamburger Meat",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "groundbeef.png",
		}
	},

	["mushroom"] = {
		label = "Mushroom",
		weight = 100,
		stack = false,
		close = true,
		description = "Mushroom.",
		client = {
			image = "mushroom.png",
		}
	},

	["hd_lean"] = {
		label = "Lean",
		weight = 0,
		stack = true,
		close = false,
		description = "Lean",
		client = {
			image = "hd_lean.png",
		}
	},

	["graveler"] = {
		label = "Graveler",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Boulder Badge",
		client = {
			image = "graveler.png",
		}
	},

	["pinsir"] = {
		label = "Pinsir",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pinsir.png",
		}
	},

	["burger-heartstopper"] = {
		label = "Heartstopper",
		degrade = 5760,
        decay = true,
		weight = 2500,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_the-heart-stopper.png",
		}
	},

	["alivechicken"] = {
		label = "alivechicken",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "alivechicken.png",
		}
	},

	['spray'] = {
		label = 'Spray',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_spray.spray',
		},
	},
	['spray_remover'] = {
		label = 'Spray Remover',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_spray.spray_remover',
		},
	},

	["deer3"] = {
		label = "Deer Carcass",
		weight = 3800,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "deer3.png",
		}
	},

	["raw_sausage"] = {
		label = "Raw Sausage",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_sausage.png",
		}
	},

	["chocolatecarame"] = {
		label = "Chocolate Carame",
		weight = 50,
		stack = false,
		close = true,
		description = "Chocolate Carame",
		client = {
			image = "chocolatecarame.png",
		}
	},

	["burgermeat"] = {
		label = "Burger Meat",
		degrade = 5760,
        decay = true,
		weight = 500,
		stack = true,
		close = false,
		description = "Cooked Burger Meat",
		client = {
			image = "burgermeat.png",
		}
	},

	["cutting_agent"] = {
		label = "Cutting Agent",
		weight = 100,
		stack = true,
		close = false,
		description = "Cutting agent to thin things down",
		client = {
			image = "cutting_agent.png",
		}
	},

	["boar3"] = {
		label = "Boar Carcass",
		weight = 3800,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "boar3.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "goldbar.png",
		}
	},

	["charmeleon"] = {
		label = "Charmeleon",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "charmeleon.png",
		}
	},

	["lemon_crate"] = {
		label = "Lemon Crate",
		weight = 3500,
		stack = true,
		close = false,
		description = "A crate of lemons ready for selling!",
		client = {
			image = "lemon_crate.png",
		}
	},

	["hak_kit"] = {
		label = "Hack Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "Hack Kit",
		client = {
			image = "hak_kit.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["scarcolada"] = {
		label = "Scarface Colada",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "scarcolada.png",
		}
	},

	["venonat"] = {
		label = "Venonat",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Soul Badge",
		client = {
			image = "venonat.png",
		}
	},

	["potato_seed"] = {
		label = "Potato Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of seed potatoes!",
		client = {
			image = "potato_seed.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 5000,
		stack = false,
		close = true,
		description = "Hmm lets dive lol yay.",
		client = {
			image = "diving_gear.png",
		}
	},

	["amarettosour"] = {
		label = "Amaretto Sour",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Amaretto Sour",
		client = {
			image = "amarettosour.png",
		}
	},

	["uncut_diamond"] = {
		label = "Uncut Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Diamond",
		client = {
			image = "uncut_diamond.png",
		}
	},

	["machoke"] = {
		label = "Machoke",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "machoke.png",
		}
	},

	["lettuce_crate"] = {
		label = "Lettuce Crate",
		weight = 3500,
		stack = true,
		close = false,
		description = "A crate of lettuce ready for selling!",
		client = {
			image = "lettuce_crate.png",
		}
	},

	["burncream"] = {
		label = "Burn Cream",
		weight = 125,
		stack = true,
		close = true,
		description = "To help with burns",
		client = {
			image = "burncream.png",
		}
	},

	["weed_zkittlez"] = {
		label = "Zkittlez: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest zkittlez flower!",
		client = {
			image = "weed_zkittlez.png",
		}
	},

	["diavolabox"] = {
		label = "Boxed Diavola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby.",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["potatos"] = {
		label = "Potato",
		weight = 0,
		stack = true,
		close = true,
		description = "Potatos..",
		client = {
			image = "potatos.png",
		}
	},

	["sodasyrup"] = {
		label = "SodaSyrup",
		weight = 0,
		stack = true,
		close = true,
		description = "Soda Syrup...",
		client = {
			image = "sodasyrup.png",
		}
	},

	["pinejuice"] = {
		label = "Pineapple Juice",
		weight = 200,
		stack = true,
		close = true,
		description = "Pineapple Juice",
		client = {
			image = "pinejuice.png",
		}
	},

	["rhydon"] = {
		label = "Rhydon",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Earth Badge",
		client = {
			image = "rhydon.png",
		}
	},

	["nekolatte"] = {
		label = "Neko Latte",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "latte.png",
		}
	},

	["bluefish"] = {
		label = "bluefish",
		weight = 1111,
		stack = true,
		close = true,
		description = "Fish for Fishing.",
		client = {
			image = "bluefish.png",
		}
	},

	["snorlaxv"] = {
		label = "Snorlax V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "snorlaxv.png",
		}
	},

	["engine0"] = {
		label = "Stock Engine A",
		weight = 7500,
		stack = true,
		close = true,
		description = "Stock Engine",
		client = {
			image = "engine_parts_a.png",
		}
	},

	["carhood"] = {
		label = "Car Hood",
		weight = 1500,
		stack = true,
		close = true,
		description = "A hood from a vehicle",
		client = {
			image = "carhood.png",
		}
	},

	["triplsec"] = {
		label = "Triple Sec",
		weight = 200,
		stack = true,
		close = true,
		description = "Triple Sec",
		client = {
			image = "triplesec.png",
		}
	},

	["origami10"] = {
		label = "Origami Dolphin",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami10.png",
		}
	},

	["game_ticket"] = {
		label = "Invitation card",
		weight = 500,
		stack = false,
		close = true,
		description = "Invitation card",
		client = {
			image = "game_ticket.png",
		}
	},

	["headlights"] = {
		label = "Xenon Headlights",
		weight = 0,
		stack = false,
		close = true,
		description = "8k HID headlights",
		client = {
			image = "headlights.png",
		}
	},

	["basic_miningrig"] = {
		label = "Basic Mining Rig",
		weight = 20000,
		stack = false,
		close = false,
		description = "A Basic Mining Rig!",
		client = {
			image = "quantum_cpu.png",
		}
	},

	["bass"] = {
		label = "Bass",
		weight = 1250,
		stack = false,
		close = false,
		description = "A normal fish Tatses pretty good!",
		client = {
			image = "bass.png",
		}
	},

	["chair11"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair11.png",
		}
	},

	["petnametag"] = {
		label = "Name tag",
		weight = 500,
		stack = true,
		close = true,
		description = "Rename your pet",
		client = {
			image = "petnametag.png",
		}
	},

	["fishingboot"] = {
		label = "Fishing Boot",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Boot",
		client = {
			image = "fishingboot.png",
		}
	},

	["weed_skunk_joint"] = {
		label = "Skunk: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest skunk!",
		client = {
			image = "weed_skunk_joint.png",
		}
	},

	["chocolate"] = {
		label = "Chocolate",
		weight = 200,
		stack = true,
		close = false,
		description = "Chocolate Bar",
		client = {
			image = "chocolate.png",
		}
	},

	["origami1"] = {
		label = "Origami Scorpion",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami1.png",
		}
	},

	["pd_vial"] = {
		label = "Vial",
		weight = 300,
		stack = true,
		close = true,
		description = "A liquid container",
		client = {
			image = "vial.png",
		}
	},

	["clean_cup"] = {
		label = "Clean Cup",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean cup!",
		client = {
			image = "clean_cup.png",
		}
	},

	["spikespack"] = {
		label = "Spikes Pack",
		weight = 0,
		stack = false,
		close = true,
		description = "A 5 spikes pack for your needs.",
		client = {
			image = "spikespack.png",
		}
	},

	["snowball"] = {
		label = "Snowball",
		weight = 0,
		stack = true,
		close = true,
		description = "Should have catched it :D",
		client = {
			image = "snowball.png",
		}
	},

	["cartrunk"] = {
		label = "Car Trunk",
		weight = 1500,
		stack = true,
		close = true,
		description = "A trunk from a vehicle",
		client = {
			image = "cartrunk.png",
		}
	},

	["porygon"] = {
		label = "Porygon",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "porygon.png",
		}
	},

	["bowlingball"] = {
		label = "Bowling Ball",
		weight = 150,
		stack = true,
		close = true,
		description = "Magic",
		client = {
			image = "bowlingball.png",
		}
	},

	["cup_tea"] = {
		label = "Cup of Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of tea.",
		client = {
			image = "cup_tea.png",
		}
	},

	["timschocsprinkledonut"] = {
		label = "Chocolate Sprinkled Donut",
		weight = 5,
		stack = true,
		close = true,
		description = "Chocolate Sprinkled donut from Timmies!",
		client = {
			image = "timschocsprinkledonut.png",
		}
	},

	["purple_haze_bag"] = {
		label = "Purple Haze Bag",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "purple_haze_bag.png",
		}
	},

	["rx6700xt"] = {
		label = "RX 6700 XT",
		weight = 4000,
		stack = false,
		close = false,
		description = "RX 6700 XT Graphics Card",
		client = {
			image = "e2_cpu.png",
		}
	},

	["eidticket"] = {
		label = "EID Ticket",
		weight = 1,
		stack = false,
		close = true,
		description = "Happy EID  Gift",
		client = {
			image = "eidticket.png",
		}
	},

	["fishingbait"] = {
		label = "Fishing Bait",
		weight = 50,
		stack = true,
		close = false,
		description = "With this I can lure the fishessss..",
		client = {
			image = "fishingbait.png",
		}
	},

	["chickenburger"] = {
		label = "Chicken Burger",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "chickenburger.png",
		}
	},

	["foodingredient"] = {
		label = "Food Ingredient",
		weight = 50,
		stack = false,
		close = true,
		description = "Food Ingredient",
		client = {
			image = "foodingredient.png",
		}
	},

	["dusche"] = {
		label = "Dusche Gold",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dusche.png",
		}
	},

	["television"] = {
		label = "Television",
		weight = 0,
		stack = true,
		close = true,
		description = "Television..",
		client = {
			image = "television.png",
		}
	},

	["adrenshot"] = {
		label = "Adrenaline Shot",
		weight = 200,
		stack = true,
		close = true,
		description = "Save someones heart or keep up with crims",
		client = {
			image = "heroin_shot.png",
		}
	},

	["weed_og-kush_seed_m"] = {
		label = "OG-Kush: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male og-kush seed!",
		client = {
			image = "weed_og-kush_seed_m.png",
		}
	},

	["chair8"] = {
		label = "Lime Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair8.png",
		}
	},

	["turbo0"] = {
		label = "Remove Turbo",
		weight = 125,
		stack = true,
		close = true,
		description = "No Turbo",
		client = {
			image = "turbo.png",
		}
	},

	["schnapps"] = {
		label = "Peach Schnapps",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Peach Schnapps",
		client = {
			image = "schnapps.png",
		}
	},

	["ruby"] = {
		label = "Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A Ruby that shimmers",
		client = {
			image = "ruby.png",
		}
	},

	["nidorino"] = {
		label = "Nidorino",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "nidorino.png",
		}
	},

	["ecolalight"] = {
		label = "eCola Light",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ecolalight.png",
		}
	},

	["arcadegreen"] = {
		label = "Green Arcade Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Green Arcade Card",
		client = {
			image = "arcadegreen.png",
		}
	},

	["pescatore"] = {
		label = "Pescatore",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pescatore.png",
		}
	},

	["lemonpeperblunt"] = {
		label = "LemonPeperBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "lemonpeperblunt.png",
		}
	},

	["ham"] = {
		label = "Ham",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ham.png",
		}
	},

	["usb_green"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A green USB flash drive",
		client = {
			image = "usb_green.png",
		}
	},

	["sprite"] = {
		label = "sprite",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "sprite.png",
		}
	},

	["chickenwrap"] = {
		label = "BS Goat Cheese Wrap",
		degrade = 5760,
        decay = true,
		weight = 150,
		stack = true,
		close = true,
		description = "BurgerShot Goat Cheese Wrap",
		client = {
			
			image = "burger-goatwrap.png",
		}
	},

	["orangea"] = {
		label = "Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "orange",
		client = {
			image = "orangea.png",
		}
	},

	["rawgold"] = {
		label = "Raw Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "rawgold",
		client = {
			image = "rawgold.png",
		}
	},

	["funkopop_ron"] = {
		label = "Ron Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Ron Funkopop Toy",
		client = {
			image = "funkopop_ron.png",
		}
	},

	["oilbarrel"] = {
		label = "Oil Barrel",
		weight = 20000,
		stack = false,
		close = true,
		description = "Full of oil, probably has some value",
		client = {
			image = "oilbarrel.png",
		}
	},

	["heroinbaggy"] = {
		label = "Bag of Heroin",
		weight = 10,
		stack = true,
		close = true,
		description = "Heroin. Destroying lives since 1898!",
		client = {
			image = "heroinbaggy.png",
		}
	},

	["emerald_necklace_silver"] = {
		label = "Emerald Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace_silver.png",
		}
	},

	["wigglytuff"] = {
		label = "Wigglytuff",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "wigglytuff.png",
		}
	},

	["sangria"] = {
		label = "Sangria",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Sangria",
		client = {
			image = "sangria.png",
		}
	},

	["fries"] = {
		label = "Fries",
		weight = 0,
		stack = true,
		close = true,
		description = "Fries..",
		client = {
			image = "fries.png",
		}
	},

	["chair102"] = {
		label = "Red Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair102.png",
		}
	},

	["voodoo"] = {
		label = "Voodoo",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Voodoo Cocktail",
		client = {
			image = "voodoo.png",
		}
	},

	["sourdiesel_crop"] = {
		label = "Sour Diesel Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "Sour Diesel Crop",
		client = {
			image = "ww_sourdiesel_crop.png",
		}
	},

	["pinotnoir"] = {
		label = "Pinot Noir",
		weight = 1000,
		stack = true,
		close = true,
		description = "If you drink no noir, you will pinot noir.",
		client = {
			image = "pinotnoir.png",
		}
	},

	["backpackboyzblunt"] = {
		label = "BackPackBoyzBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "backpackboyzblunt.png",
		}
	},

	["backpack1"] = {
		label = "backpack1",
		weight = 5000,
		stack = false,
		close = true,
		description = "A stylish backpack"
   },
   ["backpack2"] = {
		label = "backpack2",
		weight = 10000,
		stack = false,
		close = true,
		description = "A stylish backpack"
   },
   ["backpack3"] = {
		label = "backpack3",
		weight = 10000,
		stack = false,
		close = true,
		description = "A stylish backpack"
   },
   ["backpack4"] = {
		label = "backpack4",
		weight = 10000,
		stack = false,
		close = true,
		description = "A stylish backpack"
   },
   ["backpack5"] = {
		label = "backpack5",
		weight = 15000,
		stack = false,
		close = true,
		description = "A stylish backpack"
   },
   ["backpack6"] = {
		label = "backpack6",
		weight = 15,
		stack = false,
		close = true,
		description = "A stylish backpack"
   },
   ["backpack7"] = {
		label = "backpack7",
		weight = 15,
		stack = false,
		close = true,
		description = "A stylish backpack"
   },
   ["duffle1"] = {
		label = "Duffle bag",
		weight = 15,
		stack = false,
		close = true,
		description = "A stylish duffle bag"
   },
   ["duffle2"] = {
		label = "Duffle bag",
		weight = 15,
		stack = false,
		close = true,
		description = "A stylish duffle bag"
   },
   ["briefcase"] = {
		label = "Briefcase",
		weight = 10,
		stack = false,
		close = true,
		description = "A portable rectangular case used for carrying important documents, files, or other personal belongings."
   },
   ["paramedicbag"] = {
		label = "Paramedic bag",
		weight = 5,
		stack = false,
		close = true,
		description = "A medical bag used by paramedics, containing essential supplies for emergency care."
   },
   ["policepouches"] = {
		label = "Police Pouch",
		weight = 5,
		stack = false,
		close = true,
		description = "A pouch used by police officers to store and carry essential supplies such as handcuffs, pepper spray, and other tactical equipment."
   },
   ["policepouches1"] = {
		label = "Police Pouch",
		weight = 5,
		stack = false,
		close = true,
		description = "A larger version of the police pouch used to store additional tactical gear and equipment."
   },
   
   ["briefcaselockpicker"] = {
		label = "Briefcase Lockpicker",
		weight = 0.5,
		stack = true,
		close = true,
		description = "Briefcase Lockpicker"
   },

	["gold_phone"] = {
		label = "Gold Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "gold_phone.png",
		}
	},

	["marijuana_crop_mid"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "mid grade harvested marijuana crop",
		client = {
			image = "marijuana_crop_mid.png",
		}
	},

	["bbqwings"] = {
		label = "BBQWings",
		weight = 1,
		stack = true,
		close = true,
		description = "bbqwings",
		client = {
			image = "bbqwings.png",
		}
	},

	["mshakeformula"] = {
		label = "Milk Shake Formula",
		weight = 0,
		stack = true,
		close = true,
		description = "Milk Shake Formula...",
		client = {
			image = "mshakeformula.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = true,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["windowtint0"] = {
		label = "Window Tint",
		weight = 2200,
		stack = true,
		close = true,
		description = "Stock Window Tint",
		client = {
			image = "stockwindowtint.png",
		}
	},

	['boostingtablet'] = {
		label = 'Boosting tablet',
		weight = 0,
		description = "Seems like something's installed on this.",
		client = {
		export = 'rahe-boosting.boostingtablet',
		}
	},
	['hackingdevice'] = {
		label = 'Hacking device',
		weight = 0,
		description = 'Will allow you to bypass vehicle security systems.',
		client = {
		export = 'rahe-boosting.hackingdevice',
		}
	},
	['gpshackingdevice'] = {
		label = 'GPS hacking device',
		weight = 0,
		description = 'If you wish to disable vehicle GPS systems.',
		client = {
		export = 'rahe-boosting.gpshackingdevice',
		}
	},

	['gps_tracker'] = {
		label = 'Police Tracker',
		weight = 1000,
		stack = false,
	},

	["rawchicken"] = {
		label = "Raw Chicken",
		weight = 0,
		stack = true,
		close = true,
		description = "Raw Chicken...",
		client = {
			image = "rawchicken.png",
		}
	},

	["chair13"] = {
		label = "Orange Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair13.png",
		}
	},

	["grandmcextreme"] = {
		label = "grandmcextreme",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "grandmcextreme.png",
		}
	},

	["kiki"] = {
		label = "Kiki",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "kiki.png",
		}
	},

	["illegalgasoline"] = {
		label = "Illegal Gasoline",
		weight = 2500,
		stack = true,
		close = true,
		description = "Stolen gasoline? What are you doing with this?",
		client = {
			image = "illegalgasoline.png",
		}
	},

	["snowmontanablunt"] = {
		label = "SnowMontanaBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "snowmontanablunt.png",
		}
	},

	["donnie"] = {
		label = "Donnie",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "donnie.png",
		}
	},

	["rollcage"] = {
		label = "Roll Cage",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rollcage.png",
		}
	},

	["funkopop_moaningmertle"] = {
		label = "Moaning Mertle Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Moaning Mertle Funkopop Toy",
		client = {
			image = "funkopop_moaningmertle.png",
		}
	},

	["rose-flavoring"] = {
		label = "Rose Flavoring",
		weight = 200,
		stack = true,
		close = true,
		description = "Rose flavoring for Bubble Tea!",
		client = {
			image = "rose-flavoring.png",
		}
	},

	["thinmintcookies8th"] = {
		label = "Thin Mint Cookies 8th",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed bag",
		client = {
			image = "thinmintcookies8th.png",
		}
	},

	["bowlingreceipt"] = {
		label = "Bowling Recepit",
		weight = 150,
		stack = true,
		close = true,
		description = "Magic",
		client = {
			image = "bowlingreceipt.png",
		}
	},

	["sourdiesel_bud"] = {
		label = "Sour Diesel Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "Sour Diesel Bud",
		client = {
			image = "ww_sourdiesel_bud.png",
		}
	},

	["suspension2"] = {
		label = "Suspension Upgrade C",
		weight = 5700,
		stack = true,
		close = true,
		description = "Suspension Upgrade 2",
		client = {
			image = "stock_suspension.png",
		}
	},

	["strawberry"] = {
		label = "Strawberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "strawberry.png",
		}
	},

	["torpedo"] = {
		label = "Torpedo",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Torpedo",
		client = {
			
			image = "burger-torpedo.png",
		}
	},

	["neon_tablet"] = {
		label = "Neon Tablet",
		weight = 0,
		stack = true,
		close = true,
		description = "Neonssss..",
		client = {
			image = "neon_tablet.png",
		}
	},

	["cagoule"] = {
		label = "Empty Bag",
		weight = 100,
		stack = true,
		close = true,
		description = "Bravo Six, Going Dark",
		client = {
			image = "moneybag.png",
		}
	},

	["sodiumoxide"] = {
		label = "Sodiumoxide",
		weight = 1000,
		stack = false,
		close = true,
		description = "sodiumoxide.",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["weed_zkittlez_crop"] = {
		label = "Zkittlez: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest zkittlez flower!",
		client = {
			image = "weed_zkittlez_crop.png",
		}
	},

	["fakelawyer"] = {
		label = "Fake Laywer Pass",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fakelawyer.png",
		}
	},

	["charmander"] = {
		label = "Charmander",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "charmander.png",
		}
	},

	["medfruits"] = {
		label = "Fresh Fruit Medly",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medfruits.png",
		}
	},

	["banana_kush_joint"] = {
		label = "Banana Lush Joint",
		weight = 200,
		stack = true,
		close = true,
		description = "Good joint",
		client = {
			image = "banana_kush_joint.png",
		}
	},

	["chair43"] = {
		label = "Wicker Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair43.png",
		}
	},

	["topfries"] = {
		label = "topfries",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "topfries.png",
		}
	},

	["icepack"] = {
		label = "Ice Pack",
		weight = 110,
		stack = true,
		close = true,
		description = "To help reduce swelling",
		client = {
			image = "icepack.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["brake2"] = {
		label = "Brakes Upgrade C",
		weight = 3000,
		stack = true,
		close = true,
		description = "Brake Upgrade 2",
		client = {
			image = "brake_parts_c.png",
		}
	},

	["bprooftires"] = {
		label = "Bulletproof Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bprooftires.png",
		}
	},

	["dragonite"] = {
		label = "Dragonite",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "dragonite.png",
		}
	},

	["origami17"] = {
		label = "Origami Monkey",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami17.png",
		}
	},

	["blue_phone"] = {
		label = "Blue Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "blue_phone.png",
		}
	},

	["weedsp"] = {
		label = "Joint SP",
		weight = 50,
		stack = false,
		close = true,
		description = "Joint SP",
		client = {
			image = "joint.png",
		}
	},

	["abra"] = {
		label = "Abra",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Marsh Badge",
		client = {
			image = "abra.png",
		}
	},

	["timbitsdough"] = {
		label = "Timbits Dough",
		weight = 200,
		stack = true,
		close = false,
		description = "Dough to make Timbits!",
		client = {
			image = "timbitsdough.png",
		}
	},

	["cardoor"] = {
		label = "Car Door",
		weight = 1500,
		stack = true,
		close = true,
		description = "A door from a vehicle",
		client = {
			image = "cardoor.png",
		}
	},

	["meat_stingray"] = {
		label = "Stingray Meat",
		weight = 700,
		stack = true,
		close = true,
		description = "Stingray meat!",
		client = {
			image = "meat_stingray.png",
		}
	},

	["sauce"] = {
		label = "Tomato Sauce",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sauce.png",
		}
	},

	["micard_rare"] = {
		label = "Rare Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Wow!! You have a rare card!!",
		client = {
			image = "micard_rare.png",
		}
	},

	["seasonedfries"] = {
		label = "Seasoned Fries",
		weight = 1,
		stack = true,
		close = true,
		description = "seasonedfries.",
		client = {
			image = "seasonedfries.png",
		}
	},

	["pinotgrigio"] = {
		label = "Pinot Grigio",
		weight = 1000,
		stack = true,
		close = true,
		description = "One should always be drunk. Thats all that matters.",
		client = {
			image = "pinotgrigio.png",
		}
	},

	["farm_fertilizer"] = {
		label = "Fertilizer",
		weight = 1500,
		stack = true,
		close = false,
		description = "A bag of organic fertilizer!",
		client = {
			image = "farm_fertilizer.png",
		}
	},

	["chair18"] = {
		label = "Blue Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair18.png",
		}
	},

	["togepi"] = {
		label = "Togepi",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Cascade Badge - Rare",
		client = {
			image = "togepi.png",
		}
	},

	["nekodonut"] = {
		label = "Neko Donut",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "catdonut.png",
		}
	},

	["origami20"] = {
		label = "Origami Squirrel",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami20.png",
		}
	},

	["token"] = {
		label = "Mysterious Token",
		weight = 500,
		stack = false,
		close = true,
		description = "A Mysterious Token",
		client = {
			image = "token.png",
		}
	},

	["emptycrate"] = {
		label = "Crate",
		weight = 100,
		stack = true,
		close = false,
		description = "A empty crate for storing things!",
		client = {
			image = "emptycrate.png",
		}
	},

	["obobatea"] = {
		label = "Orange Boba Tea",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bubbleteaorange.png",
		}
	},

	["pbobatea"] = {
		label = "Pink Boba Tea",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bubbleteapink.png",
		}
	},

	["chair106"] = {
		label = "Purple Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair106.png",
		}
	},

	["flv_weed_og-kush"] = {
		label = "OG Kush Additive",
		weight = 200,
		stack = true,
		close = false,
		description = "OG Kush Additive",
		client = {
			image = "flv_weed_og-kush.png",
		}
	},

	["cooked_bacon"] = {
		label = "Cooked Bacon",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_bacon.png",
		}
	},

	["hunterslogo"] = {
		label = "Hunters Logo",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hunterslogo.png",
		}
	},

	["mushroom_seed"] = {
		label = "Mushroom Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of mushroom seeds!",
		client = {
			image = "mushroom_seed.png",
		}
	},

	["cryptostick"] = {
		label = "crypto stick",
		weight = 0,
		stack = true,
		close = true,
		description = "crypto stick.",
		client = {
			image = "cryptostick.png",
		}
	},

	["gbobatea"] = {
		label = "Green Boba Tea",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bubbleteagreen.png",
		}
	},

	["pineapple_seed"] = {
		label = "Pineapple Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of pineapple seeds!",
		client = {
			image = "pineapple_seed.png",
		}
	},

	["turbo"] = {
		label = "Supercharger Turbo",
		weight = 0,
		stack = false,
		close = true,
		description = "Who doesn't need a 65mm Turbo??",
		client = {
			image = "turbo.png",
		}
	},

	["syringe"] = {
		label = "Syringe",
		weight = 50,
		stack = true,
		close = true,
		description = "A sterile syringe, dont share!",
		client = {
			image = "syringe.png",
		}
	},

	["chair41"] = {
		label = "Grey Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair41.png",
		}
	},

	["beef"] = {
		label = "Uncut beef",
		weight = 1000,
		stack = true,
		close = true,
		description = "Uncut Beef",
		client = {
			image = "beeficon.png",
		}
	},

	["motel_key"] = {
		label = "Motel Key",
		weight = 0,
		stack = false,
		close = true,
		description = "Motel key",
		client = {
			image = "motel_key.png",
		}
	},

	["nidorina"] = {
		label = "Nidorina",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "nidorina.png",
		}
	},

	["casino_psqs"] = {
		label = "Casino Ps & Qs",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ps & Qs",
		client = {
			image = "casino_psqs.png",
		}
	},

	["hydrochloric_acid"] = {
		label = "Hydrochloric Acid",
		weight = 1500,
		stack = true,
		close = true,
		description = "A colorless solution with a distinctive pungent smell. It is classified as a strong acid.",
		client = {
			image = "hydrochloric_acid.png",
		}
	},

	["weed_og-kush"] = {
		label = "OG-Kush: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest og-kush flower!",
		client = {
			image = "weed_og-kush.png",
		}
	},

	["mechanic_tools"] = {
		label = "Mechanic tools",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for vehicle repairs",
		client = {
			image = "mechanic_tools.png",
		}
	},

	["tacomeat"] = {
		label = "Taco Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Taco Meat",
		client = {
			image = "tacomeat.png",
		}
	},

	["vmaxcharizard"] = {
		label = "Charizard Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "vmaxcharizard.png",
		}
	},

	["glass_pepsi"] = {
		label = "Glass of Pepsi",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of pepsi!",
		client = {
			image = "glass_pepsi.png",
		}
	},

	["wedges"] = {
		label = "Wedges",
		weight = 200,
		stack = true,
		close = true,
		description = "Bunch Wedges",
		client = {
			image = "wedges.png",
		}
	},

	["gengar"] = {
		label = "Gengar",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gengar.png",
		}
	},

	["boombox"] = {
		label = "Boombox",
		weight = 5000,
		stack = false,
		close = true,
		description = "Play some music anywhere.",
		client = {
			image = "boombox.png",
		}
	},

	["chair33"] = {
		label = "Black Comfy Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair33.png",
		}
	},

	["stopsign"] = {
		label = "Stop Sign",
		weight = 500,
		stack = false,
		close = true,
		description = "Stop Sign",
		client = {
			image = "stopsign.png",
		}
	},

	["sedative"] = {
		label = "Sedative",
		weight = 20,
		stack = true,
		close = true,
		description = "If needed, this will sedate patient",
		client = {
			image = "sedative.png",
		}
	},

	["jolteon"] = {
		label = "Jolteon",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Thunder Badge - Rare",
		client = {
			image = "jolteon.png",
		}
	},

	["weed_og_kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed-baggie.png",
		}
	},

	["electabuzz"] = {
		label = "Electabuzz",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Thunder Badge",
		client = {
			image = "electabuzz.png",
		}
	},

	["shotrings"] = {
		label = "Ring Shots",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Burgershot Onion Rings",
		client = {
			
			image = "burger-shotrings.png",
		}
	},

	["skin_whale"] = {
		label = "Whale Skin",
		weight = 7500,
		stack = true,
		close = true,
		description = "Whale skin. Highly illegal",
		client = {
			image = "skin_whale.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd want everything to burn..",
		client = {
			image = "thermite.png",
		}
	},

	["prosciuttio"] = {
		label = "Prosciuttio E Funghi",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "proscuttio.png",
		}
	},

	["methbrick"] = {
		label = "Meth Brick (100g)",
		weight = 10000,
		stack = true,
		close = true,
		description = "Meth Brick",
		client = {
			image = "methbrick.png",
		}
	},

	["og_kush_joint"] = {
		label = "Og Kush Joint",
		weight = 200,
		stack = true,
		close = true,
		description = "Good joint",
		client = {
			image = "og_kush_joint.png",
		}
	},

	["apple_juice"] = {
		label = "Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_juice.png",
		}
	},

	["kq_carjack"] = {
		label = "Car jack set",
		weight = 3000,
		stack = true,
		close = true,
		description = "Allows you to raise cars",
		client = {
			image = "kq_carjack.png",
		}
	},

	["c4_bomb"] = {
		label = "High-Yield Explosive",
		weight = 1000,
		stack = false,
		close = true,
		description = "A high-yield, timed explosive device",
		client = {
			image = "weapon_stickybomb.png",
		}
	},

	["kuz_merryweather"] = {
		label = "Merryweather parts",
		weight = 5000,
		stack = true,
		close = false,
		description = "Merryweather parts",
		client = {
			image = "kuz_merryweather.png",
		}
	},

	["carbattery"] = {
		label = "Car Battery",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "carbattery.png",
		}
	},

	["blacklight"] = {
		label = "Xenons - Blacklight",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "blacklight.png",
		}
	},

	["rims"] = {
		label = "Custom Wheel Rims",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rims.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["rimjob"] = {
		label = "Rim Job",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Donut",
		client = {
			
			image = "burger-rimjob.png",
		}
	},

	["coyote3"] = {
		label = "Coyote Carcass",
		weight = 3800,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coyote3.png",
		}
	},

	["omanyte"] = {
		label = "Omanyte",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "omanyte.png",
		}
	},

	["petwaterbottleportable"] = {
		label = "Portable water bottle",
		weight = 1000,
		stack = false,
		close = true,
		description = "Flask to store water for your pets",
		client = {
			image = "petwaterbottleportable.png",
		}
	},

	["granddaddypurple_joint"] = {
		label = "Grand Daddy Purple Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "Grand Daddy Purple Joint",
		client = {
			image = "ww_granddaddypurple_joint.png",
		}
	},

	["seat"] = {
		label = "Seat Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "seat.png",
		}
	},

	["chair47"] = {
		label = "Black Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair47.png",
		}
	},

	["weed_white-widow_seed_f"] = {
		label = "White-Widow: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized white-widow seed.",
		client = {
			image = "weed_white-widow_seed_f.png",
		}
	},

	["taco-box"] = {
		label = "Taco Box",
		weight = 1000,
		stack = true,
		close = true,
		description = "taco box",
		client = {
			image = "taco-box.png",
		}
	},

	["livery"] = {
		label = "Livery Roll",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "livery.png",
		}
	},

	["strawmargarita"] = {
		label = "Strawberry Margarita",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Starberry Margarita",
		client = {
			image = "strawmargarita.png",
		}
	},

	["liquorkey"] = {
		label = "Liquor Storeroom",
		weight = 200,
		stack = true,
		close = false,
		description = "A curious key with the label 'Liquor Storeroom'.",
		client = {
			image = "liquorkey.png",
		}
	},

	["cheesecroissant"] = {
		label = "Cheese Croissant",
		weight = 200,
		stack = true,
		close = true,
		description = "Cheese Croissant from Timmies!",
		client = {
			image = "cheesecroissant.png",
		}
	},

	["mew"] = {
		label = "Mew",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "mew.png",
		}
	},

	["present"] = {
		label = "Gift",
		weight = 1000,
		stack = true,
		close = true,
		description = "A Gift for newbs, maybe something nice is inside?",
		client = {
			image = "presents.png",
		}
	},

	["windowtint2"] = {
		label = "Window Tint Stage 2",
		weight = 2200,
		stack = true,
		close = true,
		description = "Window Tint Stage 2",
		client = {
			image = "stockwindowtint2.png",
		}
	},

	["mintleaf"] = {
		label = "Mint",
		weight = 200,
		stack = true,
		close = false,
		description = "Mint Leaves",
		client = {
			
			image = "mint.png",
		}
	},

	["heartstopper"] = {
		label = "HeartStopper",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Heartstopper",
		client = {
			image = "burger-heartstopper.png",
		}
	},

	["hotsauce"] = {
		label = "Hot Sauce",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hotsauce.png",
		}
	},

	["laptop_blue"] = {
		label = "Laptop",
		weight = 2500,
		stack = false,
		close = true,
		description = "A laptop that you got from Ramsay",
		client = {
			image = "laptop_blue.png",
		}
	},

	["goldfish"] = {
		label = "Goldfish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "goldfish.png",
		}
	},

	["goldeen"] = {
		label = "Goldeen",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldeen.png",
		}
	},

	["bbq3"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq3.png",
		}
	},

	["classic_phone"] = {
		label = "Classic Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "classic_phone.png",
		}
	},

	["opium"] = {
		label = "Opium Sap",
		weight = 100,
		stack = true,
		close = true,
		description = "Opium, do you know how to refine it?",
		client = {
			image = "opium.png",
		}
	},

	["origami3"] = {
		label = "Origami Poop",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami3.png",
		}
	},

	["hydrochloric_bottle"] = {
		label = "hydrochloric_bottle",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real fast.",
		client = {
			image = "sulfuricacid_bottle.png",
		}
	},

	["weed_amnesia_crop"] = {
		label = "Amnesia: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest amnesia flower!",
		client = {
			image = "weed_amnesia_crop.png",
		}
	},

	["wet_classic_phone"] = {
		label = "Wet Classic Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?",
		client = {
			image = "wet_classic_phone.png",
		}
	},

	["marlboro"] = {
		label = "Marlboro Pack",
		weight = 200,
		stack = true,
		close = true,
		description = "Take out your cigarettes",
		client = {
			image = "marlboro.png",
		}
	},

	["hqscale"] = {
		label = "High Quality Scales",
		weight = 2000,
		stack = true,
		close = false,
		description = "High Quality Scale for some ganja",
		client = {
			image = "hqscale.png",
		}
	},

	["shellder"] = {
		label = "Shellder",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "shellder.png",
		}
	},

	["marlborocig"] = {
		label = "Marlboro Cigarette",
		weight = 50,
		stack = true,
		close = true,
		description = "Smoking cigarette",
		client = {
			image = "marlborocig.png",
		}
	},

	["jerrycan"] = {
		label = "Jerry Can",
		weight = 15000,
		stack = false,
		close = true,
		description = "A Jerry Can made to hold gasoline.",
		client = {
			image = "jerrycan.png",
		}
	},

	["jynx"] = {
		label = "Jynx",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Marsh Badge - Rare",
		client = {
			image = "jynx.png",
		}
	},

	["skin_shark"] = {
		label = "Shark Skin",
		weight = 1750,
		stack = true,
		close = true,
		description = "Shark skin. Highly illegal!",
		client = {
			image = "skin_shark.png",
		}
	},

	["skin_mtlion"] = {
		label = "Mt Lion Hide",
		weight = 1050,
		stack = true,
		close = true,
		description = "Mt. Lion hide. Highly illegal!",
		client = {
			image = "skin_mtlion.png",
		}
	},

	["pidgey"] = {
		label = "Pidgey",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pidgey.png",
		}
	},

	["vegetarianabox"] = {
		label = "Boxed Vegetariana",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["keyfob"] = {
		label = "Car Key Fob",
		weight = 0.02,
		stack = false,
		close = true,
		description = "Key Fob for car!",
		client = {
			image = "fob.png",
		}
	},

	["chips"] = {
		label = "Chips",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "chips.png",
		}
	},

	["goldpan"] = {
		label = "Gold Panning Tray",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldpan.png",
		}
	},

	["tires"] = {
		label = "Drift Smoke Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tires.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors.",
		client = {
			image = "police_stormram.png",
		}
	},

	["chair56"] = {
		label = "Old Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair56.png",
		}
	},

	["meat"] = {
		label = "Meat",
		weight = 200,
		stack = true,
		close = true,
		description = "A slab of Meat",
		client = {
			
			image = "meat.png",
		}
	},

	["syphoningkit"] = {
		label = "Syphoning Kit",
		weight = 5000,
		stack = false,
		close = true,
		description = "A kit made to siphon gasoline from vehicles.",
		client = {
			image = "syphoningkit.png",
		}
	},

	["whitechocolatedonut"] = {
		label = "White Chocolate Donut",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "whitechocolatedonut.png",
		}
	},

	["backpackboyz8th"] = {
		label = "BackPackBoyz8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "backpackboyz8th.png",
		}
	},

	["prisonfruit"] = {
		label = "Fruit Mix",
		weight = 1000,
		stack = true,
		close = false,
		description = "A mix of random fruits",
		client = {
			image = "prisonfruit.png",
		}
	},

	["pearlscard"] = {
		label = "Pearls Seafood",
		weight = 100,
		stack = true,
		close = true,
		description = "A special member of Pearl's Seafood Restaurant",
		client = {
			image = "pearlscard.png",
		}
	},

	["og_kush_weed"] = {
		label = "Og Kush Weed 1G",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "og_kush_weed.png",
		}
	},

	["rawchickenwings"] = {
		label = "Raw Chicken Wings",
		weight = 1,
		stack = true,
		close = true,
		description = "rawchickenwings",
		client = {
			image = "rawchickenwings.png",
		}
	},

	["pd_dirty_brown_mushroom"] = {
		label = "Dirty Brown Mushroom",
		weight = 300,
		stack = true,
		close = true,
		description = "I should probably clean this first",
		client = {
			image = "brown_mushroom.png",
		}
	},

	["sapphire_earring"] = {
		label = "Sapphire Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring.png",
		}
	},

	["refinedgold"] = {
		label = "Refined Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "refined gold",
		client = {
			image = "refinedgold.png",
		}
	},

	["medbag"] = {
		label = "Medical Bag",
		weight = 2500,
		stack = true,
		close = true,
		description = "A bag of medic tools",
		client = {
			image = "medbag.png",
		}
	},

	["radiocar_dismounter"] = {
		label = "radiocar_dismounter",
		weight = 100,
		stack = true,
		close = true,
		description = "radiocar_dismounter",
		client = {
			image = "radio_remover.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = false,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["chair73"] = {
		label = "Dark Brown Wood Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair73.png",
		}
	},

	["fakedrivelicence"] = {
		label = "Fake Drivers Licence",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fakedriver.png",
		}
	},

	["emptymilkbottle"] = {
		label = "Empty Milk Bottle",
		weight = 100,
		stack = true,
		close = false,
		description = "A empty milk bottle!",
		client = {
			image = "emptymilkbottle.png",
		}
	},

	["cookedsausage"] = {
		label = "Cooked Sausage",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cookedsausage.png",
		}
	},

	["bbq1"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq1.png",
		}
	},

	["hd_coughsyrup"] = {
		label = "Cough Syrup",
		weight = 0,
		stack = true,
		close = false,
		description = "1ml Cough Syrup",
		client = {
			image = "hd_coughsyrup.png",
		}
	},

	["chair62"] = {
		label = "Green Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair62.png",
		}
	},

	["grimer"] = {
		label = "Grimer",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "grimer.png",
		}
	},

	["stone"] = {
		label = "Stone",
		weight = 150,
		stack = true,
		close = false,
		description = "Stone woo",
		client = {
			image = "stone.png",
		}
	},

	["jigglypuff"] = {
		label = "Jigglypuff",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "jigglypuff.png",
		}
	},

	["spoiler3"] = {
		label = "Custom Spoiler",
		weight = 4500,
		stack = true,
		close = true,
		description = "Custom Spoiler",
		client = {
			image = "spoiler3.png",
		}
	},

	["mushroom_sack"] = {
		label = "Mushroom Sack",
		weight = 5000,
		stack = true,
		close = false,
		description = "A sack of mushrooms ready for selling!",
		client = {
			image = "mushroom_sack.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["moonshine_ferm"] = {
		label = "Fermented Moonshine",
		weight = 5000,
		stack = true,
		close = false,
		description = "A bucket of fermented moonshine!",
		client = {
			image = "moonshine_ferm.png",
		}
	},

	["billiondollarbabychain"] = {
		label = "Iced Out Chain",
		weight = 1000,
		stack = true,
		close = true,
		description = "Custom Chain Sum Light...",
		client = {
			image = "billiondollarbabychain.png",
		}
	},

	["casino_sandwitch"] = {
		label = "Casino Sandwitch",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sandwitch",
		client = {
			image = "casino_sandwitch.png",
		}
	},

	["fakecash"] = {
		label = "Fake Cash",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fakecash.png",
		}
	},

	["timschocdipdonut"] = {
		label = "Chocolate Dip Donut",
		weight = 5,
		stack = true,
		close = true,
		description = "Chocolate Dip Donut from Timmies!",
		client = {
			image = "timschocdipdonut.png",
		}
	},

	["wet_gold_phone"] = {
		label = "Wet Gold Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?",
		client = {
			image = "wet_gold_phone.png",
		}
	},

	["mcfish"] = {
		label = "mcfish",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "mcfish.png",
		}
	},

	["glass_chardonnay"] = {
		label = "Glass of Chardonnay",
		weight = 1000,
		stack = true,
		close = true,
		description = "Chardonnay for after a really long, hard day.",
		client = {
			image = "glass_chardonnay.png",
		}
	},

	["chair84"] = {
		label = "Orange Deco Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair84.png",
		}
	},

	["brake3"] = {
		label = "Brakes Upgrade S",
		weight = 3200,
		stack = true,
		close = true,
		description = "Brake Upgrade 3",
		client = {
			image = "brake_parts_s.png",
		}
	},

	["lightbar"] = {
		label = "Portable Light Bar",
		weight = 50,
		stack = false,
		close = true,
		description = "Portable Light Bar",
		client = {
			image = "lightbar.png",
		}
	},

	["growlithe"] = {
		label = "Growlithe",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "growlithe.png",
		}
	},

	["purple_haze_weed"] = {
		label = "Purple Haze Weed 1G",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "purple_haze_weed.png",
		}
	},

	["lotto"] = {
		label = "Lotto ticket",
		weight = 10,
		stack = true,
		close = true,
		description = "Lucky Ticket",
		client = {
			image = "lotto.png",
		}
	},

	["biscotti"] = {
		label = "BISCOTTI (INDICA)",
		weight = 50,
		stack = false,
		close = true,
		description = "BISCOTTI (INDICA)",
		client = {
			image = "joint.png",
		}
	},

	["pd_jammer"] = {
		label = "Vehicle Tracking Device Jammer",
		weight = 20,
		stack = true,
		close = true,
		description = "Jam the signal of Vehicle Tracking Devices.",
		client = {
			image = "jammer.png",
		}
	},

	["weed_ak47_seed_m"] = {
		label = "AK47: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male ak47 seed!",
		client = {
			image = "weed_ak47_seed_m.png",
		}
	},

	["cactusfruit"] = {
		label = "Cactus Fruit",
		weight = 100,
		stack = true,
		close = false,
		description = "Cactus Fruit!",
		client = {
			image = "cactusfruit.png",
		}
	},

	["underglow_controller"] = {
		label = "Neon Controller",
		weight = 0,
		stack = true,
		close = true,
		description = "RGB LED Vehicle Remote",
		client = {
			image = "underglow_controller.png",
		}
	},

	["rainbowmewtwogx"] = {
		label = "Rainbow Mewtwo",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "rainbowmewtwogx.png",
		}
	},

	["dabcart"] = {
		label = "Dab Cart",
		weight = 0,
		stack = true,
		close = true,
		description = "Useable Dab Cart",
		client = {
			image = "dapcart.png",
		}
	},

	["ether"] = {
		label = "Petroleum Ether",
		weight = 1000,
		stack = true,
		close = true,
		description = "Petroleum ether is the petroleum fraction consisting of aliphatic hydrocarbons, commonly used as a laboratory solvent.",
		client = {
			image = "ether.png",
		}
	},

	["rosso"] = {
		label = "Rosso Del Montalcino",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rosso.png",
		}
	},

	["computerequipment"] = {
		label = "Computer Equipment",
		weight = 0,
		stack = true,
		close = true,
		description = "computerequipment.....",
		client = {
			image = "computerequipment.png",
		}
	},

	["chair100"] = {
		label = "Blue Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair100.png",
		}
	},

	["timbits"] = {
		label = "Timbits",
		weight = 200,
		stack = true,
		close = true,
		description = "Timmies Timbits!",
		client = {
			image = "timbits.png",
		}
	},

	["eggs"] = {
		label = "Cooking Eggs",
		weight = 200,
		stack = true,
		close = true,
		description = "Eggs...common cooking ingredient.",
		client = {
			image = "eggs.png",
		}
	},

	["fishinglootbig"] = {
		label = "Treasure Chest",
		weight = 2500,
		stack = true,
		close = true,
		description = "The lock seems to be intact, Might need a key",
		client = {
			image = "fishinglootbig.png",
		}
	},

	["moneyshot"] = {
		label = "Money Shot",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Money Shot",
		client = {
			
			image = "burger-moneyshot.png",
		}
	},

	["largemouthbass"] = {
		label = "Largemouth Bass",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "largemouthbass.png",
		}
	},

	["security_card_oil"] = {
		label = "Pink USB Dongle",
		weight = 500,
		stack = false,
		close = true,
		description = "This has got to be some important information...",
		client = {
			image = "security_card_oil.png",
		}
	},

	["casino_sprite"] = {
		label = "Casino Sprite",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sprite",
		client = {
			image = "casino_sprite.png",
		}
	},

	["chair109"] = {
		label = "Cream Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair109.png",
		}
	},

	["sake"] = {
		label = "Sake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sake.png",
		}
	},

	["timsstrawberrydonut"] = {
		label = "Strawberry Donut",
		weight = 5,
		stack = true,
		close = true,
		description = "Strawberry Donut from Timmies!",
		client = {
			image = "timsstrawberrydonut.png",
		}
	},

	["dragonair"] = {
		label = "Dragonair",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "dragonair.png",
		}
	},

	["chair79"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair79.png",
		}
	},

	["sorbertblunt"] = {
		label = "SorbertBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "sorbertblunt.png",
		}
	},

	["chickenmeat"] = {
		label = "ChickenMeat",
		weight = 0,
		stack = true,
		close = true,
		description = "Chicken Meat...",
		client = {
			image = "chickenmeat.png",
		}
	},

	["bigchickensupreme"] = {
		label = "bigchickensupreme",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "bigchickensupreme.png",
		}
	},

	["sharklato8th"] = {
		label = "Sharklato8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "sharklato8th.png",
		}
	},

	["chair63"] = {
		label = "Blue Camping Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair63.png",
		}
	},

	["casino_luckypotion"] = {
		label = "Casino Lucky Potion",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Lucky Potion",
		client = {
			image = "casino_luckypotion.png",
		}
	},

	["meat_pig"] = {
		label = "Pork Meat",
		weight = 750,
		stack = true,
		close = true,
		description = "Pig meat!",
		client = {
			image = "meat_pig.png",
		}
	},

	["agua"] = {
		label = "agua",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "agua.png",
		}
	},

	["prisonfarmseeds"] = {
		label = "Plant Seeds",
		weight = 1000,
		stack = true,
		close = false,
		description = "Seeds, water, nutrition and love make happy plants",
		client = {
			image = "prisonfarmseeds.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "#Coral yow",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["methbaggy"] = {
		label = "Meth Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "10g bag of a highly addictive stimulant. Very illegal, sell quick.",
		client = {
			image = "methbag.png",
		}
	},

	["burger-raw"] = {
		label = "Raw Patty",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_patty_raw.png",
		}
	},

	["bbq5"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq5.png",
		}
	},

	["greencrack"] = {
		label = "GREEN CRACK (SATIVA)",
		weight = 50,
		stack = false,
		close = true,
		description = "GREEN CRACK (SATIVA)",
		client = {
			image = "joint.png",
		}
	},

	["flv_weed_amnesia"] = {
		label = "Amnesia Additive",
		weight = 200,
		stack = true,
		close = false,
		description = "Amnesia Additive",
		client = {
			image = "flv_weed_amnesia.png",
		}
	},

	["oddish"] = {
		label = "Oddish",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "oddish.png",
		}
	},

	["prisonspoon"] = {
		label = "Spoon",
		weight = 1000,
		stack = true,
		close = false,
		description = "Cafeteria spoon",
		client = {
			image = "prisonspoon.png",
		}
	},

	["weed_white-widow"] = {
		label = "White-Widow: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest white-widow flower!",
		client = {
			image = "weed_white-widow.png",
		}
	},

	["veggies"] = {
		label = "Uncut Veggies",
		weight = 1000,
		stack = true,
		close = true,
		description = "Uncut Veggies",
		client = {
			image = "uncutveggieicon.png",
		}
	},

	["paras"] = {
		label = "Paras",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "paras.png",
		}
	},

	["carstereo"] = {
		label = "Car Stereo",
		weight = 5000,
		stack = true,
		close = true,
		description = "Car Stereos Are Lame...",
		client = {
			image = "carstereo.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["chair101"] = {
		label = "Black Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair101.png",
		}
	},

	["phone_hack"] = {
		label = "Phone Hack",
		weight = 300,
		stack = false,
		close = true,
		description = "With this chip, you can access hidden areas of Discord.",
		client = {
			image = "phone_hack.png",
		}
	},

	["chair86"] = {
		label = "Red Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair86.png",
		}
	},

	["meat_shark"] = {
		label = "Shark Meat",
		weight = 1200,
		stack = true,
		close = true,
		description = "Shark meat!",
		client = {
			image = "meat_shark.png",
		}
	},

	["chair52"] = {
		label = "Worn Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair52.png",
		}
	},

	["plasticjerrycan"] = {
		label = "Plastic Jerrycan",
		weight = 500,
		stack = true,
		close = true,
		description = "A empty jerry can for storing liquids.",
		client = {
			image = "plasticjerrycan.png",
		}
	},

	["lemoncookiesblunt"] = {
		label = "Lemon Cookies Blunt",
		weight = 0,
		stack = true,
		close = true,
		description = "Rolled Up",
		client = {
			image = "lemoncookiesblunt.png",
		}
	},

	["rawpumpkin"] = {
		label = "Raw Pumpkin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pumpkin.png",
		}
	},

	["gyarados"] = {
		label = "Gyarados",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "gyarados.png",
		}
	},

	["puremeth"] = {
		label = "Pure Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "Sell some Meth",
		client = {
			image = "meth10g.png",
		}
	},

	["crack_1oz"] = {
		label = "Ounce of Crack",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "crack_1oz.png",
		}
	},

	["weepinbell"] = {
		label = "Weepinbell",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weepinbell.png",
		}
	},

	["pd_magic_mushroom"] = {
		label = "Gleaming Mushroom",
		weight = 300,
		stack = true,
		close = true,
		description = "I heard this can make you trip like crazy",
		client = {
			image = "magic_mushroom.png",
		}
	},

	["duffbeer"] = {
		label = "Duff Beer",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "duffbeer.png",
		}
	},

	["whiskeysour"] = {
		label = "Whiskey Sour",
		weight = 400,
		stack = true,
		close = true,
		description = "Whiskey Sour!",
		client = {
			image = "whiskeysour.png",
		}
	},

	["water_jerrycan"] = {
		label = "Water Jerrycan",
		weight = 3500,
		stack = true,
		close = false,
		description = "Water from a tanker.. it could be a dirty but who cares..",
		client = {
			image = "water_jerrycan.png",
		}
	},

	["clefairy"] = {
		label = "Clefairy",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "clefairy.png",
		}
	},

	["arcadeblue"] = {
		label = "Blue Arcade Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Blue Arcade Card",
		client = {
			image = "arcadeblue.png",
		}
	},

	["metal_wand"] = {
		label = "Metal Wand",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "metal_wand.png",
		}
	},

	["coyote1"] = {
		label = "Coyote Carcass",
		weight = 3000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coyote1.png",
		}
	},

	["defib"] = {
		label = "Defibrillator",
		weight = 1120,
		stack = true,
		close = true,
		description = "Used to revive patients",
		client = {
			image = "defib.png",
		}
	},

	["orange"] = {
		label = "Orange",
		weight = 200,
		stack = true,
		close = false,
		description = "An Orange.",
		client = {
			image = "orange.png",
		}
	},

	["cake"] = {
		label = "Strawberry Cake",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "cake.png",
		}
	},

	["garlicparmesanwings"] = {
		label = "Garlic Parmesan Wings",
		weight = 1,
		stack = true,
		close = true,
		description = "garlicparmesanwings",
		client = {
			image = "garlicparmesanwings.png",
		}
	},

	["snorlaxvmax"] = {
		label = "Snorlax Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "snorlaxvmax.png",
		}
	},

	["sourdiesel_joint"] = {
		label = "Sour Diesel Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "Sour Diesel Joint",
		client = {
			image = "ww_sourdiesel_joint.png",
		}
	},

	["pd_dirty_red_mushroom"] = {
		label = "Dirty Red Mushroom",
		weight = 300,
		stack = true,
		close = true,
		description = "I should probably clean this first",
		client = {
			image = "red_mushroom.png",
		}
	},

	["skin_coyote"] = {
		label = "Coyote Hide",
		weight = 750,
		stack = true,
		close = true,
		description = "Coyote hide.",
		client = {
			image = "skin_coyote.png",
		}
	},

	["clubsandwich"] = {
		label = "Club Sandwich",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "clubsandwich.png",
		}
	},

	["chair57"] = {
		label = "Purple Leather Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair57.png",
		}
	},

	["pint_dusche"] = {
		label = "Pint of Dusche Gold",
		weight = 400,
		stack = true,
		close = true,
		description = "Golden shower!",
		client = {
			image = "pint_dusche.png",
		}
	},

	["cardiaquecigs"] = {
		label = "Cardiaque Cigarettes",
		weight = 50,
		stack = false,
		close = true,
		description = "Pack of Cigarettes, Made in USA",
		client = {
			image = "cardiaquecigs.png",
		}
	},

	["funkopop_hermione"] = {
		label = "Hermione Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Hermione Funkopop Toy",
		client = {
			image = "funkopop_hermione.png",
		}
	},

	["chair74"] = {
		label = "Yellow Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair74.png",
		}
	},

	["deer4"] = {
		label = "Deer Carcass",
		weight = 4000,
		stack = true,
		close = false,
		description = "This looks like a protected deer.",
		client = {
			image = "deer4.png",
		}
	},

	["interceptor"] = {
		label = "Labs Bypass",
		weight = 200,
		stack = false,
		close = true,
		description = "An intercepting device, looks like it is something you can hook-up to a car boot?",
		client = {
			image = "radioscanner.png",
		}
	},

	["stock"] = {
		label = "Xenons - Stock",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "stock.png",
		}
	},

	["slushy"] = {
		label = "Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy...",
		client = {
			image = "slushy.png",
		}
	},

	["venusaurvmax"] = {
		label = "Venusaur Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "venusaurvmax.png",
		}
	},

	["marijuana_joint"] = {
		label = "Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "1g joint",
		client = {
			image = "marijuana_joint.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle.",
		client = {
			image = "repairkit.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest skunk flower!",
		client = {
			image = "weed_skunk.png",
		}
	},

	["machop"] = {
		label = "Machop",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "machop.png",
		}
	},

	["sorbert8th"] = {
		label = "Sorbert8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "sorbert8th.png",
		}
	},

	["milk_pail"] = {
		label = "Milk Pail",
		weight = 1000,
		stack = true,
		close = false,
		description = "Fresh milk, straight from the cow!",
		client = {
			image = "milk_pail.png",
		}
	},

	["doduo"] = {
		label = "Doduo",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "doduo.png",
		}
	},

	["engine2"] = {
		label = "Engine Upgrade C",
		weight = 5000,
		stack = true,
		close = true,
		description = "Engine Upgrade 2",
		client = {
			image = "engine_parts_c.png",
		}
	},

	["usb_grey"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A grey USB flash drive",
		client = {
			image = "usb_grey.png",
		}
	},

	["icedmacchiato"] = {
		label = "Iced Macchiato",
		weight = 50,
		stack = false,
		close = true,
		description = "Iced Macchiato",
		client = {
			image = "icedMacchiato.png",
		}
	},

	["gelato"] = {
		label = "Choc and Vanilla Gelato",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gelato.png",
		}
	},

	["chansey"] = {
		label = "Chansey",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "chansey.png",
		}
	},

	["exhaust"] = {
		label = "Vehicle Exhaust",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "exhaust.png",
		}
	},

	["pd_scanner"] = {
		label = "Vehicle Tracking Device Scanner",
		weight = 20,
		stack = true,
		close = true,
		description = "Use this to scan for vehicle trackers",
		client = {
			image = "scanner.png",
		}
	},

	["choccroissant"] = {
		label = "Chocolate Croissant",
		weight = 200,
		stack = true,
		close = true,
		description = "Chocolate Croissant from Timmies!",
		client = {
			image = "choccroissant.png",
		}
	},

	["deer2"] = {
		label = "Deer Carcass",
		weight = 3500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "deer2.png",
		}
	},

	["razorblade"] = {
		label = "Razor Blade",
		weight = 10,
		stack = true,
		close = true,
		description = "A sharp razorblade, be careful not to cut yourself!",
		client = {
			image = "razorblade.png",
		}
	},

	["gravel"] = {
		label = "Gravel",
		weight = 100,
		stack = true,
		close = true,
		description = "gravel",
		client = {
			image = "gravel.png",
		}
	},

	["prisonmeth"] = {
		label = "Crank",
		weight = 1000,
		stack = true,
		close = true,
		description = "Prison made meth of low quality.",
		client = {
			image = "prisonmeth.png",
		}
	},

	["marinara"] = {
		label = "Marinara",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "marinara.png",
		}
	},

	["usb_blue"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A blue USB flash drive",
		client = {
			image = "usb_blue.png",
		}
	},

	["chair72"] = {
		label = "Grey Sun Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair72.png",
		}
	},

	["pink_phone"] = {
		label = "Pink Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "pink_phone.png",
		}
	},

	["diamond_earring"] = {
		label = "Diamond Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring.png",
		}
	},

	["suspension1"] = {
		label = "Suspension Upgrade B",
		weight = 5700,
		stack = true,
		close = true,
		description = "Suspension Upgrade 1",
		client = {
			image = "stock_suspension.png",
		}
	},

	["mackerel"] = {
		label = "Mackerel",
		weight = 2500,
		stack = false,
		close = false,
		description = "Mackerel",
		client = {
			image = "mackerel.png",
		}
	},

	["origami12"] = {
		label = "Origami Lion",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami12.png",
		}
	},

	["chair67"] = {
		label = "White Metal Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair67.png",
		}
	},

	["prisonfarmnutrition"] = {
		label = "Plant Nutrition",
		weight = 1000,
		stack = true,
		close = false,
		description = "Plant nutrition with a Bolingbroke Penitentiary label",
		client = {
			image = "prisonfarmnutrition.png",
		}
	},

	["glass_pinotnoir"] = {
		label = "Glass of Pinot Noir",
		weight = 1000,
		stack = true,
		close = true,
		description = "If you drink no noir, you will pinot noir.",
		client = {
			image = "glass_pinotnoir.png",
		}
	},

	["cheesechickenburger"] = {
		label = "cheese chicken burger",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "cheesechickenburger.png",
		}
	},

	["gummymould"] = {
		label = "Gummy Mould",
		weight = 100,
		stack = true,
		close = true,
		description = "A mould for candy making",
		client = {
			image = "ww_gummymould.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy..",
		client = {
			image = "grapejuice.png",
		}
	},

	["gloom"] = {
		label = "Gloom",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gloom.png",
		}
	},

	["marijuana_scale"] = {
		label = "Scale",
		weight = 0,
		stack = true,
		close = false,
		description = "This is not what it looks like",
		client = {
			image = "marijuana_scale.png",
		}
	},

	["pmochi"] = {
		label = "Pink Mochi",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "mochipink.png",
		}
	},

	["omochi"] = {
		label = "Orange Mochi",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "mochiorange.png",
		}
	},

	["blackcherrygelato8th"] = {
		label = "BlackCherryGelato8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "blackcherrygelato8th.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "beer.png",
		}
	},

	["casino_member"] = {
		label = "Casino Membership",
		weight = 500,
		stack = false,
		close = false,
		description = "Diamond Casino Member Card",
		client = {
			image = "casino_member.png",
		}
	},

	["miso-paste"] = {
		label = "Flour",
		weight = 200,
		stack = true,
		close = true,
		description = "Miso paste. Mix this with water to make a soup!",
		client = {
			image = "miso-paste.png",
		}
	},

	["bmochi"] = {
		label = "Blue Mochi",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "mochiblue.png",
		}
	},

	["tots"] = {
		label = "Tits or Tots",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Sexy Tots",
		client = {
			
			image = "tots.png",
		}
	},

	["trowel"] = {
		label = "Trowel",
		weight = 1000,
		stack = true,
		close = false,
		description = "Small handheld garden shovel",
		client = {
			image = "trowel.png",
		}
	},

	["gmochi"] = {
		label = "Green Mochi",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "mochigreen.png",
		}
	},

	["chair39"] = {
		label = "Striped Wicker Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair39.png",
		}
	},

	["pd_adpt_tracker"] = {
		label = "Adept Vehicle Tracking Device",
		weight = 20,
		stack = true,
		close = true,
		description = "Place this on a vehicle to track it. Adept Quality",
		client = {
			image = "tracker.png",
		}
	},

	["clefable"] = {
		label = "Clefable",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "clefable.png",
		}
	},

	["ekans"] = {
		label = "Ekans",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ekans.png",
		}
	},

	["mountaindew"] = {
		label = "Mountain Dew",
		weight = 330,
		stack = true,
		close = true,
		description = "Do the DEW!",
		client = {
			image = "mountaindew.png",
		}
	},

	["dirty_smallglass"] = {
		label = "Dirty Small Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty small glass!",
		client = {
			image = "dirty_smallglass.png",
		}
	},

	["origami19"] = {
		label = "Origami Cockatiel",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami19.png",
		}
	},

	["pasta"] = {
		label = "Bag of Pasta",
		weight = 200,
		stack = true,
		close = false,
		description = "A bag of Pasta",
		client = {
			
			image = "pasta.png",
		}
	},

	["lemoncookies8th"] = {
		label = "Lemon Cookies 8th",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed bag",
		client = {
			image = "lemoncookies8th.png",
		}
	},

	["electrode"] = {
		label = "Electrode",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Thunder Badge",
		client = {
			image = "electrode.png",
		}
	},

	["weed_white_widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed-baggie.png",
		}
	},

	["aerodactyl"] = {
		label = "Aerodactyl",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "aerodactyl.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive game right?",
		client = {
			image = "tablet.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes.",
		client = {
			image = "grape.png",
		}
	},

	["scotch"] = {
		label = "Scotch",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Scotch",
		client = {
			image = "scotch.png",
		}
	},

	["uwububbleteablueberry"] = {
		label = "Berry Blue B-T",
		weight = 200,
		stack = true,
		close = true,
		description = "Lavender Tea with Blueberry Boba.",
		client = {
			image = "uwububbleteablueberry.png",
		}
	},

	["paper"] = {
		label = "Roll of Paper",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "paperroll.png",
		}
	},

	["funkopop_hedwig"] = {
		label = "Hedwig Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Hedwig Funkopop Toy",
		client = {
			image = "funkopop_hedwig.png",
		}
	},

	["coke_baggie"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = false,
		description = "To get happy real quick.",
		client = {
			image = "coke_baggie.png",
		}
	},

	["micard_basic"] = {
		label = "Basic Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Phewww, just basic card",
		client = {
			image = "micard_basic.png",
		}
	},

	["uncut_ruby"] = {
		label = "Uncut Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Ruby",
		client = {
			image = "uncut_ruby.png",
		}
	},

	["purrito"] = {
		label = "Purrito",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "purrito.png",
		}
	},

	["coffeemaker"] = {
		label = "Coffeemaker",
		weight = 500,
		stack = false,
		close = true,
		description = "Stolen coffeemaker",
		client = {
			image = "coffeemaker.png",
		}
	},

	["chocolatefondant"] = {
		label = "Timmies Chocolate Fondant",
		weight = 100,
		stack = true,
		close = false,
		description = "Chocolate Fondant - Make Donuts and Croissants",
		client = {
			image = "chocolatefondant.png",
		}
	},

	["cannabutter"] = {
		label = "Cannabutter",
		weight = 100,
		stack = true,
		close = true,
		description = "This butter sure do smell funny",
		client = {
			image = "ww_cannabutter.png",
		}
	},

	["adrenaline"] = {
		label = "Adrenaline",
		weight = 500,
		stack = true,
		close = true,
		description = "adrenaline",
		client = {
			image = "adrenaline.png",
		}
	},

	["flounder"] = {
		label = "Flounder",
		weight = 2500,
		stack = false,
		close = false,
		description = "Flounder",
		client = {
			image = "flounder.png",
		}
	},

	["rx6800"] = {
		label = "RX 6800",
		weight = 4000,
		stack = false,
		close = false,
		description = "RX 6800 Graphics Card",
		client = {
			image = "e2_cpu.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["softdrink"] = {
		label = "Soft Drink",
		weight = 0,
		stack = true,
		close = true,
		description = "Soft Drink..",
		client = {
			image = "softdrink.png",
		}
	},

	["funkopop_draco"] = {
		label = "Draco Malfoy Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Draco Malfoy Funkopop Toy",
		client = {
			image = "funkopop_draco.png",
		}
	},

	["gold_ring"] = {
		label = "Gold Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_ring.png",
		}
	},

	["afghankush_crop"] = {
		label = "Afghan Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "Afghan Kush Crop",
		client = {
			image = "ww_afghankush_crop.png",
		}
	},

	["nori"] = {
		label = "Nori",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nori.png",
		}
	},

	["marijuana_1oz_high"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = false,
		close = false,
		description = "1oz high grade marijuana",
		client = {
			image = "marijuana_1oz_high.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = true,
		description = "A card containing all your information to identify yourself.",
		client = {
			image = "id_card.png",
		}
	},

	["marijuana_3.5_mid"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = false,
		close = true,
		description = "3.5g mid grade marijuana",
		client = {
			image = "marijuana_3.5_mid.png",
		}
	},

	["salmon"] = {
		label = "Salmon",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "salmon.png",
		}
	},

	["cerealmilkblunt"] = {
		label = "Cereal Milk Blunt",
		weight = 0,
		stack = true,
		close = true,
		description = "Rolled Up",
		client = {
			image = "cerealmilkblunt.png",
		}
	},

	["potato"] = {
		label = "Potatoes",
		weight = 500,
		stack = true,
		close = false,
		description = "Food",
		client = {
			image = "potatoes.png",
		}
	},

	["cheesewrap"] = {
		label = "BS Cheese Wrap",
		degrade = 5760,
        decay = true,
		weight = 150,
		stack = true,
		close = true,
		description = "BurgerShot Cheese Wrap",
		client = {
			
			image = "burger-chickenwrap.png",
		}
	},

	["chair34"] = {
		label = "Red Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair34.png",
		}
	},

	["policespikes"] = {
		label = "Spike Strip",
		weight = 1000,
		stack = true,
		close = true,
		description = "Spikes to deflate tires",
		client = {
			image = "policespikes.png",
		}
	},

	["machamp"] = {
		label = "Machamp",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "machamp.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["limegreen"] = {
		label = "Xenons - Lime Green",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "limegreen.png",
		}
	},

	["lapras"] = {
		label = "Lapras",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Cascade Badge - Rare",
		client = {
			image = "lapras.png",
		}
	},

	["peanutbutterbreathblunt"] = {
		label = "PeanutButterBreathBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "peanutbutterbreathblunt.png",
		}
	},

	["sodiumhydroxide"] = {
		label = "sodiumhydroxide",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real fast.",
		client = {
			image = "sodiumhydroxide.png",
		}
	},

	["cajunwings"] = {
		label = "Cajun Wings",
		weight = 1,
		stack = true,
		close = true,
		description = "cajunwings",
		client = {
			image = "cajunwings.png",
		}
	},

	["screwdriver"] = {
		label = "Screwdriver",
		weight = 200,
		stack = true,
		close = true,
		description = "Screwdriver",
		client = {
			image = "screwdriver.png",
		}
	},

	["rx6900xt"] = {
		label = "RX 6900 XT",
		weight = 4000,
		stack = false,
		close = false,
		description = "RX 6900 XT Graphics Card",
		client = {
			image = "e2_cpu.png",
		}
	},

	["kamikaze"] = {
		label = "Kamikaze",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Kamikase Cocktail",
		client = {
			image = "kamikaze.png",
		}
	},

	["hd_jollyrancher"] = {
		label = "Rolly Ranchers",
		weight = 0,
		stack = true,
		close = false,
		description = "Hard JollyRanchers",
		client = {
			image = "hd_jollyrancher.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "sugar.png",
		}
	},

	["carbon"] = {
		label = "Carbon",
		weight = 1000,
		stack = true,
		close = false,
		description = "Carbon, a base ore.",
		client = {
			image = "carbon.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["finishmeth"] = {
		label = "Crystal Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "Crystal goodness, ready to bag.",
		client = {
			image = "methbatch.png",
		}
	},

	["glass_lemonade"] = {
		label = "Glass of Lemonade",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of lemonade!",
		client = {
			image = "glass_lemonade.png",
		}
	},

	["leyla"] = {
		label = "Leyla",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "leyla.png",
		}
	},

	["rainbowvmaxpikachu"] = {
		label = "Rainbow Pikachu",
		weight = 0,
		stack = true,
		close = false,
		description = "Rainbow Card",
		client = {
			image = "rainbowvmaxpikachu.png",
		}
	},

	["lemonade"] = {
		label = "Lemonade",
		weight = 330,
		stack = true,
		close = true,
		description = "The Secret Lemonade Drinker!",
		client = {
			image = "lemonade.png",
		}
	},

	["maccheese"] = {
		label = "Mac n Cheese",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A bowl of maccaroni and cheese",
		client = {
			
			image = "maccheese.png",
		}
	},

	["phone_module"] = {
		label = "Phone Module",
		weight = 300,
		stack = false,
		close = true,
		description = "It seems that we can fix a wet phone with this module, interesting.",
		client = {
			image = "phone_module.png",
		}
	},

	["ruby_necklace_silver"] = {
		label = "Ruby Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace_silver.png",
		}
	},

	["uwububbletearose"] = {
		label = "Rosey B-T",
		weight = 200,
		stack = true,
		close = true,
		description = "Sakura Rose Tea with Vanilla Boba.",
		client = {
			image = "uwububbletearose.png",
		}
	},

	["galaktoboureko"] = {
		label = "Galaktoboureko",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "galaktoboureko.png",
		}
	},

	["cubasil"] = {
		label = "Cucumber Basil",
		weight = 200,
		stack = true,
		close = false,
		description = "Hand full of Cucumber and Basil",
		client = {
			
			image = "cubasil.png",
		}
	},

	["turbo1"] = {
		label = "Turbo Upgrade",
		weight = 3300,
		stack = true,
		close = true,
		description = "Turbo",
		client = {
			image = "turbo.png",
		}
	},

	["cokeburn"] = {
		label = "Coke Burn",
		weight = 5000,
		stack = true,
		close = true,
		description = "Cocaine USB",
		client = {
			image = "cokeburn.png",
		}
	},

	["butter"] = {
		label = "Butter",
		weight = 100,
		stack = true,
		close = true,
		description = "Butter full of carbs",
		client = {
			image = "ww_butter.png",
		}
	},

	["pd_mili_tracker"] = {
		label = "Military Vehicle Tracking Device",
		weight = 20,
		stack = true,
		close = true,
		description = "Place this on a vehicle to track it. Military Quality",
		client = {
			image = "tracker.png",
		}
	},

	["methlab"] = {
		label = "MethLab",
		weight = 150,
		stack = true,
		close = true,
		description = "MethLab",
		client = {
			image = "lab.png",
		}
	},

	["wood"] = {
		label = "Wood",
		weight = 100,
		stack = false,
		close = true,
		description = "wood",
		client = {
			image = "wood.png",
		}
	},

	["internals"] = {
		label = "Internal Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "internals.png",
		}
	},

	["marijuana_1oz_low"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = false,
		close = false,
		description = "1oz low grade marijuana",
		client = {
			image = "marijuana_1oz_low.png",
		}
	},

	["policetablet"] = {
		label = "Police Tablet",
		weight = 1000,
		stack = false,
		close = true,
		description = "A mobile fingerprint tablet.",
		client = {
			image = "policetablet.png",
		}
	},

	["soccer"] = {
		label = "Soccer Ball",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "soccer.png",
		}
	},

	["drifttires"] = {
		label = "Drift Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drifttires.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the caaaaaaaaaaaaaar..",
		client = {
			image = "harness.png",
		}
	},

	["venusaur"] = {
		label = "Venusaur",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Rainbow Badge - Rare",
		client = {
			image = "venusaur.png",
		}
	},

	["quantum_cpu"] = {
		label = "Quantum",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd want everything to burn..",
		client = {
			image = "quantum_cpu.png",
		}
	},

	["chardonnay"] = {
		label = "Chardonnay",
		weight = 1000,
		stack = true,
		close = true,
		description = "Chardonnay for after a really long, hard day.",
		client = {
			image = "chardonnay.png",
		}
	},

	["moonshine"] = {
		label = "Moonshine",
		weight = 500,
		stack = true,
		close = false,
		description = "A bottle of moonshine!",
		client = {
			image = "moonshine.png",
		}
	},

	["cranberry"] = {
		label = "Cranberry Juice",
		weight = 200,
		stack = true,
		close = true,
		description = "Cranberry Juice",
		client = {
			image = "cranberry.png",
		}
	},

	["brake0"] = {
		label = "Stock Brakes A",
		weight = 2750,
		stack = true,
		close = true,
		description = "Stock Brake",
		client = {
			image = "brake_parts_a.png",
		}
	},

	["soybeans"] = {
		label = "Soy Beans",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soybeans.png",
		}
	},

	["tomato_crate"] = {
		label = "Tomato Crate",
		weight = 2500,
		stack = true,
		close = false,
		description = "A crate of tomatoes ready for selling!",
		client = {
			image = "tomato_crate.png",
		}
	},

	["cookedmwbcburger"] = {
		label = "Bacon Cheeseburger",
		weight = 300,
		stack = true,
		close = true,
		description = "A cooked microwavable bacon cheeseburger!",
		client = {
			image = "cookedmwbcburger.png",
		}
	},

	["nekocookie"] = {
		label = "Neko Cookie",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "catcookie.png",
		}
	},

	["heroin_1oz"] = {
		label = "Ounce of Heroin",
		weight = 280,
		stack = true,
		close = true,
		description = "A large amount of heroin.",
		client = {
			image = "heroin_1oz.png",
		}
	},

	["pidgeot"] = {
		label = "Pidgeot",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Earth Badge",
		client = {
			image = "pidgeot.png",
		}
	},

	["ergotplant"] = {
		label = "Ergot Plant",
		weight = 350,
		stack = true,
		close = false,
		description = "Pot plant containing what looks like withering follage - some of it looks infected by fungus?",
		client = {
			image = "ergotplant.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["chocolatechips"] = {
		label = "Chocolate Chips",
		weight = 100,
		stack = true,
		close = true,
		description = "Creamy Goodness",
		client = {
			image = "ww_chocolatechips.png",
		}
	},

	["gbottle"] = {
		label = "Glucose Bottle",
		weight = 1000,
		stack = false,
		close = true,
		description = "Magical Water",
		client = {
			image = "gbottle.png",
		}
	},

	["externals"] = {
		label = "Exterior Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mirror.png",
		}
	},

	["baguette_diamond"] = {
		label = "Baguette Diamonds",
		weight = 0,
		stack = true,
		close = true,
		description = "Baqueteeeeee",
		client = {
			image = "baguette_diamond.png",
		}
	},

	["wet_blue_phone"] = {
		label = "Wet Blue Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?",
		client = {
			image = "wet_blue_phone.png",
		}
	},

	["killerwhalemeat"] = {
		label = "killerwhalemeat",
		weight = 1100,
		stack = true,
		close = true,
		description = "Fish for Fishing.",
		client = {
			image = "killerwhalemeat.png",
		}
	},

	["morphinebase"] = {
		label = "Morphine Base",
		weight = 1000,
		stack = true,
		close = true,
		description = "Morphine base. You can turn this into morphine or heroin.",
		client = {
			image = "morphinebase.png",
		}
	},

	["dugtrio"] = {
		label = "Dugtrio",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Earth Badge",
		client = {
			image = "dugtrio.png",
		}
	},

	["prisonslushie"] = {
		label = "Slushie",
		weight = 1000,
		stack = true,
		close = true,
		description = "Slushie",
		client = {
			image = "prisonslushie.png",
		}
	},

	["clean_plate"] = {
		label = "Clean Plate",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean dinner plate!",
		client = {
			image = "clean_plate.png",
		}
	},

	["casino_goldchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Chip",
		client = {
			image = "casino_goldchip.png",
		}
	},

	["micard_legendary"] = {
		label = "Legendary Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Wow!! You have a legendary card!!",
		client = {
			image = "micard_legendary.png",
		}
	},

	["chair36"] = {
		label = "Comfy Ergonomic Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair36.png",
		}
	},

	["diamond_earring_silver"] = {
		label = "Diamond Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring_silver.png",
		}
	},

	["kabuto"] = {
		label = "Kabuto",
		weight = 0,
		stack = true,
		close = false,
		description = "Ultra Rare",
		client = {
			image = "kabuto.png",
		}
	},

	["meat_mtlion"] = {
		label = "Mt Lion Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Mt Lion meat!",
		client = {
			image = "meat_mtlion.png",
		}
	},

	["darktablet"] = {
		label = "Dark Tablet",
		weight = 100,
		stack = true,
		close = true,
		description = "looks dangerous",
		client = {
			image = "darktablet.png",
		}
	},

	["charizard"] = {
		label = "Charizard",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Volcano Badge - Ultra Rare",
		client = {
			image = "charizard.png",
		}
	},

	["lickitung"] = {
		label = "Lickitung",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "lickitung.png",
		}
	},

	["milkbotle"] = {
		label = "milk botle",
		weight = 100,
		stack = true,
		close = true,
		description = "milk botle",
		client = {
			image = "milkbotle.png",
		}
	},

	["marijuana_rollingpapers"] = {
		label = "Rolling Papers",
		weight = 0,
		stack = true,
		close = true,
		description = "These aint Raw Rolling Papers!!?",
		client = {
			image = "marijuana_rollingpapers.png",
		}
	},

	["stretcher"] = {
		label = "Stretcher",
		weight = 2500,
		stack = true,
		close = true,
		description = "To transport injured people",
		client = {
			image = "stretcher.png",
		}
	},

	["origami18"] = {
		label = "Origami Mouse",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami18.png",
		}
	},

	["barley_seed"] = {
		label = "Barley Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of barley seeds!",
		client = {
			image = "barley_seed.png",
		}
	},

	["bluedream_crop"] = {
		label = "Blue Dream Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "Blue Dream Crop",
		client = {
			image = "ww_bluedream_crop.png",
		}
	},

	["yoshishooter"] = {
		label = "Yoshi Shooter",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "yoshishooter.png",
		}
	},

	["cheeseburger"] = {
		label = "Cheese Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheeseburger.png",
		}
	},

	["nightvision"] = {
		label = "Night Vision goggles",
		weight = 5,
		stack = false,
		close = true,
		description = "Bravo Six, going dark",
		client = {
			image = "nightvision.png",
		}
	},

	["vusliders"] = {
		label = "Sliders",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Sliders",
		client = {
			
			image = "sliders.png",
		}
	},

	["burger-bleeder"] = {
		label = "Bleeder",
		weight = 250,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_the-bleeder.png",
		}
	},

	["meat_chickenhawk"] = {
		label = "Chickenhawk Meat",
		weight = 400,
		stack = true,
		close = true,
		description = "Chickenhawk meat!",
		client = {
			image = "meat_chickenhawk.png",
		}
	},

	["pd_poison"] = {
		label = "Poison",
		weight = 300,
		stack = true,
		close = true,
		description = "I probably shouldn't drink this... but...",
		client = {
			image = "poison.png",
		}
	},

	["banana_kush_bag"] = {
		label = "Banana Kush Bag",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "banana_kush_bag.png",
		}
	},

	["zapdos"] = {
		label = "Zapdos",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Thunder Badge - Ultra Rare",
		client = {
			image = "zapdos.png",
		}
	},

	["boosterbox"] = {
		label = "Boosterbox",
		weight = 200,
		stack = true,
		close = true,
		description = "Box Of Card Packs",
		client = {
			image = "boosterBox.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_ring.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card belonging to the Blaine County Savings Bank.",
		client = {
			image = "security_card_01.png",
		}
	},

	["tangela"] = {
		label = "Tangela",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Rainbow Badge",
		client = {
			image = "tangela.png",
		}
	},

	["flv_weed_skunk"] = {
		label = "Skunk Additive",
		weight = 200,
		stack = true,
		close = false,
		description = "Skunk Additive",
		client = {
			image = "flv_weed_skunk.png",
		}
	},

	["black_phone"] = {
		label = "Black Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "black_phone.png",
		}
	},

	["hotpink"] = {
		label = "Xenons - Hot Pink",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "hotpink.png",
		}
	},

	["alakazam"] = {
		label = "Alakazam",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Marsh Badge",
		client = {
			image = "alakazam.png",
		}
	},

	["calamari"] = {
		label = "Calamari Marinara",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "calamari.png",
		}
	},

	["pint_ambeer"] = {
		label = "Pint of AM Beer",
		weight = 400,
		stack = true,
		close = true,
		description = "Morning sun!",
		client = {
			image = "pint_ambeer.png",
		}
	},

	["beans"] = {
		label = "Coffee Beans",
		weight = 500,
		stack = true,
		close = true,
		description = "Coffee Beans.",
		client = {
			image = "beans.png",
		}
	},

	["omastar"] = {
		label = "Omastar",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Boulder Badge - Ultra Rare",
		client = {
			image = "omastar.png",
		}
	},

	["tacobread"] = {
		label = "Taco Bread",
		weight = 1000,
		stack = true,
		close = true,
		description = "Taco Bread.",
		client = {
			image = "tacobread.png",
		}
	},

	["skin_stingray"] = {
		label = "Stingray Skin",
		weight = 850,
		stack = true,
		close = true,
		description = "Stingray skin. Highly illegal!",
		client = {
			image = "skin_stingray.png",
		}
	},

	["chillypepper"] = {
		label = "Chilly Pepper",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chillypepper.png",
		}
	},

	["chair80"] = {
		label = "Orange Louncher",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair80.png",
		}
	},

	["pepsi"] = {
		label = "Pepsi",
		weight = 330,
		stack = true,
		close = true,
		description = "Every Pepsi Refreshes The World!",
		client = {
			image = "pepsi.png",
		}
	},

	["arcadegold"] = {
		label = "Gold Arcade Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Gold Arcade Card",
		client = {
			image = "arcadegold.png",
		}
	},

	["pizza"] = {
		label = "Kitty Pizza",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "catpizza.png",
		}
	},

	["bluedream_bud"] = {
		label = "Blue Dream Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "Blue Dream Bud",
		client = {
			image = "ww_bluedream_bud.png",
		}
	},

	["mint"] = {
		label = "Matcha",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "matcha.png",
		}
	},

	["presents"] = {
		label = "Present",
		weight = 1000,
		stack = true,
		close = true,
		description = "A Gift, maybe something nice is inside?",
		client = {
			image = "presents.png",
		}
	},

	["currychicken"] = {
		label = "Curry Chicken",
		weight = 1000,
		stack = true,
		close = true,
		description = "Curry Chicken",
		client = {
			image = "currychickenicon.png",
		}
	},

	["funkopop_hagrid"] = {
		label = "Hagrid Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Hagrid Funkopop Toy",
		client = {
			image = "funkopop_hagrid.png",
		}
	},

	["dirty_wineglass"] = {
		label = "Dirty Wine Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty wine glass!",
		client = {
			image = "dirty_wineglass.png",
		}
	},

	["prisonchemicals"] = {
		label = "Chemicals",
		weight = 1000,
		stack = true,
		close = false,
		description = "Some random chemicals",
		client = {
			image = "prisonchemicals.png",
		}
	},

	["rawpork"] = {
		label = "Raw Pork",
		weight = 100,
		stack = true,
		close = true,
		description = "Yum! Cereal",
		client = {
			image = "rawpork.png",
		}
	},

	["eevee"] = {
		label = "Eevee",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "eevee.png",
		}
	},

	["lsdkey"] = {
		label = "Sandoz Laboratory Key",
		weight = 1000,
		stack = false,
		close = false,
		description = "A lab key for what is labelled Sandoz Laboratory",
		client = {
			image = "lsdkey.png",
		}
	},

	["lsdcrystal"] = {
		label = "Crystal LSD",
		weight = 1000,
		stack = true,
		close = false,
		description = "Crystalised lysergic acid diethylamide. Highly potent, do not touch directly.",
		client = {
			image = "lsdcrystal.png",
		}
	},

	["chair4"] = {
		label = "Old Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair4.png",
		}
	},

	["fishingloot"] = {
		label = "Metal Box",
		weight = 500,
		stack = true,
		close = true,
		description = "Seems to be a corroded from the salt water, Should be easy to open",
		client = {
			image = "fishingloot.png",
		}
	},

	["pmushroom"] = {
		label = "Mushroom",
		weight = 100,
		stack = false,
		close = true,
		description = "Mushroom",
		client = {
			image = "pmushroom.png",
		}
	},

	["cascadeBadge"] = {
		label = "CascadeBadge",
		weight = 0,
		stack = true,
		close = false,
		description = "2/8 for Trophy Badge",
		client = {
			image = "cascadeBadge.png",
		}
	},

	["chair2"] = {
		label = "Wood Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair2.png",
		}
	},

	["glass_cocacola"] = {
		label = "Glass of CocaCola",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of cocacola!",
		client = {
			image = "glass_cocacola.png",
		}
	},

	["axehandle"] = {
		label = "Axe Handle",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "axehandle.png",
		}
	},

	["prosciuttiobox"] = {
		label = "Boxed Prosciuttio E Funghi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizzabox.png",
		}
	},

	["shotfries"] = {
		label = "Shot Fries",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Shot Fries",
		client = {
			
			image = "burger-fries.png",
		}
	},

	["bigfoot"] = {
		label = "Big Foot Carcass",
		weight = 9000,
		stack = true,
		close = false,
		description = "A human in a costume??",
		client = {
			image = "bigfoot.png",
		}
	},

	["chair7"] = {
		label = "Fancy Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair7.png",
		}
	},

	["chair35"] = {
		label = "Ergonomic Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair35.png",
		}
	},

	["applecrumble"] = {
		label = "Apple Crumble",
		weight = 50,
		stack = false,
		close = true,
		description = "Apple Crumble",
		client = {
			image = "applecrumble.png",
		}
	},

	["cup_coffee"] = {
		label = "Cup of Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of coffee.",
		client = {
			image = "cup_coffee.png",
		}
	},

	["urkle"] = {
		label = "URKLE BERRY (HYBRID)",
		weight = 50,
		stack = false,
		close = true,
		description = "URKLE BERRY (HYBRID)",
		client = {
			image = "joint.png",
		}
	},

	["greenlight_phone"] = {
		label = "Green Light Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "greenlight_phone.png",
		}
	},

	["spoiler2"] = {
		label = "Custom Spoiler",
		weight = 5000,
		stack = true,
		close = true,
		description = "Custom Spoiler",
		client = {
			image = "spoiler2.png",
		}
	},

	["grinder"] = {
		label = "Grinder",
		weight = 100,
		stack = true,
		close = true,
		description = "A Grinder",
		client = {
			image = "ww_grinder.png",
		}
	},

	["emerald"] = {
		label = "Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A Emerald that shimmers",
		client = {
			image = "emerald.png",
		}
	},

	["blueberry_seed"] = {
		label = "Blueberry Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of blueberry seeds!",
		client = {
			image = "blueberry_seed.png",
		}
	},

	["e2_cpu"] = {
		label = "E2",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd want everything to burn..",
		client = {
			image = "e2_cpu.png",
		}
	},

	["barry"] = {
		label = "Barry",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "barry.png",
		}
	},

	["orange_crate"] = {
		label = "Orange Crate",
		weight = 3500,
		stack = true,
		close = false,
		description = "A crate of oranges ready for selling!",
		client = {
			image = "orange_crate.png",
		}
	},

	["bloodandsand"] = {
		label = "Blood and Sand",
		weight = 400,
		stack = true,
		close = true,
		description = "Blood & Sand!",
		client = {
			image = "bloodandsand.png",
		}
	},

	["beedrill"] = {
		label = "Beedrill",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "beedrill.png",
		}
	},

	["banana"] = {
		label = "Banana",
		weight = 200,
		stack = true,
		close = true,
		description = "Banana.",
		client = {
			image = "banana.png",
		}
	},

	["maize_seed"] = {
		label = "Maize Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of maize seeds!",
		client = {
			image = "maize_seed.png",
		}
	},

	["canofcorn"] = {
		label = "Can Of Corn",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "canofcorn.png",
		}
	},

	["drug_scales"] = {
		label = "Scale",
		weight = 1500,
		stack = true,
		close = false,
		description = "A set of premium scales for weighing out decimals..",
		client = {
			image = "drug_scales.png",
		}
	},

	["uncut_emerald"] = {
		label = "Uncut Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Emerald",
		client = {
			image = "uncut_emerald.png",
		}
	},

	["firstaidforpet"] = {
		label = "First aid for pet",
		weight = 500,
		stack = true,
		close = true,
		description = "Revive your pet!",
		client = {
			image = "firstaidforpet.png",
		}
	},

	["methbatch"] = {
		label = "Liquid Meth",
		weight = 500,
		stack = true,
		close = false,
		description = "A cooked batch of meth, ready to be cooled and served to the public.",
		client = {
			image = "liquidmeth.png",
		}
	},

	["hypno"] = {
		label = "Hypno",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Marsh Badge",
		client = {
			image = "hypno.png",
		}
	},

	["meat_whale"] = {
		label = "Whale Meat",
		weight = 6000,
		stack = true,
		close = true,
		description = "Whale meat!",
		client = {
			image = "meat_whale.png",
		}
	},

	["milkshake"] = {
		label = "Milkshake",
		degrade = 5760,
        decay = true,
		weight = 500,
		stack = true,
		close = true,
		description = "BurgerShot Milkshake",
		client = {
			image = "burger-milkshake.png",
		}
	},

	["farmguide"] = {
		label = "Farming Handbook",
		weight = 100,
		stack = true,
		close = false,
		description = "Learn all about farming with this handbook!",
		client = {
			image = "farmguide.png",
		}
	},

	["chair81"] = {
		label = "Blue Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair81.png",
		}
	},


	["frozennugget"] = {
		label = "Frozen Nuggets",
		weight = 500,
		stack = true,
		close = false,
		description = "Bag of Frozen Nuggets",
		client = {
			image = "burger-frozennugget.png",
		}
	},

	["goldenburn"] = {
		label = "Golden USB",
		weight = 5000,
		stack = true,
		close = true,
		description = "Golden USB",
		client = {
			image = "goldenburn.png",
		}
	},

	["chair28"] = {
		label = "Grey Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair28.png",
		}
	},

	["lenny"] = {
		label = "Lenny",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "lenny.png",
		}
	},

	["lithium"] = {
		label = "Lithium",
		weight = 150,
		stack = true,
		close = true,
		description = "Lithium",
		client = {
			image = "lithium.png",
		}
	},

	["kaknua"] = {
		label = "Kaknua",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "kaknua.png",
		}
	},

	["markedbills"] = {
		label = "Blood Money",
		weight = 0,
		stack = true,
		close = false,
		description = "Illegally Posessed Money",
		client = {
			image = "markedbills.png",
		}
	},

	["chair96"] = {
		label = "Light Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair96.png",
		}
	},

	["drug_grinder"] = {
		label = "Weed Grinder",
		weight = 1500,
		stack = true,
		close = false,
		description = "A Weed Grinder to grind up weed.",
		client = {
			image = "drug_grinder.png",
		}
	},

	["gummy_rasberry"] = {
		label = "Rasberry Kush Gummy",
		weight = 4,
		stack = true,
		close = true,
		description = "A Rashberry Kush Gummy - Not Safe for Kids!",
		client = {
			image = "ww_rasberrygummies.png",
		}
	},

	["mixednails"] = {
		label = "Mixed Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Mixed Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["onion"] = {
		label = "Onion",
		weight = 100,
		stack = true,
		close = false,
		description = "An onion",
		client = {
			image = "burger-onion.png",
		}
	},

	["backwood"] = {
		label = "Backwood",
		weight = 0,
		stack = true,
		close = true,
		description = "BackWood",
		client = {
			image = "backwood.png",
		}
	},

	["boosterpack"] = {
		label = "Boosterpack",
		weight = 0,
		stack = true,
		close = true,
		description = "Pack of Cards",
		client = {
			image = "boosterPack.png",
		}
	},

	["flv_weed_ak47"] = {
		label = "AK47 Additive",
		weight = 200,
		stack = true,
		close = false,
		description = "AK47 Additive",
		client = {
			image = "flv_weed_ak47.png",
		}
	},

	["kuz_goldcoin"] = {
		label = "Gold coin",
		weight = 150,
		stack = true,
		close = false,
		description = "Gold coin",
		client = {
			image = "kuz_goldcoin.png",
		}
	},

	["briefcasett"] = {
		label = "Briefcase",
		weight = 2000,
		stack = false,
		close = true,
		description = "Briefcase",
		client = {
			image = "briefcase.png",
		}
	},

	["garypaytonblunt"] = {
		label = "GaryPaytonBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "garypaytonblunt.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Resealable Bag",
		weight = 1,
		stack = true,
		close = false,
		description = "A small empty bag",
		client = {
			image = "empty_weed_bag.png",
		}
	},

	["onix"] = {
		label = "Onix",
		weight = 0,
		stack = true,
		close = false,
		description = "5/6 for Boulder Badge - Rare",
		client = {
			image = "onix.png",
		}
	},

	["timsglazeddonut"] = {
		label = "Glazed Donut",
		weight = 5,
		stack = true,
		close = true,
		description = "Glazed Donut from Timmies!",
		client = {
			image = "timsglazeddonut.png",
		}
	},

	["skirts"] = {
		label = "Vehicle Skirts",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "skirts.png",
		}
	},

	["leather"] = {
		label = "Leather",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big taco brother",
		client = {
			image = "leather.png",
		}
	},

	["ninetails"] = {
		label = "Ninetails",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Volcano badge",
		client = {
			image = "ninetails.png",
		}
	},

	["casino_donut"] = {
		label = "Casino Donut",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Donut",
		client = {
			image = "casino_donut.png",
		}
	},

	["casino_coffee"] = {
		label = "Casino Coffee",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Coffee",
		client = {
			image = "casino_coffee.png",
		}
	},

	["morphine"] = {
		label = "Morphine",
		weight = 100,
		stack = true,
		close = true,
		description = "Morphine. Good for pain but also a good time!",
		client = {
			image = "morphine.png",
		}
	},

	["weezing"] = {
		label = "Weezing",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Soul Badge",
		client = {
			image = "weezing.png",
		}
	},

	["ramen"] = {
		label = "Bowl of Ramen",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "ramen.png",
		}
	},

	["burger-meatfree"] = {
		label = "MeatFree",
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_meat-free.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed-plant-seed.png",
		}
	},

	["casino_whitechip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Slot Machine Chip",
		client = {
			image = "casino_whitechip.png",
		}
	},

	["poundcakeblunt"] = {
		label = "PoundCakeBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "poundcakeblunt.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple-Haze: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest purple-haze flower!",
		client = {
			image = "weed_purple-haze.png",
		}
	},

	["chair29"] = {
		label = "Blue Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair29.png",
		}
	},

	["vacid"] = {
		label = "Variegatic acid",
		weight = 100,
		stack = false,
		close = true,
		description = "Chemical.",
		client = {
			image = "vacid.png",
		}
	},

	["mocha"] = {
		label = "Mocha Meow",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mochameow.png",
		}
	},

	["origami9"] = {
		label = "Origami Whale",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami9.png",
		}
	},

	["marijuana_1oz_mid"] = {
		label = "1oz marijuana",
		weight = 2800,
		stack = false,
		close = false,
		description = "1oz mid grade marijuana",
		client = {
			image = "marijuana_1oz_mid.png",
		}
	},

	["meat_chicken"] = {
		label = "Chicken Meat",
		weight = 700,
		stack = true,
		close = true,
		description = "Chicken meat!",
		client = {
			image = "meat_chicken.png",
		}
	},

	["printerdocument"] = {
		label = "Printer Document",
		weight = 50,
		stack = false,
		close = true,
		description = "printer document",
		client = {
			image = "printerdocument.png",
		}
	},

	["bobcatkeycard"] = {
		label = "Bobcat Security Card",
		weight = 1000,
		stack = true,
		close = true,
		description = "A keycard used at the Bobcat Security Deposit..",
		client = {
			image = "bobcatkeycard.png",
		}
	},

	["chair31"] = {
		label = "Black Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair31.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful.. Also useful to open your beers :)",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["boba"] = {
		label = "Boba",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			
			image = "boba.png",
		}
	},

	["bbobatea"] = {
		label = "Blue Boba Tea",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bubbleteablue.png",
		}
	},

	["edible_snickerdoodle"] = {
		label = "Buddy Crocker Doodle",
		weight = 4,
		stack = true,
		close = true,
		description = "Buddy Crockers Homemade Goods",
		client = {
			image = "ww_snickerdoodle.png",
		}
	},

	["pizzmushrooms"] = {
		label = "Mushrooms",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mushrooms.png",
		}
	},

	["croissantdough"] = {
		label = "Croissant Dough",
		weight = 200,
		stack = true,
		close = false,
		description = "Croissant Dough",
		client = {
			image = "croissantdough.png",
		}
	},

	["ponypink"] = {
		label = "Xenons - Pony Pink",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "ponypink.png",
		}
	},

	["hitmonchan"] = {
		label = "Hitmonchan",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "hitmonchan.png",
		}
	},

	["origami2"] = {
		label = "Origami Spider",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami2.png",
		}
	},

	["can"] = {
		label = "Empty Can",
		weight = 10,
		stack = true,
		close = false,
		description = "An empty can, good for recycling",
		client = {
			image = "can.png",
		}
	},

	["catcoffee"] = {
		label = "Cat Coffee",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "catcoffee.png",
		}
	},

	["pd_red_mushroom"] = {
		label = "Red Mushroom",
		weight = 300,
		stack = true,
		close = true,
		description = "I should look for a fruit stall",
		client = {
			image = "red_mushroom.png",
		}
	},

	["growler"] = {
		label = "Growler",
		weight = 100,
		stack = true,
		close = false,
		description = "A empty growler!",
		client = {
			image = "growler.png",
		}
	},

	["cappucc"] = {
		label = "Cappuccinotini",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Cappuccinotini Cocktail",
		client = {
			image = "cappucc.png",
		}
	},

	["sapphire_earring_silver"] = {
		label = "Sapphire Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring_silver.png",
		}
	},

	["chair12"] = {
		label = "Used Brown Office Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair12.png",
		}
	},

	["cbo"] = {
		label = "cbo",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "cbo.png",
		}
	},

	["delivericok"] = {
		label = "Delivery Coke",
		weight = 50,
		stack = false,
		close = true,
		description = "Delivery Coke",
		client = {
			image = "delivericok.png",
		}
	},

	["cerveza"] = {
		label = "cerveza",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "cerveza.png",
		}
	},

	["blue_dream_joint"] = {
		label = "Blue Dream Joint",
		weight = 200,
		stack = true,
		close = true,
		description = "Good joint",
		client = {
			image = "blue_dream_joint.png",
		}
	},

	["suspension0"] = {
		label = "Stock Suspension A",
		weight = 5500,
		stack = true,
		close = true,
		description = "Stock Suspension",
		client = {
			image = "stock_suspension.png",
		}
	},

	["pizzaslice"] = {
		label = "Pizza Slice",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "pizzaslice.png",
		}
	},

	["origami7"] = {
		label = "Origami Phoenix",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami7.png",
		}
	},

	["moonshine_mash"] = {
		label = "Moonshine Mash",
		weight = 5000,
		stack = true,
		close = false,
		description = "A bucket of moonshine mash!",
		client = {
			image = "moonshine_mash.png",
		}
	},

	["gloryon"] = {
		label = "Gloryon",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "gloryon.png",
		}
	},

	["uvlight"] = {
		label = "UV Flashlight",
		weight = 300,
		stack = false,
		close = true,
		description = "A flashlight to see fingerprints",
		client = {
			image = "uvlight.png",
		}
	},

	["weddingcake_joint"] = {
		label = "Wedding Cake Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "Wedding Cake Joint",
		client = {
			image = "ww_weddingcake_joint.png",
		}
	},

	["chair26"] = {
		label = "Blue Plastic Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair26.png",
		}
	},

	["rtx3070ti"] = {
		label = "RTX 3070TI",
		weight = 4000,
		stack = false,
		close = false,
		description = "RTX 3070TI Graphics Card",
		client = {
			image = "e2_cpu.png",
		}
	},

	["rtx3080"] = {
		label = "RTX 3080",
		weight = 4000,
		stack = false,
		close = false,
		description = "RTX 3080 Graphics Card",
		client = {
			image = "standard_cpu.png",
		}
	},

	["goldore"] = {
		label = "Gold Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Gold Ore",
		client = {
			image = "goldore.png",
		}
	},

	["nuggets"] = {
		label = "nuggets",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "nuggets.png",
		}
	},

	["white_phone"] = {
		label = "White Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "white_phone.png",
		}
	},

	["crack_baggy"] = {
		label = "1g Bag of Crack",
		weight = 10,
		stack = true,
		close = true,
		description = "Man your about to lose some teeth!",
		client = {
			image = "crack_baggy.png",
		}
	},

	["casino_redchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Inside Track Chip",
		client = {
			image = "casino_redchip.png",
		}
	},

	["cactus_seed"] = {
		label = "Cactus Seed",
		weight = 1,
		stack = true,
		close = false,
		description = "A handful of cactus seeds!",
		client = {
			image = "cactus_seed.png",
		}
	},

	["exeggcute"] = {
		label = "Exeggcute",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "exeggcute.png",
		}
	},

	["goldenheist"] = {
		label = "Casino Heist USB",
		weight = 5000,
		stack = true,
		close = true,
		description = "Casino Heist USB",
		client = {
			image = "goldenburn.png",
		}
	},

	["cocaine"] = {
		label = "Cocaine",
		weight = 10,
		stack = true,
		close = false,
		description = "Processed Cocaine",
		client = {
			image = "cocaine.png",
		}
	},

	["chair108"] = {
		label = "White Casino Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair108.png",
		}
	},

	["greencrack_bud"] = {
		label = "Green Crack Bud",
		weight = 2,
		stack = true,
		close = false,
		description = "Green Crack Bud",
		client = {
			image = "ww_greencrack_bud.png",
		}
	},

	["timscookedmeat"] = {
		label = "Cooked Meat",
		weight = 100,
		stack = true,
		close = false,
		description = "Cooked Timmies Meat",
		client = {
			image = "cookedmeat.png",
		}
	},

	["weed_gelato"] = {
		label = "Gelato: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest gelato flower!",
		client = {
			image = "weed_gelato.png",
		}
	},

	["packedtaco"] = {
		label = "Packed Taco",
		weight = 3500,
		stack = true,
		close = true,
		description = "Packed Taco",
		client = {
			image = "packedtaco.png",
		}
	},

	["kabutops"] = {
		label = "Kabutops",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Boulder Badge - Ultra Rare",
		client = {
			image = "kabutops.png",
		}
	},

	["chair70"] = {
		label = "Dark Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair70.png",
		}
	},

	["kuz_rarecoin"] = {
		label = "Rare coin",
		weight = 250,
		stack = false,
		close = false,
		description = "Rare coin",
		client = {
			image = "kuz_rarecoin.png",
		}
	},

	["chair42"] = {
		label = "Brown Metal Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair42.png",
		}
	},

	["lando"] = {
		label = "Lando",
		weight = 1000,
		stack = true,
		close = true,
		description = "Toy",
		client = {
			image = "lando.png",
		}
	},

	["kuz_watch"] = {
		label = "Expensive watch",
		weight = 500,
		stack = true,
		close = false,
		description = "Expensive watch",
		client = {
			image = "kuz_watch.png",
		}
	},

	["peanutbutterbreath8th"] = {
		label = "PeanutButterBreath8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "peanutbutterbreath8th.png",
		}
	},

	["haunter"] = {
		label = "Haunter",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "haunter.png",
		}
	},

	["ruby_earring"] = {
		label = "Ruby Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring.png",
		}
	},

	["charcoal"] = {
		label = "Charcoal",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "charcoal.png",
		}
	},

	["tequila"] = {
		label = "Tequila",
		weight = 200,
		stack = true,
		close = true,
		description = "Tequila",
		client = {
			image = "tequila.png",
		}
	},

	["grapes"] = {
		label = "Grapes",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grapes.png",
		}
	},

	["meat_coyote"] = {
		label = "Coyote Meat",
		weight = 700,
		stack = true,
		close = true,
		description = "Coyote meat!",
		client = {
			image = "meat_coyote.png",
		}
	},

	["midori"] = {
		label = "Midori",
		weight = 200,
		stack = true,
		close = true,
		description = "Midori",
		client = {
			image = "midori.png",
		}
	},

	["whitewidow_joint"] = {
		label = "White Widow Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "White Widow Joint",
		client = {
			image = "ww_whitewidow_joint.png",
		}
	},

	["chair75"] = {
		label = "Oak Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair75.png",
		}
	},

	["shotnuggets"] = {
		label = "Shot Nuggets",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Burgershot Nuggets",
		client = {
			
			image = "burger-shotnuggets.png",
		}
	},

	["cookie"] = {
		label = "Chocolate Chip Cookie",
		weight = 600,
		stack = true,
		close = true,
		description = "Tasty Cookie.",
		client = {
			image = "cookie.png",
		}
	},

	["pig_leather"] = {
		label = "Pig Skin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pig_leather.png",
		}
	},

	["ocb_paper"] = {
		label = "Ocb Paper",
		weight = 200,
		stack = true,
		close = true,
		description = "Ocb paper for rolling joints",
		client = {
			image = "ocb_paper.png",
		}
	},

	["c4"] = {
		label = "c4",
		weight = 10,
		stack = true,
		close = true,
		description = "Illegal Explosive",
		client = {
			image = "c4_bank.png",
		}
	},

	["burger-torpedo"] = {
		label = "Torpedo",
		weight = 310,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_torpedo.png",
		}
	},

	["boar2"] = {
		label = "Boar Carcass",
		weight = 3500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "boar2.png",
		}
	},

	["glass_rum"] = {
		label = "Glass of Rum",
		weight = 200,
		stack = true,
		close = true,
		description = "A small glass of vodka!",
		client = {
			image = "glass_rum.png",
		}
	},

	["bigcrispybbq"] = {
		label = "bigcrispybbq",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "bigcrispybbq.png",
		}
	},

	["raw_bacon"] = {
		label = "Raw Bacon",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_bacon.png",
		}
	},

	["sapphire_necklace"] = {
		label = "Sapphire Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace.png",
		}
	},

	["funkopop_harrypotter"] = {
		label = "Harry Potter Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Harry Potter Funkopop Toy",
		client = {
			image = "funkopop_harrypotter.png",
		}
	},

	["tea"] = {
		label = "Flour",
		weight = 200,
		stack = true,
		close = true,
		description = "Its just tea...",
		client = {
			image = "tea.png",
		}
	},

	["cutted_wood"] = {
		label = "Cutted Wood",
		weight = 100,
		stack = false,
		close = true,
		description = "cutted wood",
		client = {
			image = "cutted_wood.png",
		}
	},

	["jbcocktail"] = {
		label = "James Bond Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "jbcocktail.png",
		}
	},

	["diamond_ring_silver"] = {
		label = "Diamond Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_ring_silver.png",
		}
	},

	["rawbacon"] = {
		label = "Raw Bacon",
		weight = 200,
		stack = true,
		close = false,
		description = "Raw Bacon",
		client = {
			image = "rawbacon.png",
		}
	},

	["strawberry_crate"] = {
		label = "Strawberry Crate",
		weight = 2500,
		stack = true,
		close = false,
		description = "A crate of strawberries ready for selling!",
		client = {
			image = "strawberry_crate.png",
		}
	},

	["bbqseason"] = {
		label = "BBQSeason",
		weight = 1,
		stack = true,
		close = true,
		description = "bbqseason.",
		client = {
			image = "bbqseason.png",
		}
	},

	["dbcocktail"] = {
		label = "Dragon Ball Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "dbcocktail.png",
		}
	},

	["slowbro"] = {
		label = "Slowbro",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "slowbro.png",
		}
	},

	["lemonpepperwings"] = {
		label = "Lemon Pepper Wings",
		weight = 1,
		stack = true,
		close = true,
		description = "lemonpepperwings",
		client = {
			image = "lemonpepperwings.png",
		}
	},

	["frenchtoast"] = {
		label = "French Toast",
		degrade = 5760,
        decay = true,
		weight = 600,
		stack = true,
		close = true,
		description = "French Toast.",
		client = {
			image = "frenchtoast.png",
		}
	},

	["coke10g"] = {
		label = "10g Coke",
		weight = 1000,
		stack = true,
		close = false,
		description = "10 grams of cocaine",
		client = {
			image = "coke10g.png",
		}
	},

	["hamburgesadepollo"] = {
		label = "hamburgesadepollo",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "hamburgesadepollo.png",
		}
	},

	["sapphire_necklace_silver"] = {
		label = "Sapphire Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace_silver.png",
		}
	},

	["nidoran"] = {
		label = "Nidoran",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "nidoran.png",
		}
	},

	["chair83"] = {
		label = "Orange Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair83.png",
		}
	},

	["greencrack_crop"] = {
		label = "Green Crack Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "Green Crack Crop",
		client = {
			image = "ww_greencrack_crop.png",
		}
	},

	["icedlatte"] = {
		label = "Iced Latte",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "icedlatte.png",
		}
	},

	["chair68"] = {
		label = "White Metal Dining Chair 2",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair68.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed-plant-seed.png",
		}
	},

	["chair99"] = {
		label = "Gamer Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair99.png",
		}
	},

	["cooked_pork"] = {
		label = "Cooked Pork",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_pork.png",
		}
	},

	["redwoodcigs"] = {
		label = "Redwood Cigarettes",
		weight = 50,
		stack = false,
		close = true,
		description = "Pack of Cigarettes, Made in USA",
		client = {
			image = "redwoodcigs.png",
		}
	},

	["emsbag"] = {
		label = "emsbag",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emsbag.png",
		}
	},

	["chair51"] = {
		label = "Green Lawn Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair51.png",
		}
	},

	["wet_white_phone"] = {
		label = "Wet White Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "wet_white_phone.png",
		}
	},

	["stingraymeat"] = {
		label = "stingraymeat",
		weight = 1111,
		stack = true,
		close = true,
		description = "Fish for Fishing.",
		client = {
			image = "stingraymeat.png",
		}
	},

	["bumper"] = {
		label = "Vehicle Bumper",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bumper.png",
		}
	},

	["garlicparmesanseason"] = {
		label = "Garlic Parmesan Season",
		weight = 1,
		stack = true,
		close = true,
		description = "garlicparmesanseason.",
		client = {
			image = "garlicparmesanseason.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 100,
		stack = true,
		close = true,
		description = "The fine mans drink, not something most people can afford",
		client = {
			image = "whiskey.png",
		}
	},

	["miso"] = {
		label = "Miso Soup",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "miso.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening.",
		client = {
			image = "wine.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some ATM systems.",
		client = {
			image = "usb_device.png",
		}
	},

	["bigmac"] = {
		label = "bigmac",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "bigmac.png",
		}
	},

	["weed_water"] = {
		label = "Distilled Water",
		weight = 1000,
		stack = true,
		close = false,
		description = "Distilled water for your plants",
		client = {
			image = "weed_water.png",
		}
	},

	["og_kush_bag"] = {
		label = "Og Kush Bag",
		weight = 200,
		stack = true,
		close = true,
		description = "Weed for packing",
		client = {
			image = "og_kush_bag.png",
		}
	},

	["edible_cchip"] = {
		label = "Buddy Crocker Chip",
		weight = 4,
		stack = true,
		close = true,
		description = "Buddy Crockers Homemade Goods",
		client = {
			image = "ww_chocochip.png",
		}
	},

	["benzocaine"] = {
		label = "Benzocaine",
		weight = 500,
		stack = true,
		close = true,
		description = "Benzo? You got a toothache mate?",
		client = {
			image = "benzocaine.png",
		}
	},

	["weed_amnesia_seed_m"] = {
		label = "Amnesia: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male amnesia seed!",
		client = {
			image = "weed_amnesia_seed_m.png",
		}
	},

	["appletini"] = {
		label = "Appletini",
		weight = 400,
		stack = true,
		close = true,
		description = "Cubra Libre!",
		client = {
			image = "appletini.png",
		}
	},

	["chickenseason"] = {
		label = "ChickenSeason",
		weight = 0,
		stack = true,
		close = true,
		description = "Chicken Seasoning...",
		client = {
			image = "chickenseason.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle.. a little better..",
		client = {
			image = "advancedkit.png",
		}
	},

	["weed_gelato_seed_m"] = {
		label = "Gelato: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male gelato seed!",
		client = {
			image = "weed_gelato_seed_m.png",
		}
	},

	["edible_peanutcookie"] = {
		label = "Buddy Peanutbutter Cookie",
		weight = 4,
		stack = true,
		close = true,
		description = "Buddy Crockers Homemade Goods",
		client = {
			image = "ww_peanutbuttercookie.png",
		}
	},

	["5ct_tennischain"] = {
		label = "Iced Out Chain",
		weight = 1000,
		stack = true,
		close = true,
		description = "Custom Chain Sum Light...",
		client = {
			image = "5ct_tennischain.png",
		}
	},

	["kuz_silvercoin"] = {
		label = "Silver coin",
		weight = 100,
		stack = true,
		close = false,
		description = "Silver coin",
		client = {
			image = "kuz_silvercoin.png",
		}
	},

	["marijuana_water"] = {
		label = "Plant Water",
		weight = 0,
		stack = true,
		close = true,
		description = "Plant water",
		client = {
			image = "marijuana_water.png",
		}
	},

	["chair76"] = {
		label = "Black Deco Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair76.png",
		}
	},

	["dewgong"] = {
		label = "Dewgong",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "dewgong.png",
		}
	},

	["batbase"] = {
		label = "Bat Base",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "batbase.png",
		}
	},

	["cow_leather"] = {
		label = "Cow Skin",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cow_leather.png",
		}
	},

	["burger-sodasyrup"] = {
		label = "Soda Syrup",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_hfcs.png",
		}
	},

	["origami8"] = {
		label = "Origami Plane",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "origami8.png",
		}
	},

	["eggburger"] = {
		label = "eggburger",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "eggburger.png",
		}
	},

	["capricciosa"] = {
		label = "Capriccosa",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "capricciosa.png",
		}
	},

	["marijuana_joint3g"] = {
		label = "Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "3g joint",
		client = {
			image = "marijuana_joint3g.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 10000,
		stack = false,
		close = true,
		description = "Some protection won't hurt.. right? (One-time use)",
		client = {
			image = "armor.png",
		}
	},

	["lsdsheet"] = {
		label = "Sheet of LSD",
		weight = 500,
		stack = true,
		close = false,
		description = "A sheet of blotting paper which has absorbed LSD concentrate ready for cutting.",
		client = {
			image = "lsdsheet.png",
		}
	},

	["deluxesandwich"] = {
		label = "Deluxe Sandwich",
		weight = 0,
		stack = true,
		close = true,
		description = "Deluxe Sandwich..",
		client = {
			image = "deluxesandwich.png",
		}
	},

	["chair23"] = {
		label = "Posh White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair23.png",
		}
	},

	["weed_white-widow_joint"] = {
		label = "White-Widow: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest white-widow!",
		client = {
			image = "weed_white-widow_joint.png",
		}
	},

	["rtx3070"] = {
		label = "RTX 3070",
		weight = 4000,
		stack = false,
		close = false,
		description = "RTX 3070 Graphics Card",
		client = {
			image = "e2_cpu.png",
		}
	},

	["bag_cocke"] = {
		label = "Bag Of Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "bag cocke",
		client = {
			image = "bag_cocke.png",
		}
	},

	["venomoth"] = {
		label = "Venomoth",
		weight = 0,
		stack = true,
		close = false,
		description = "4/6 for Soul Badge",
		client = {
			image = "venomoth.png",
		}
	},

	["emptysack"] = {
		label = "Sack",
		weight = 100,
		stack = true,
		close = false,
		description = "A empty sack for storing crops!",
		client = {
			image = "emptysack.png",
		}
	},

	["gelatine"] = {
		label = "Gelatine",
		weight = 100,
		stack = true,
		close = true,
		description = "You could make some jello out of this",
		client = {
			image = "ww_gelatine.png",
		}
	},

	["margherita"] = {
		label = "Margherita",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "margherita.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky..",
		client = {
			image = "binoculars.png",
		}
	},

	["pickaxe"] = {
		label = "Pickaxe",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pickaxe.png",
		}
	},

	["usb3"] = {
		label = "Pink USB",
		weight = 100,
		stack = true,
		close = true,
		description = "The Blank USB has downloaded a particular encryption marking it pink.",
		client = {
			image = "usbpink.png",
		}
	},

	["pancake"] = {
		label = "PawCake",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pawcakes.png",
		}
	},

	["meat_rabbit"] = {
		label = "Rabbit Meat",
		weight = 700,
		stack = true,
		close = true,
		description = "Rabbit meat!",
		client = {
			image = "meat_rabbit.png",
		}
	},

	["deliverimon"] = {
		label = "Delivery Money",
		weight = 50,
		stack = false,
		close = true,
		description = "Delivery Money",
		client = {
			image = "deliverimon.png",
		}
	},

	["weed_ak47_joint"] = {
		label = "AK47: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest ak47!",
		client = {
			image = "weed_ak47_joint.png",
		}
	},

	["weed_gelato_joint"] = {
		label = "Gelato: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest gelato!",
		client = {
			image = "weed_gelato_joint.png",
		}
	},

	["glass_rumlemon"] = {
		label = "Glass of Rum Lemonade",
		weight = 200,
		stack = true,
		close = true,
		description = "A small glass of rum lemonade!",
		client = {
			image = "glass_rumlemon.png",
		}
	},

	["goldenshower"] = {
		label = "Xenons - Golden Shower",
		weight = 2200,
		stack = true,
		close = true,
		description = "Coloured Headlights",
		client = {
			image = "goldenshower.png",
		}
	},

	["primeape"] = {
		label = "Primeape",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "primeape.png",
		}
	},

	["weed_skunk_crop"] = {
		label = "Skunk: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest skunk flower!",
		client = {
			image = "weed_skunk_crop.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "#Coral yow",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "It is very fragile, watch out.",
		client = {
			image = "glassplate.png",
		}
	},

	["marijuana_3.5_high"] = {
		label = "3.5g marijuana",
		weight = 2800,
		stack = false,
		close = true,
		description = "3.5g high grade marijuana",
		client = {
			image = "marijuana_3.5_high.png",
		}
	},

	["mint-flavoring"] = {
		label = "Mint Flavoring",
		weight = 200,
		stack = true,
		close = true,
		description = "Mint flavoring for Bubble Tea!",
		client = {
			image = "mint-flavoring.png",
		}
	},

	["hammerhandle"] = {
		label = "Hammer Handle",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "hammerhandle.png",
		}
	},

	["flv_weed_purple-haze"] = {
		label = "Purple Additive",
		weight = 200,
		stack = true,
		close = false,
		description = "Purple Haze Additive",
		client = {
			image = "flv_weed_purple-haze.png",
		}
	},

	["mechboard"] = {
		label = "Mechanic Sheet",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mechboard.png",
		}
	},

	["afghankush_joint"] = {
		label = "Afghan Kush Joint",
		weight = 2,
		stack = true,
		close = false,
		description = "Afghan Kush Joint",
		client = {
			image = "ww_afghankush_joint.png",
		}
	},

	["timsbostoncreamdonut"] = {
		label = "Boston Cream Donut",
		weight = 5,
		stack = true,
		close = true,
		description = "Boston Cream Donut from Timmies!",
		client = {
			image = "timsbostoncreamdonut.png",
		}
	},

	["chair22"] = {
		label = "Posh Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair22.png",
		}
	},

	["micard_booster_pack1"] = {
		label = "Booster Pack",
		weight = 0,
		stack = true,
		close = true,
		description = "Contains 5 cards",
		client = {
			image = "micard_booster_pack1.png",
		}
	},

	["stingray"] = {
		label = "Stingray",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "stingray.png",
		}
	},

	["clean_wineglass"] = {
		label = "Clean Wine Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean wine glass!",
		client = {
			image = "clean_wineglass.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["lsdtab"] = {
		label = "LSD Tab",
		weight = 50,
		stack = true,
		close = false,
		description = "A tongue strip with an image of a mushroom on it.",
		client = {
			image = "lsdtab.png",
		}
	},

	["drug_shears"] = {
		label = "Trimming Shears",
		weight = 200,
		stack = true,
		close = false,
		description = "A set of high quality trimming shears.",
		client = {
			image = "drug_shears.png",
		}
	},

	["pd_tracker"] = {
		label = "Vehicle Tracking Device",
		weight = 20,
		stack = true,
		close = true,
		description = "Place this on a vehicle to track it.",
		client = {
			image = "tracker.png",
		}
	},

	["wallet"] = {
		label = "wallet",
		weight = 50,
		stack = true,
		close = true,
		description = "wallet",
		client = {
			image = "wallet.png",
		}
	},

	["drillbit"] = {
		label = "Drill Bit",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "drillbit.png",
		}
	},

	["barolo"] = {
		label = "Barolo",
		weight = 1000,
		stack = true,
		close = true,
		description = "The King of Wines and the Wine of Kings.",
		client = {
			image = "barolo.png",
		}
	},

	["jackherrer_crop"] = {
		label = "Jack Herer Crop",
		weight = 1200,
		stack = true,
		close = false,
		description = "Jack Herrer Crop",
		client = {
			image = "ww_jackherrer_crop.png",
		}
	},

	["redwcig"] = {
		label = "Redwood Cigarette",
		weight = 50,
		stack = true,
		close = true,
		description = "Smoking cigarette",
		client = {
			image = "redwcig.png",
		}
	},

	["curryveggies"] = {
		label = "Curry Veggies",
		weight = 1000,
		stack = true,
		close = true,
		description = "Curry Veggies",
		client = {
			image = "curryveggieicon.png",
		}
	},

	["engine1"] = {
		label = "Engine Upgrade B",
		weight = 4000,
		stack = true,
		close = true,
		description = "Engine Upgrade 1",
		client = {
			image = "engine_parts_b.png",
		}
	},

	["cutbeef"] = {
		label = "Cut beef",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cut Beef",
		client = {
			image = "cutbeeficon.png",
		}
	},

	["weed"] = {
		label = "Weed",
		weight = 100,
		stack = true,
		close = false,
		description = "Processed weed ready for packing",
		client = {
			image = "weed.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach.",
		client = {
			image = "sandwich.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock..?",
		client = {
			image = "labkey.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["m45a1_flsh"] = {
		label = "M45A1 Light",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "smg_flashlight.png",
		}
	},

	["emptybowl"] = {
		label = "Empty Bowl",
		weight = 1000,
		stack = true,
		close = true,
		description = "Empty Bowl",
		client = {
			image = "emptybowlicon.png",
		}
	},

	["chair46"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair46.png",
		}
	},

	["engine3"] = {
		label = "Engine Upgrade D",
		weight = 4500,
		stack = true,
		close = true,
		description = "Engine Upgrade 3",
		client = {
			image = "engine_parts_d.png",
		}
	},

	["steakpie"] = {
		label = "Microwavable Steak Pie",
		weight = 400,
		stack = true,
		close = true,
		description = "A microwavable steak pie!",
		client = {
			image = "steakpie.png",
		}
	},

	["glass_vodka"] = {
		label = "Glass of Vodka",
		weight = 200,
		stack = true,
		close = true,
		description = "A small glass of vodka!",
		client = {
			image = "glass_vodka.png",
		}
	},

	["seadra"] = {
		label = "Seadra",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seadra.png",
		}
	},

	["spoiler"] = {
		label = "Vehicle Spoiler",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spoiler.png",
		}
	},

	["collarpet"] = {
		label = "Pet collar",
		weight = 500,
		stack = true,
		close = true,
		description = "Rename your pets!",
		client = {
			image = "collarpet.png",
		}
	},

	["oxy"] = {
		label = "Oxy",
		weight = 500,
		stack = true,
		close = true,
		description = "oxy",
		client = {
			image = "oxy.png",
		}
	},

	["brakes3"] = {
		label = "Tier 3 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes3.png",
		}
	},

	["fake_plate"] = {
		label = "Fake Plate",
		weight = 0,
		stack = false,
		close = false,
		description = "Marked for Police seizure.",
		client = {
			image = "plate.png",
		}
	},

	["coca_leaf"] = {
		label = "Coca Leaf",
		weight = 100,
		stack = true,
		close = false,
		description = "Unprocessed Coca Leaf",
		client = {
			image = "coca_leaf.png",
		}
	},

	["icedoutchain"] = {
		label = "Iced Out Chain",
		weight = 1000,
		stack = true,
		close = true,
		description = "Custom Chain....",
		client = {
			image = "icedoutchain.png",
		}
	},

	["tofu"] = {
		label = "Tofu",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tofu.png",
		}
	},

	["baseball"] = {
		label = "Baseball",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "baseball.png",
		}
	},

	["rplate"] = {
		label = "Ribs Plate",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of Ribs",
		client = {
			image = "rplate.png",
		}
	},

	["cheddar"] = {
		label = "Cheddar Slice",
		weight = 500,
		stack = true,
		close = false,
		description = "Food",
		client = {
			image = "cheddar.png",
		}
	},

	["transmission3"] = {
		label = "Transmission Upgrade S",
		weight = 7250,
		stack = true,
		close = true,
		description = "Transmission Upgrade 3",
		client = {
			image = "transmission_parts_s.png",
		}
	},

	["watering_can_full"] = {
		label = "Full Watering Can",
		weight = 500,
		stack = true,
		close = false,
		description = "A watering can full of water!",
		client = {
			image = "watering_can_full.png",
		}
	},

	["nplate"] = {
		label = "Nachos Plate",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of nachos and cheese",
		client = {
			image = "nplate.png",
		}
	},

	["weed_zkittlez_seed_f"] = {
		label = "Zkittlez: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized zkittlez seed.",
		client = {
			image = "weed_zkittlez_seed_f.png",
		}
	},

	["sapphire"] = {
		label = "Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A Sapphire that shimmers",
		client = {
			image = "sapphire.png",
		}
	},

	["tacobag"] = {
		label = "Taco Bag",
		weight = 5,
		stack = false,
		close = true,
		description = "taco bag",
		client = {
			image = "taco-bag.png",
		}
	},

	["silverearring"] = {
		label = "Silver Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_earring.png",
		}
	},

	["blacknails"] = {
		label = "Black Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Black Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["chair44"] = {
		label = "Old Posh Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair44.png",
		}
	},

	["splate"] = {
		label = "Steak Plate",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "A Steak Plate",
		client = {
			image = "splate.png",
		}
	},

	["combomeal"] = {
		label = "combomeal",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "combomeal.png",
		}
	},

	["standard_cpu"] = {
		label = "Standard Cpu",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd want everything to burn..",
		client = {
			image = "standard_cpu.png",
		}
	},

	["voltorb"] = {
		label = "Voltorb",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "voltorb.png",
		}
	},

	["chair78"] = {
		label = "Wine Red Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair78.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["burger-mshake"] = {
		label = "Milkshake",
		weight = 125,
		stack = true,
		close = true,
		description = "Hand-scooped for you!",
		client = {
			image = "bs_milkshake.png",
		}
	},

	["chair16"] = {
		label = "White Dining Chair",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair16.png",
		}
	},

	["milking_pail"] = {
		label = "Milking Pail",
		weight = 250,
		stack = true,
		close = false,
		description = "A milking pail for collecting milk!",
		client = {
			image = "milking_pail.png",
		}
	},

	["mwcburger"] = {
		label = "Microwave Cheeseburger",
		weight = 300,
		stack = true,
		close = true,
		description = "A microwavable cheeseburger!",
		client = {
			image = "mwcburger.png",
		}
	},

	["starmie"] = {
		label = "Starmie",
		weight = 0,
		stack = true,
		close = false,
		description = "2/6 for Cascade Badge - Rare",
		client = {
			image = "starmie.png",
		}
	},

	["keyring"] = {
		label = "Car Key Ring",
		weight = 100,
		stack = false,
		close = true,
		description = "Key ring for car fobs and keys!",
		client = {
			image = "keyring.png",
		}
	},

	["drpepper"] = {
		label = "Dr Pepper",
		weight = 330,
		stack = true,
		close = true,
		description = "Dr Pepper, whats the worst that can happen!",
		client = {
			image = "drpepper.png",
		}
	},

	["moneybag"] = {
		label = "Empty Money Bag",
		weight = 5,
		stack = false,
		close = true,
		description = "Empty Money Bag",
		client = {
			image = "moneybag.png",
		}
	},

	["wet_pink_phone"] = {
		label = "Wet Pink Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "wet_pink_phone.png",
		}
	},

	["notepad"] = {
		label = "NotePad",
		weight = 500,
		stack = false,
		close = true,
		description = "NotePad",
		client = {
			image = "notepad.png",
		}
	},

	["pint_piswasser"] = {
		label = "Pint of Piswasser",
		weight = 400,
		stack = true,
		close = true,
		description = "Your in for a good time!",
		client = {
			image = "pint_piswasser.png",
		}
	},

	["venusaurv"] = {
		label = "Venusaur V",
		weight = 0,
		stack = true,
		close = false,
		description = "V Card",
		client = {
			image = "venusaurv.png",
		}
	},

	["pinkcookies8th"] = {
		label = "Pink Cookies 8th",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed bag",
		client = {
			image = "pinkcookies8th.png",
		}
	},

	["badge"] = {
		label = "badge",
		weight = 200,
		stack = true,
		close = true,
		description = "Badge.",
		client = {
			image = "badge.png",
		}
	},

	["lettuce"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big taco brother",
		client = {
			image = "lettuce.png",
		}
	},

	["garypayton8th"] = {
		label = "GaryPayton8th",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "garypayton8th.png",
		}
	},

	["camera"] = {
		label = "Camera",
		weight = 1000,
		stack = false,
		close = true,
		description = "Camera to take pretty pictures.",
		client = {
			image = "camera.png",
		}
	},

	["colacao"] = {
		label = "colacao",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "colacao.png",
		}
	},

	["milkbucket"] = {
		label = "Milk Bucket",
		weight = 75,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "milkbucket.png",
		}
	},

	["rockyroad"] = {
		label = "Rocky Road",
		weight = 50,
		stack = false,
		close = true,
		description = "Rocky Road",
		client = {
			image = "rockyroad.png",
		}
	},

	["seel"] = {
		label = "Seel",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seel.png",
		}
	},

	["slicedpotato"] = {
		label = "Sliced Potatoes",
		weight = 500,
		stack = true,
		close = false,
		description = "Sliced Potato",
		client = {
			image = "burger-slicedpotato.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed-plant-seed.png",
		}
	},

	["pancakes"] = {
		label = "Pancakes",
		weight = 500,
		stack = true,
		close = true,
		description = "Pancakes.",
		client = {
			image = "pancakes.png",
		}
	},

	["sealedpackage"] = {
		label = "Sealed Package",
		weight = 15000,
		stack = false,
		close = false,
		description = "A heavy water-sealed package",
		client = {
			image = "sealedpackage.png",
		}
	},

	["staryu"] = {
		label = "Staryu",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "staryu.png",
		}
	},

	["arcanine"] = {
		label = "Arcanine",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Volcano Badge",
		client = {
			image = "arcanine.png",
		}
	},

	["poliwrath"] = {
		label = "Poliwrath",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "poliwrath.png",
		}
	},

	["briefcaselockpicker"] = {
		label = "Briefcase Lockpicker",
		weight = 500,
		stack = true,
		close = true,
		description = "Briefcase Lockpicker",
		client = {
			image = "lockpick.png",
		}
	},

	["chair65"] = {
		label = "Posh Lounger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair65.png",
		}
	},

	["koffing"] = {
		label = "Koffing",
		weight = 0,
		stack = true,
		close = false,
		description = "1/6 for Soul Badge",
		client = {
			image = "koffing.png",
		}
	},

	["ditto"] = {
		label = "Ditto",
		weight = 0,
		stack = true,
		close = false,
		description = "Rare",
		client = {
			image = "ditto.png",
		}
	},

	["gastly"] = {
		label = "Gastly",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gastly.png",
		}
	},

	["sharklatoblunt"] = {
		label = "SharkLatoBlunt",
		weight = 0,
		stack = true,
		close = true,
		description = "weedbag",
		client = {
			image = "sharklatoblunt.png",
		}
	},

	["vape"] = {
		label = "Vape",
		weight = 200,
		stack = true,
		close = true,
		description = "Electronic cigarette",
		client = {
			image = "vape.png",
		}
	},

	["fakecert"] = {
		label = "Fake Certificate",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fakecert.png",
		}
	},

	["marijuana_crop_low"] = {
		label = "Harvested Crop",
		weight = 5500,
		stack = true,
		close = false,
		description = "low grade harvested marijuana crop",
		client = {
			image = "marijuana_crop_low.png",
		}
	},

	["burger-bag"] = {
		label = "Burger Bag",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big burger brother",
		client = {
			image = "taco-bag.png",
		}
	},

	["zombie"] = {
		label = "Zombie",
		weight = 400,
		stack = true,
		close = true,
		description = "Zombie!",
		client = {
			image = "zombie.png",
		}
	},

	["corncob"] = {
		label = "Corn Cob",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "corncob.png",
		}
	},

	["pokebox"] = {
		label = "Pokemon TCG Box",
		weight = 50,
		stack = false,
		close = true,
		description = "Pokemon TCG Storage Box",
		client = {
			image = "pokebox.png",
		}
	},

	["pinknails"] = {
		label = "Pink Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Pink Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["prisonrock"] = {
		label = "Coarse Rock",
		weight = 1000,
		stack = true,
		close = false,
		description = "A very big coarse rock",
		client = {
			image = "prisonrock.png",
		}
	},

	["vmaxpikachu"] = {
		label = "Pikachu Vmax",
		weight = 0,
		stack = true,
		close = false,
		description = "Vmax Card",
		client = {
			image = "vmaxpikachu.png",
		}
	},

	["dolceto"] = {
		label = "Dolcetto D'Alba",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dolceto.png",
		}
	},

	["magneton"] = {
		label = "Magneton",
		weight = 0,
		stack = true,
		close = false,
		description = "6/6 for Thunder Badge",
		client = {
			image = "magneton.png",
		}
	},

	["red_phone"] = {
		label = "Red Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
		client = {
			image = "red_phone.png",
		}
	},

	["uwucupcake"] = {
		label = "uWu Cupcake",
		weight = 200,
		stack = true,
		close = true,
		description = "Sugar Kitty Cupcake!",
		client = {
			image = "uwucupcake.png",
		}
	},

	["vitodaiquiri"] = {
		label = "Vito Daiquiri",
		weight = 250,
		stack = true,
		close = true,
		description = "Food Bar Is The Best.",
		client = {
			image = "vitodaiquiri.png",
		}
	},

	["m45a1_mag2"] = {
		label = "M45A1 Mag 2",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "m45a1_mag2.png",
		}
	},

	["bluenails"] = {
		label = "Blue Nails",
		weight = 100,
		stack = true,
		close = true,
		description = "Blue Nails",
		client = {
			image = "blacknails.png",
		}
	},

	["firstaid"] = {
		label = "first aid",
		weight = 1000,
		stack = true,
		close = true,
		description = "first aid,.",
		client = {
			image = "medikit.png",
		}
	},

	["nidoqueen"] = {
		label = "Nidoqueen",
		weight = 0,
		stack = true,
		close = false,
		description = "3/6 for Earth Badge",
		client = {
			image = "nidoqueen.png",
		}
	},

	["ivysaur"] = {
		label = "Ivysaur",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ivysaur.png",
		}
	},

	["strawdaquiri"] = {
		label = "Strawberry Daquiri",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Strawberry Daquiri",
		client = {
			image = "strawdaquiri.png",
		}
	},

	["chair87"] = {
		label = "White Couch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair87.png",
		}
	},

	["cuartodelibra"] = {
		label = "cuartodelibra",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "cuartodelibra.png",
		}
	},

	["chair97"] = {
		label = "Plastic Lawn Chair 2",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chair97.png",
		}
	},

	["drug_cuttingkit"] = {
		label = "Cutting Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A mirror, a razor blade.. obviously this is a make up kit..",
		client = {
			image = "drug_cuttingkit.png",
		}
	},

	["rentalpapers"] = {
		label = "Rental Papers",
		weight = 50,
		stack = false,
		close = false,
		description = "This car was taken out through car rental.",
		client = {
			image = "rentalpapers.png",
		}
	},

	["noodles"] = {
		label = "Instant Noodles",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "noodles.png",
		}
	},

	['id_card'] = {
        label = 'ID Card',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'id_card.png'}
    },
    ['driver_license'] = {
        label = 'Drivers License',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'driver_license.png'}
    },
    ['weaponlicense'] = {
        label = 'Weapon License',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'weapon_license.png'}
    },
    ['lawyerpass'] = {
        label = 'Lawyer Pass',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'lawyerpass.png'}
    },

	["document"] = {
		label = "Document",
		weight = 10,
		stack = false,
		close = true,
		description = "This is a custom document which has been made.",
		client = {
			image = "printerdocument.png",
		}
	},

	["emptydocuments"] = {
		label = "Blank Documents",
		weight = 10,
		stack = false,
		close = true,
		description = "These are blank documents which you can use to fill them out.",
		client = {
			image = "emptydocuments.png",
		}
	},

	["portablecopier"] = {
		label = "Portable Document Copier",
		weight = 10,
		stack = false,
		close = false,
		description = "If you have this machine you will be able to duplicate documents.",
		client = {
			image = "portablecopier.png",
		}
	},

	["doritos"] = {
		label = "Doritos Cool Ranch",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Bag of Chips",
		client = {
			image = "doritos.png",
		}
	},

	["prime_tropicalpunch"] = {
		label = "Prime Tropicalpunch",
		weight = 200,
		stack = true,
		close = true,
		description = "Hydration Drink",
		client = {
			image = "prime_tropicalpunch.png",
		}
	},

	["prime_grape"] = {
		label = "Prime Grape",
		weight = 200,
		stack = true,
		close = true,
		description = "Hydration Drink",
		client = {
			image = "prime_grape.png",
		}
	},

	["prime_orange"] = {
		label = "Prime Orange",
		weight = 200,
		stack = true,
		close = true,
		description = "Hydration Drink",
		client = {
			image = "prime_orange.png",
		}
	},

	["prime_metamoon"] = {
		label = "Prime Metamoon",
		weight = 200,
		stack = true,
		close = true,
		description = "Hydration Drink",
		client = {
			image = "prime_metamoon.png",
		}
	},

	["prime_icepop"] = {
		label = "Prime Icepop",
		degrade = 5760,
        decay = true,
		weight = 10,
		stack = true,
		close = true,
		description = "Hydration Drink",
		client = {
			image = "prime_icepop.png",
		}
	},

	["prime_blueraspberrry"] = {
		label = "Prime Blueraspberrry",
		weight = 200,
		stack = true,
		close = true,
		description = "Hydration Drink",
		client = {
			image = "prime_blueraspberrry.png",
		}
	},

	["prime_lemonlime"] = {
		label = "Prime Lemonlime",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = true,
		description = "Hydration Drink",
		client = {
			image = "prime_lemonlime.png",
		}
	},

	["weedplant_seedm"] = {
		label = "Male Weed Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "Male Weed Seed",
		client = {
			image = "weedplant_seed.png",
		}
	},

	["weedplant_seedf"] = {
		label = "Female Weed Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "Female Weed Seed",
		client = {
			image = "weedplant_seed.png",
		}
	},

	["empty_watering_can"] = {
		label = "Empty Watering Can",
		weight = 500,
		stack = false,
		close = true,
		description = "Empty watering can",
		client = {
			image = "watering_can.png",
		}
	},

	["full_watering_can"] = {
		label = "Full Watering Can",
		weight = 1000,
		stack = false,
		close = false,
		description = "Watering can filled with water for watering plants",
		client = {
			image = "watering_can.png",
		}
	},

	["weedplant_packedweed"] = {
		label = "Packed Weed",
		weight = 100,
		stack = false,
		close = false,
		description = "Weed ready for sale",
		client = {
			image = "weedplant_weed.png",
		}
	},

	["plant_tub"] = {
		label = "Plant Tub",
		weight = 1000,
		stack = true,
		close = false,
		description = "Pot for planting plants",
		client = {
			image = "plant_tub.png",
		}
	},

	["weedplant_package"] = {
		label = "Suspicious Package",
		weight = 10000,
		stack = false,
		close = false,
		description = "Suspicious Package",
		client = {
			image = "weedplant_package.png",
		}
	},

	["weedplant_weed"] = {
		label = "Dried Weed",
		weight = 100,
		stack = true,
		close = false,
		description = "Weed ready for packaging",
		client = {
			image = "weedplant_weed.png",
		}
	},

	["keya"] = {
		label = "Labkey A",
		weight = 0,
		stack = false,
		close = false,
		description = "Labkey A..",
		client = {
			image = "keya.png",
		}
	},

	["weedplant_branch"] = {
		label = "Weed Branch",
		weight = 10000,
		stack = false,
		close = false,
		description = "Weed plant",
		client = {
			image = "weedplant_branch.png",
		}
	},

	["health_insurance"] = {
		label = "Health Insurance",
		weight = 150,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "health_insurance.png",
		}
	},

	["insurance"] = {
		label = "Car Insurance",
		weight = 150,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "insurance.png",
		}
	},

	["car_registration"] = {
		label = "Car Registration",
		weight = 150,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "car_registration.png",
		}
	},

	["carettacaretta"] = {
		label = "Kaplumbağa",
		weight = 50,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "carettacaretta.png",
		}
	},

	["fishbait"] = {
		label = "Fish Bait",
		weight = 50,
		stack = true,
		close = true,
		description = "A nice document",
		client = {
			image = "fishbait.png",
		}
	},

	["redpearl"] = {
		label = "Red Pearl",
		weight = 50,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "redpearl.png",
		}
	},

	["fishingrod3"] = {
		label = "Fishing Rod (3Lv.)",
		weight = 50,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "fishingrod3.png",
		}
	},

	["garfish"] = {
		label = "Garfish",
		weight = 50,
		stack = true,
		close = true,
		description = "A nice document",
		client = {
			image = "garfish.png",
		}
	},

	["greenpearl"] = {
		label = "Green Pearl",
		weight = 50,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "greenpearl.png",
		}
	},

	["perch"] = {
		label = "Perch",
		weight = 50,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "perch.png",
		}
	},

	["fishingrod1"] = {
		label = "Fishing Rod (1Lv.)",
		weight = 50,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "fishingrod1.png",
		}
	},

	["anchovy"] = {
		label = "Anchovy",
		weight = 50,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "anchovy.png",
		}
	},

	["whitepearl"] = {
		label = "White Pearl",
		weight = 50,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "whitepearl.png",
		}
	},

	["smallbluefish"] = {
		label = "Small Blue Fish",
		weight = 50,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "smallbluefish.png",
		}
	},

	["fishingrod4"] = {
		label = "Fishing Rod (4Lv.)",
		weight = 50,
		stack = false,
		close = true,
		description = "The sky is the limit! Woohoo!",
		client = {
			image = "fishingrod4.png",
		}
	},

	["illegalfishbait"] = {
		label = "Illegal Fish Bait",
		weight = 50,
		stack = true,
		close = true,
		description = "A nice document",
		client = {
			image = "illegalfishbait.png",
		}
	},

	["bluepearl"] = {
		label = "Blue Pearl",
		weight = 50,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "bluepearl.png",
		}
	},

	["fishingrod2"] = {
		label = "Fishing Rod (2Lv.)",
		weight = 50,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "fishingrod2.png",
		}
	},

	["sharkfish"] = {
		label = "Shark",
		weight = 50,
		stack = false,
		close = true,
		description = "The sky is the limit! Woohoo!",
		client = {
			image = "sharkfish.png",
		}
	},

	["yellowpearl"] = {
		label = "Yellow Pearl",
		weight = 50,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "yellowpearl.png",
		}
	},

	["bonitosfish"] = {
		label = "Bonitos",
		weight = 50,
		stack = true,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "bonitosfish.png",
		}
	},

	["pantfish"] = {
		label = "Pant Fish",
		weight = 50,
		stack = true,
		close = true,
		description = "A bag with cash",
		client = {
			image = "pantfish.png",
		}
	},

	["fishingrod5"] = {
		label = "Fishing Rod (5Lv.)",
		weight = 50,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "fishingrod5.png",
		}
	},

	["illegalFishBait"] = {
		label = "Illegal Fish Bait",
		weight = 50,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "illegalFishBait.png",
		}
	},
            
        ['cigar'] = {
            label = 'cigar',
            weight = 0,
            stack = true,
            close = true,
            description = "Cigar"
        },
                
        ['sludgie'] = {
            label = 'sludgie',
            weight = 0,
            stack = true,
            close = true,
            description = "Sludgie"
        },
                
        ['cigs_69brand'] = {
            label = '69 brand',
            weight = 0,
            stack = true,
            close = true,
            description = "cigs_69brand"
        },
                
        ['cigs_cardiaque'] = {
            label = 'cardiaque',
            weight = 0,
            stack = true,
            close = true,
            description = "cigs_cardiaque"
        },
                
        ['cigs_debonaireblue'] = {
            label = 'debonaire blue',
            weight = 0,
            stack = true,
            close = true,
            description = "cigs_debonaireblue"
        },
                
        ['cigs_debonairegreen'] = {
            label = 'debonaire green',
            weight = 0,
            stack = true,
            close = true,
            description = "cigs_debonairegreen"
        },
                
        ['cigs_redwood'] = {
            label = 'red wood',
            weight = 0,
            stack = true,
            close = true,
            description = "cigs_redwood"
        },
    
	["basicdecrypter"] = {
		label = "Basic Decrypter",
		weight = 1000,
		stack = false,
		close = true,
		description = "Illegal Hacking Tool",
		client = {
			image = "basicdecrypter.png",
		}
	},

	["inkedbills"] = {
		label = "Inked Money Bag",
		weight = 2000,
		stack = true,
		close = false,
		description = "A bag full of inked bills",
		client = {
			image = "money-bag.png",
		}
	},

	["basicdrill"] = {
		label = "Basic Drill",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "basicdrill.png",
		}
	},

	["sealed_cache"] = {
		label = "Sealed Cache",
		weight = 15000,
		stack = false,
		close = false,
		description = "A heavy and resilient lockbox",
		client = {
			image = "sealed_cache.png",
		}
	},

	["cache_key"] = {
		label = "Cache Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key used for lock boxes..",
		client = {
			image = "cache_key.png",
		}
	},

	["hunterlicense"] = {
		label = "Hunting License",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "huntinglicense.png",
		}
	},

	["mdtcitation"] = {
		label = "Citation",
		weight = 1000,
		stack = false,
		close = true,
		description = "Citation from a police officer!",
		client = {
			image = "citation.png",
		}
	},

	["lays1"] = {
		label = "Lays Original",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "lays1.png",
		}
	},

	["cheetos2"] = {
		label = "Cheetos Cheddar Jalapeno",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos2.png",
		}
	},

	["sunchips"] = {
		label = "Sun Chips Original",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "sunchips.png",
		}
	},

	["fritos1"] = {
		label = "Fritos Original",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "fritos1.png",
		}
	},

	["cheetos1"] = {
		label = "Cheetos Bag of Bones",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos1.png",
		}
	},

	["fritos"] = {
		label = "Fritos Honey BBQ Twists",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "fritos.png",
		}
	},

	["lays2"] = {
		label = "Lays BBQ",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "lays2.png",
		}
	},

	["lays"] = {
		label = "Lays Sour Cream and Onion",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "lays.png",
		}
	},

	["cheetos3"] = {
		label = "Cheetos Flamin Hot Crunchy",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos3.png",
		}
	},

	["cheetos"] = {
		label = "Cheetos Flamin Hot Limon",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos.png",
		}
	},

	["sunchips1"] = {
		label = "Sun Chips Harvest Cheddar",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "sunchips1.png",
		}
	},

	["Lays Original"] = {
		label = "Lays Original",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "lays1.png",
		}
	},

	["Fritos Honey BBQ Twists"] = {
		label = "Fritos Honey BBQ Twists",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "fritos.png",
		}
	},

	["Cheetos Flamin Hot Limon"] = {
		label = "Cheetos Flamin Hot Limon",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos.png",
		}
	},

	["Lays Sour Cream"] = {
		label = "Lays Sour Cream and Onion",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "lays.png",
		}
	},

	["Cheetos Flamin Hot Crunchy"] = {
		label = "Cheetos Flamin Hot Crunchy",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos3.png",
		}
	},

	["Fritos Original"] = {
		label = "Fritos Original",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "fritos1.png",
		}
	},

	["Cheetos Bag of Bones"] = {
		label = "Cheetos Bag of Bones",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos1.png",
		}
	},

	["Cheetos Cheddar Jalapeno"] = {
		label = "Cheetos Cheddar Jalapeno",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "cheetos2.png",
		}
	},

	["Lays BBQ"] = {
		label = "Lays BBQ",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious chips :O",
		client = {
			image = "lays2.png",
		}
	},

	["icecone"] = {
		label = "Ice Cone",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cone.png",
		}
	},

	["icecake"] = {
		label = "Ice Cream Cake",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icecake.png",
		}
	},

	["raine"] = {
		label = "Raine",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raine.png",
		}
	},

	["creamyshake"] = {
		label = "Extra Creamy Jumbo Shake",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "atomshake.png",
		}
	},

	["baconhornburger"] = {
		label = "HornBurger Bacon",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "baconburger.png",
		}
	},

	["eggsbenedict"] = {
		label = "Eggs Benedict",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "eggbene.png",
		}
	},

	["orangotang"] = {
		label = "Bacon",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "orangotang.png",
		}
	},

	["slicedtomato"] = {
		label = "Sliced Tomato",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "slicedtomato.png",
		}
	},

	["baconroll"] = {
		label = "Bacon Roll",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "baconroll.png",
		}
	},

	["hotdogmeat"] = {
		label = "Hotdog Meat",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hotdogmeat.png",
		}
	},

	["hornburger"] = {
		label = "HornBurger",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hornburger.png",
		}
	},

	["gazpacho"] = {
		label = "Guzpacho",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gazpacho.png",
		}
	},

	["chillidog"] = {
		label = "Footlong Chili Dog",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chillidog.png",
		}
	},

	["icenugget"] = {
		label = "Ice Nugget",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icenugget.png",
		}
	},

	["atomsoda"] = {
		label = "Atom Soda",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "atomsoda.png",
		}
	},

	["junkdrink"] = {
		label = "Junk",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "junkdrink.png",
		}
	},

	["picklehornburger"] = {
		label = "HornBurger Pickle",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pickleburger.png",
		}
	},

	["rawhotdog"] = {
		label = "Raw Hotdog",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rawhotdog.png",
		}
	},

	["chickenhorn"] = {
		label = "Chicken Hornstars",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chickhornstars.png",
		}
	},

	["hornbreakfast"] = {
		label = "Horny's Breakfast",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bangers.png",
		}
	},

	["tripleburger"] = {
		label = "The Triple Burger",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tripleburger.png",
		}
	},

	["chickenbreast"] = {
		label = "Raw Chicken Breast",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farming_chickenbreast.png",
		}
	},

	["frenchtoastbacon"] = {
		label = "French Toast Bacon",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "frenchbacon.png",
		}
	},

	["chickenhornburger"] = {
		label = "Chicken HornBurger",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chickenburger.png",
		}
	},

	["dblhornburger"] = {
		label = "DBL HornBurger",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dblhornburger.png",
		}
	},

	["atomfries"] = {
		label = "Atom Fries",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "atomfries.png",
		}
	},

	["sausages"] = {
		label = "Sausages",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sausage.png",
		}
	},

	["hashbrowns"] = {
		label = "Hash Browns",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hashbrown.png",
		}
	},

	["chickensalad"] = {
		label = "Chicken Salad",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chickensalad.png",
		}
	},

	["chillimince"] = {
		label = "Chillimince",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chillimince.png",
		}
	},

	["dblchickenhornburger"] = {
		label = "DBL Chicken HornBurger",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dblchickenburger.png",
		}
	},

	["cream"] = {
		label = "Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cream.png",
		}
	},

	["baconeggtoast"] = {
		label = "Bacon & Egg on Toast",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "baconegg.png",
		}
	},

	["chickentaco"] = {
		label = "Chicken Taco",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chickentaco.png",
		}
	},

	["baconcheesemelt"] = {
		label = "Bacon-Triple Cheese Melt",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "baconcheesemelt.png",
		}
	},

	["grilledchicken"] = {
		label = "Chicken Sandwich",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chickensandwich.png",
		}
	},

	["breadslice"] = {
		label = "Slice of Bread",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "breadslice.png",
		}
	},

	["enchiladas"] = {
		label = "Breakfast Enchiladas",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "enchi.png",
		}
	},

	["hunksohen"] = {
		label = "Hunk o' Hen",
		degrade = 5760,
        decay = true,
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chickenthighs.png",
		}
	},

	["rolls"] = {
		label = "Roll Of Small Notes",
		weight = 100,
		stack = true,
		close = false,
		description = "A roll of small notes..",
		client = {
			image = "rolls.png",
		}
	},

	["bands"] = {
		label = "Band Of Notes",
		weight = 100,
		stack = true,
		close = false,
		description = "A band of small notes..",
		client = {
			image = "bands.png",
		}
	},

	["package"] = {
		label = "Suspicious Package",
		weight = 1000,
		stack = false,
		close = false,
		description = "A mysterious package.. Scary!",
		client = {
			image = "package.png",
		}
	},

	["jump_royale"] = {
		label = "Super Jump",
		weight = 1000,
		stack = false,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "jump.png",
		}
	},

	["armor2_royale"] = {
		label = "Medium armor",
		weight = 1000,
		stack = false,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "armor2.png",
		}
	},

	["uav_royale"] = {
		label = "UAV",
		weight = 1000,
		stack = false,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "spyplane.png",
		}
	},

	["armor3_royale"] = {
		label = "Heavy armor",
		weight = 1000,
		stack = false,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "armor3.png",
		}
	},

	["armor1_royale"] = {
		label = "Light armor",
		weight = 1000,
		stack = false,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "armor1.png",
		}
	},

	["healthroyale_royale"] = {
		label = "Health Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "firstaid.png",
		}
	},

	["armorroyale_royale"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "armor.png",
		}
	},

	["bandage_royale"] = {
		label = "Bandage",
		weight = 1000,
		stack = false,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "bandage.png",
		}
	},

	["juice_royale"] = {
		label = "Juice",
		weight = 1000,
		stack = false,
		close = true,
		description = "USED IN ROYALE ONLY.",
		client = {
			image = "bs_softdrink.png",
		}
	},

	["pug-vr"] = {
		label = "Vr Headset",
		weight = 2000,
		stack = false,
		close = true,
		description = "A simulation inside of a simulation.",
		client = {
			image = "pug-vr.png",
		}
	},

	["rawchickenbreast"] = {
		label = "Raw Chicken Breast",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_chickenbreast.png",
		}
	},

	["chickenpatty"] = {
		label = "Raw Chicken Patty",
		degrade = 5760,
        decay = true,
		weight = 500,
		stack = true,
		close = false,
		description = "Chicken Patty",
		client = {
			image = "cb_chickenpatty.png",
		}
	},

	["cbdonut"] = {
		label = "CluckinBell Donuts",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_donut.png",
		}
	},

	["cborangesoda"] = {
		label = "Cluckin Orange Soda",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_soda.png",
		}
	},

	["cblemonlimesoda"] = {
		label = "Cluckin Lemon Lime Soda",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_soda.png",
		}
	},

	["slicedpotatoes"] = {
		label = "Sliced Potatoes",
		weight = 200,
		stack = true,
		close = false,
		description = "Bag of Onions",
		client = {
			image = "cb_slicedpotatoes.png",
		}
	},

	["cbcoke"] = {
		label = "Cluckin Coke",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_soda.png",
		}
	},

	["mightyclucker"] = {
		label = "Mighty Clucker",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_mightyclucker.png",
		}
	},

	["cluckrings"] = {
		label = "Cluckin Bell Onion Rings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_cluckinrings.png",
		}
	},

	["strawberrycone"] = {
		label = "CluckinBell Strawberry Ice Cream Cone",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "A Strawberry Cone",
		client = {
			image = "cb_strawcone.png",
		}
	},

	["cbrootbeer"] = {
		label = "Cluckin RootBeer",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_soda.png.png",
		}
	},

	["chocolatecone"] = {
		label = "CluckinBell Chocolate Ice Cream Cone",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "A Chocolate Cone",
		client = {
			image = "cb_chococone.png",
		}
	},

	["slicedtomatoes"] = {
		label = "Sliced Tomatoes",
		weight = 200,
		stack = true,
		close = false,
		description = "Bag of Onions",
		client = {
			image = "cb_slicedtomatoes.png",
		}
	},

	["emptybucket"] = {
		label = "An Empty Cluckin Bucket",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_emptybucket.png",
		}
	},

	["friedchicken"] = {
		label = "Fried Chicken",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_friedchicken.png",
		}
	},

	["clucktoy"] = {
		label = "Cluck Toy",
		weight = 200,
		stack = true,
		close = false,
		description = "Clucky Toy",
		client = {
			image = "cb_clucktoy.png",
		}
	},

	["emptycup"] = {
		label = "An Empty Cluckin Cup",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_emptycup.png",
		}
	},

	["cbchickenwrap"] = {
		label = "Chicken Wrap",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "A Delicious Chicken Wrap",
		client = {
			image = "cb_chickenwrap.png",
		}
	},

	["clucknuggets"] = {
		label = "Cluckin Bell Chicken Nuggets",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_cnuggets.png",
		}
	},

	["cluckfries"] = {
		label = "Cluckin Bell Fries",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_fries.png",
		}
	},

	["littleclucker"] = {
		label = "Little Clucker",
		weight = 200,
		stack = true,
		close = false,
		description = "Little Clucker",
		client = {
			image = "cb_littleclucker.png",
		}
	},

	["cbucket"] = {
		label = "Cluckin Bucket",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "Fried Chicken Bucket",
		client = {
			image = "cb_cbucket.png",
		}
	},

	["vanillacone"] = {
		label = "CluckinBell Vanilla Ice Cream Cone",
		weight = 200,
		stack = true,
		close = false,
		description = "A Vanilla Ice Cream Cone",
		client = {
			image = "cb_strawcone.png",
		}
	},

	["cbcoffee"] = {
		label = "Cluckin Coffee",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_coffee.png",
		}
	},

	["rawchickenwing"] = {
		label = "Raw Chicken Wings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_rawchickenwings.png",
		}
	},

	["csalad"] = {
		label = "Cluckin Bell Salad",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_fries.png",
		}
	},

	["slicedonions"] = {
		label = "Sliced Onions",
		weight = 200,
		stack = true,
		close = false,
		description = "Bag of Onions",
		client = {
			image = "cb_slicedonions.png",
		}
	},

	["fowlburger"] = {
		label = "Fowl Burger",
		degrade = 5760,
        decay = true,
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cb_fowlburger.png",
		}
	},

	["oilp2"] = {
		label = "Tier 2 Oil Pump",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "oilp2.png",
		}
	},

	["fueltank1"] = {
		label = "Tier 1 Fuel Tank",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "fueltank1.png",
		}
	},

	["oilp1"] = {
		label = "Tier 1 Oil Pump",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "oilp1.png",
		}
	},

	["cylind3"] = {
		label = "Tier 3 Cylinder Head",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cylind3.png",
		}
	},

	["cables1"] = {
		label = "Tier 1 Battery Cables",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cables1.png",
		}
	},

	["cables2"] = {
		label = "Tier 2 Battery Cables",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cables2.png",
		}
	},

	["nos"] = {
		label = "NOS Bottle",
		weight = 0,
		stack = false,
		close = true,
		description = "A full bottle of NOS",
		client = {
			image = "nos.png",
		}
	},

	["cables3"] = {
		label = "Tier 3 Battery Cables",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cables3.png",
		}
	},

	["drives3"] = {
		label = "Tier 3 Drive Shaft",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drives3.png",
		}
	},

	["cylind1"] = {
		label = "Tier 1 Cylinder Head",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cylind1.png",
		}
	},

	["drives2"] = {
		label = "Tier 2 Drive Shaft",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drives2.png",
		}
	},

	["fueltank2"] = {
		label = "Tier 2 Fuel Tank",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "fueltank2.png",
		}
	},

	["noscolour"] = {
		label = "NOS Colour Injector",
		weight = 0,
		stack = true,
		close = true,
		description = "Make that purge spray",
		client = {
			image = "noscolour.png",
		}
	},

	["cylind2"] = {
		label = "Tier 2 Cylinder Head",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cylind2.png",
		}
	},

	["fueltank3"] = {
		label = "Tier 3 Fuel Tank",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "fueltank3.png",
		}
	},

	["noscan"] = {
		label = "Empty NOS Bottle",
		weight = 0,
		stack = true,
		close = true,
		description = "An Empty bottle of NOS",
		client = {
			image = "noscan.png",
		}
	},

	["antilag"] = {
		label = "AntiLag",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "antiLag.png",
		}
	},

	["drives1"] = {
		label = "Tier 1 Drive Shaft",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drives1.png",
		}
	},

	["oilp3"] = {
		label = "Tier 3 Oil Pump",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "oilp3.png",
		}
	},

	["cluckinbell-plushie2"] = {
		label = "Cluckin Bell Plushie 2",
		weight = 200,
		stack = true,
		close = false,
		description = "Another adorable Cluckin Bell plushie.",
		client = {
			image = "cb_cluckinbell-plushie2.png",
		}
	},

	["cluckinbell-plushie4"] = {
		label = "Cluckin Bell Plushie 4",
		weight = 200,
		stack = true,
		close = false,
		description = "One more lovable Cluckin Bell plushie.",
		client = {
			image = "cb_cluckinbell-plushie4.png",
		}
	},

	["cluckinbell-bell"] = {
		label = "Cluckin Bell Bell",
		weight = 200,
		stack = true,
		close = false,
		description = "A ringing Cluckin Bell bell.",
		client = {
			image = "cb_cluckinbell-bell.png",
		}
	},

	["cluckinbell-figure"] = {
		label = "Cluckin Bell Figure",
		weight = 200,
		stack = true,
		close = false,
		description = "A small Cluckin Bell figure.",
		client = {
			image = "cb_cluckinbell-figure.png",
		}
	},

	["cluckinbell-plushie3"] = {
		label = "Cluckin Bell Plushie 3",
		weight = 200,
		stack = true,
		close = false,
		description = "Yet another charming Cluckin Bell plushie.",
		client = {
			image = "cb_cluckinbell-plushie3.png",
		}
	},

	["cluckinbell-plushie1"] = {
		label = "Cluckin Bell Plushie 1",
		weight = 200,
		stack = true,
		close = false,
		description = "A cute Cluckin Bell plushie.",
		client = {
			image = "cb_cluckinbell-plushie1.png",
		}
	},

	["kq_tow_rope"] = {
		label = "Towing rope",
		weight = 2000,
		stack = true,
		close = true,
		description = "Rope used for towing vehicles",
		client = {
			image = "kq_tow_rope.png",
		}
	},

	["kq_winch"] = {
		label = "Car winch",
		weight = 4000,
		stack = true,
		close = true,
		description = "Car winch made to winch heavy vehicles",
		client = {
			image = "kq_winch.png",
		}
	},

	["panicbutton"] = {
		label = "Panic Button",
		weight = 100,
		stack = false,
		close = true,
		description = "A Button to make Panic",
		client = {
			image = "panicbutton.png",
		}
	},

	["tbsweetroll"] = {
		label = "Sweet Roll",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tbsweetroll.png",
		}
	},

	["chocolatesyrup"] = {
		label = "Chocolate Syrup",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolatesyrup.png",
		}
	},

	["tbcupcake"] = {
		label = "CupCake",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tbcupcake.png",
		}
	},

	["tbcookie"] = {
		label = "Cookie",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tbcookie.png",
		}
	},

	["tbbirthdaycake"] = {
		label = "Birthday Cake",
		weight = 200,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tbbirthdaycake.png",
		}
	},

	["tblongjohn"] = {
		label = "Long John",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tblongjohn.png",
		}
	},

	["tbcroissant"] = {
		label = "Croissant",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tbcroissant.png",
		}
	},

	["tbbrownbread"] = {
		label = "Brown Bread Roll",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tbbrownbread.png",
		}
	},

	["strawberrymilkshake"] = {
		label = "Strawberry Milkshake",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberrymilkshake.png",
		}
	},

	["tbchoccake"] = {
		label = "Chocolate Cake",
		weight = 200,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tbchoccake.png",
		}
	},

	["cocoapowder"] = {
		label = "Cocoa Powder",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cocoapowder.png",
		}
	},

	["tbdonut"] = {
		label = "Donut",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tbdonut.png",
		}
	},

	["tbwhitebread"] = {
		label = "White Bread Roll",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tbwhitebread.png",
		}
	},

	["tbbread"] = {
		label = "Loaf of Bread",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tbbread.png",
		}
	},

	["tbbrownie"] = {
		label = "Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tbbrownie.png",
		}
	},

	["chocolatemilkshake"] = {
		label = "Chocolate Milkshake",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolatemilkshake.png",
		}
	},

	["vanillaextract"] = {
		label = "Vanilla Extract",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vanillaextract.png",
		}
	},

	["jimeggs"] = {
		label = "Eggs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jimeggs.png",
		}
	},

	["tbcakebase"] = {
		label = "Cake Base",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tbcakebase.png",
		}
	},

	["icing"] = {
		label = "Icing",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icing.png",
		}
	},

	["tbchoccroiss"] = {
		label = "Bloody Cross",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tbblcroiss.png",
		}
	},

	["tbcake"] = {
		label = "Cake",
		weight = 200,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tbcake.png",
		}
	},

	["heavycream"] = {
		label = "Heavy Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "heavycream.png",
		}
	},

	["secured_safe"] = {
		label = "Safe",
		weight = 200,
		stack = false,
		close = true,
		description = "Meant to protect valuables",
		client = {
			image = "secured_safe.png",
		}
	},

	["expensive_champagne"] = {
		label = "Champagne",
		weight = 200,
		stack = true,
		close = true,
		description = "A sparkling wine from France",
		client = {
			image = "expensive_champagne.png",
		}
	},

	["casinocodes"] = {
		label = "Casino Access Codes",
		weight = 200,
		stack = false,
		close = true,
		description = "The first half of codes for the Casino",
		client = {
			image = "casinocodes.png",
		}
	},

	["default_gateway_override"] = {
		label = "Gateway Override",
		weight = 200,
		stack = false,
		close = true,
		description = "A default gateway override on a usb",
		client = {
			image = "default_gateway_override.png",
		}
	},

	["yachtcodes"] = {
		label = "Yacht Access Codes",
		weight = 200,
		stack = false,
		close = true,
		description = "The first half of codes for the Yacht",
		client = {
			image = "yachtcodes.png",
		}
	},

	["prosciutto"] = {
		label = "Prociutto",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "prociutto.png",
		}
	},

	["squashravioli"] = {
		label = "Squash Ravioli",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "squashravioli.png",
		}
	},

	["lobster"] = {
		label = "Lobster",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lobster.png",
		}
	},

	["greenonion"] = {
		label = "Green Onion",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "greenonions.png",
		}
	},

	["smokedsalmon"] = {
		label = "Smoked Salmon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "smokedsalmon.png",
		}
	},

	["mackrel"] = {
		label = "Mackerel with Seaweed Cracker",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "mplate.png",
		}
	},

	["slicedcucumber"] = {
		label = "Sliced Cucumber",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "cucumber.png",
		}
	},

	["fdicks"] = {
		label = "Fried Dicks",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "fdicks.png",
		}
	},

	["lobstertail"] = {
		label = "Poached Lobster Tail",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "lobstertail.png",
		}
	},

	["fishnchips"] = {
		label = "Fish N Chips",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "cplate.png",
		}
	},

	["frenchfries"] = {
		label = "French Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "frenchfries.png",
		}
	},

	["cod"] = {
		label = "Cod",
		weight = 100,
		stack = true,
		close = true,
		description = "Cod",
		client = {
			image = "fish.png",
		}
	},

	["onions"] = {
		label = "Onions",
		weight = 100,
		stack = true,
		close = true,
		description = "Onions",
		client = {
			image = "onions.png",
		}
	},

	["rawsteak"] = {
		label = "Raw Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "meat.png",
		}
	},

	["sushi"] = {
		label = "Sushi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "sushi.png",
		}
	},

	["tunapog"] = {
		label = "Tuna Poke Bowl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "tunapog.png",
		}
	},

	["potatoes"] = {
		label = "Potatoes",
		weight = 100,
		stack = true,
		close = true,
		description = "Potatoes",
		client = {
			image = "potatoes.png",
		}
	},

	["cucumber"] = {
		label = "Cucumber",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cucumber.png",
		}
	},

	["filetmignon"] = {
		label = "Filet Mignon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "filetmignon.png",
		}
	},

	["lobsterbisque"] = {
		label = "Lobster Bisque",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lobsterbisque.png",
		}
	},

	["coffeebeans"] = {
		label = "Coffee Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "A bag of coffee beans",
		client = {
			image = "coffeebeans.png",
		}
	},

	["cookedrice"] = {
		label = "Cooked Rice",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cookedrice.png",
		}
	},

	["fishfingers"] = {
		label = "Fish Fingers",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "fishfingers.png",
		}
	},

	["scallops"] = {
		label = "Sea Scallops",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "scallops.png",
		}
	},

	["avocado"] = {
		label = "Avocado",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "avocado.png",
		}
	},

	["steriyaki"] = {
		label = "Teriyaki Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "steriyaki.png",
		}
	},

	["slicedcarrot"] = {
		label = "Sliced Carrot",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "slicedcarrots.png",
		}
	},

	["fruitgazpacho"] = {
		label = "Fruit Gazpacho",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {

			image = "fruitgazpacho.png",
		}
	},

	["carrot"] = {
		label = "Carrot",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "carrots.png",
		}
	},

	["slicedfish"] = {
		label = "Sliced Fish",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "slicedfish.png",
		}
	},

	["broth"] = {
		label = "Broth",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "broth.png",
		}
	},

	["fruitsalad"] = {
		label = "Fruit Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fsalad.png",
		}
	},

	["keepcompanionwesty"] = {
		label = "Westy",
		weight = 500,
		stack = false,
		close = true,
		description = "Westy is your royal companion!",
		client = {
			image = "A_C_Westy.png",
		}
	},

	["keepcompanionmtlion2"] = {
		label = "Panter",
		weight = 500,
		stack = false,
		close = true,
		description = "Panter is your royal companion!",
		client = {
			image = "A_C_MtLion.png",
		}
	},

	["keepcompanionpoodle"] = {
		label = "Poodle",
		weight = 500,
		stack = false,
		close = true,
		description = "Poodle is your royal companion!",
		client = {
			image = "A_C_Poodle.png",
		}
	},

	["keepcompanionpug"] = {
		label = "Pug",
		weight = 500,
		stack = false,
		close = true,
		description = "Pug is your royal companion!",
		client = {
			image = "A_C_Pug.png",
		}
	},

	["keepcompanionrottweiler"] = {
		label = "Rottweiler",
		weight = 500,
		stack = false,
		close = true,
		description = "Rottweiler is your royal companion!",
		client = {
			image = "A_Rottweiler.png",
		}
	},

	["keepcompanionhen"] = {
		label = "Hen",
		weight = 500,
		stack = false,
		close = true,
		description = "Hen is your royal companion!",
		client = {
			image = "A_C_Hen.png",
		}
	},

	["keepcompanionshepherd"] = {
		label = "Shepherd",
		weight = 500,
		stack = false,
		close = true,
		description = "Shepherd is your royal companion!",
		client = {
			image = "A_C_shepherd.png",
		}
	},

	["keepcompanionrat"] = {
		label = "Rat",
		weight = 500,
		stack = false,
		close = true,
		description = "Your royal companion!",
		client = {
			image = "A_C_Rat.png",
		}
	},

	["keepcompanionhusky"] = {
		label = "Husky",
		weight = 500,
		stack = false,
		close = true,
		description = "Husky is your royal companion!",
		client = {
			image = "A_C_Husky.png",
		}
	},

	["keepcompanioncat"] = {
		label = "Cat",
		weight = 500,
		stack = false,
		close = true,
		description = "Cat is your royal companion!",
		client = {
			image = "A_C_Cat_01.png",
		}
	},

	["keepcompanioncoyote"] = {
		label = "Coyote",
		weight = 500,
		stack = false,
		close = true,
		description = "Coyote is your royal companion!",
		client = {
			image = "A_C_Coyote.png",
		}
	},

	["keepcompanionrabbit"] = {
		label = "Rabbit",
		weight = 500,
		stack = false,
		close = true,
		description = "Rabbit is your royal companion!",
		client = {
			image = "A_C_Rabbit_01.png",
		}
	},

	["keepcompanionmtlion"] = {
		label = "MtLion",
		weight = 500,
		stack = false,
		close = true,
		description = "MtLion is your royal companion!",
		client = {
			image = "A_C_MtLion.png",
		}
	},

	["keepcompanionretriever"] = {
		label = "Retriever",
		weight = 500,
		stack = false,
		close = true,
		description = "Retriever is your royal companion!",
		client = {
			image = "A_C_Retriever.png",
		}
	},

	["case_recoil"] = {
		label = "Pistol Case",
		weight = 2000,
		stack = false,
		close = true,
		description = "A prize awaits inside.",
		client = {
			image = "case_recoil.png",
		}
	},

	["case_prisma2"] = {
		label = "Rifle Case",
		weight = 2000,
		stack = false,
		close = true,
		description = "A prize awaits inside.",
		client = {
			image = "case_recoil.png",
		}
	},

	["advanceddecrypter"] = {
		label = "Advanced Decrypter",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "advanceddecrypter.png",
		}
	},

	["advanceddrill"] = {
		label = "Advanced Drill",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "advanceddrill.png",
		}
	},

	["home_insurance"] = {
		label = "Home Insurance",
		weight = 150,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "home_insurance.png",
		}
	},
}