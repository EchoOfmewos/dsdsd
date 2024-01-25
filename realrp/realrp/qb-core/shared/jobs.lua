QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	-- Default Jobs
	['unemployed'] = {label = 'Civilian', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Freelancer', payment = 75}}},
    ['bus'] =        {label = 'Bus',      defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Driver',     payment = 50}}},
	['lawyer'] =     {label = 'Law Firm', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Associate',  payment = 50}}},
	['reporter'] =   {label = 'Reporter', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Journalist', payment = 50}}},
	['trucker'] =    {label = 'Trucker',  defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Driver',     payment = 0}}},
	['garbage'] =    {label = 'Garbage',  defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Collector',  payment = 50}}},
	['vineyard'] =   {label = 'Vineyard', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Picker',     payment = 50}}},
	['hotdog'] =     {label = 'Hotdog',   defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Sales',      payment = 0}}},

	-- Police
	['police'] = 	 {label = 'Law Enforcement', type = "leo", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 250},
			['1'] = {name = 'Officer', payment = 275},
			['2'] = {name = 'Supervisor', payment = 300},
			['3'] = {name = 'Staff', payment = 325},
			['4'] = {name = 'Command', isboss = true, bankAuth = true, payment = 350},
        },
	},
	['fbi'] = {label = 'Federal Investigation Bureau', type = "leo", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Trainee', payment = 50},
			['1'] = {name = 'Agent', payment = 75},
			['2'] = {name = 'Field Agent', payment = 100},
			['3'] = {name = 'Special Agent', payment = 125},
			['4'] = {name = 'Director', isboss = true, payment = 150},
        },
	},
	['judge'] = {label = 'DepartmentOfJustice', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = { name = 'Legal Secretary', payment = 200 },
            ['1'] = { name = 'Defense Attorney', payment = 200 },
            ['2'] = { name = 'State Attorney', payment = 200 },
            ['3'] = { name = 'Judge', payment = 320 },
            ['4'] = { name = 'Asst. Attorney General', isboss = true, payment = 355 },
            ['5'] = { name = 'Attorney General', isboss = true, bankAuth = true, payment = 385 },
        },
	},

	-- EMS
	['ambulance'] = {label = 'EMS', type = 'ems', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 80},
			['1'] = {name = 'Paramedic', payment = 95},
			['2'] = {name = 'Doctor', payment = 105},
			['3'] = {name = 'Surgeon', payment = 145},
			['4'] = {name = 'Chief', isboss = true, bankAuth = true, payment = 165},
        },
	},
	['realestate'] = {label = 'Real Estate', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'House Sales', payment = 50},
			['2'] = {name = 'Business Sales', payment = 50},
			['3'] = {name = 'Broker', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['taxi'] = {label = 'Taxi', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Driver', payment = 50},
			['2'] = {name = 'Event Driver', payment = 50},
			['3'] = {name = 'Sales', payment = 50},
			['4'] = {name = 'Manager', isboss = true, payment = 50},
        },
	},
	['tow'] = {label = 'Towing', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Driver', payment = 50},
			['1'] = {name = 'TowBoss', payment = 75},
        },
	},
	['cardealer'] = {label = 'Vehicle Dealer', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 680},
			['1'] = {name = 'Showroom Sales', payment = 700},
			['2'] = {name = 'Business Sales', payment = 750},
			['3'] = {name = 'Finance', payment = 780},
			['4'] = {name = 'Manager', isboss = true, payment = 800},
        },
	},

	-- Mechanic Jobs
	['greasetwo'] = {label = 'GreaseGods', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['lscustoms'] = {label = 'LSMechanic', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['stormautos'] = {label = 'TunerMechanic', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['quickrepairs'] = {label = 'HayesMechanic', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['alvarez'] = {label = 'Alvarez Auto Works', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['gasmonkey'] = {label = 'Gas Monkey Garage', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['harshop'] = {label = 'Hars Auto', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['slater'] = {label = 'Slaters Mechanic Shop', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['stopngo'] = {label = 'Auto Exotics Inc.', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['tuner'] = {label = 'Turner', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['mudshop'] = {label = 'Mud & Mods Repairs', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['mudshoptwo'] = {label = 'Mud & Mods Repairs V2', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['grease'] = {label = 'Grease Gods Shop', type = "mechanic", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},

	-- Food Jobs
	['pearl'] = {label = 'pearl', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', payment = 50},
			['5'] = {name = 'Boss', isboss = true, bankAuth = true, payment = 50},
        },
	},
	['burgershot'] = {label = 'BurgerShot', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},

	['bakery'] = {label = 'Bakery', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	
	['henhouse'] = {label = 'Hen House', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 50},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['catcafe'] = {label = 'Cat Cafe', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['tacos'] = {label = 'Taco Shop', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Trainee', payment = 50},
			['1'] = {name = 'Employee', payment = 50},
			['2'] = {name = 'Taco Chef', payment = 50},
			['3'] = {name = 'Manager', payment = 75},
			['4'] = {name = 'CEO', isboss = true, payment = 75},
        },
	},
	['dunkindonut'] = {label = 'Dunkin Donuts', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 300},
			['1'] = {name = 'Employee', payment = 350},
			['2'] = {name = 'Casher', payment = 400},
			['3'] = {name = 'Manager', payment = 480},
			['4'] = {name = 'Owner', isboss = true, payment = 550},
        },
	},
	['cluckinbell'] = {label = 'Cluckin Bell', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 55},
			['2'] = {name = 'Experienced', payment = 55},
			['3'] = {name = 'Assistant Manager', payment = 55},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
			['5'] = {name = 'Owner', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['noodles'] = {label = 'Noodles Employee', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Trainee', payment = 400},
			['1'] = {name = 'Employee', payment = 450},
			['2'] = {name = 'Chef', payment = 500},
			['3'] = {name = 'Manager', payment = 550},
			['4'] = {name = 'Owner', isboss = true, payment = 600},
        },
	},
	['pizzathis'] = {label = 'Pizza This', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['bahama'] = {label = 'Bahama Mamas', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['vanilla'] = {label = 'Vanilla Unicorn', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['tequilala'] = {label = 'Tequilala', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['upnatom'] = {label = 'Up n Atom', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['hornys'] = {label = 'Hornys', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Advanced', payment = 75},
			['4'] = {name = 'Manager', isboss = true, bankAuth = true, payment = 75},
        },
	},

	-- Misc Jobs
	['gruppesechs'] =        {label = 'Gruppe 6',      defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Collector',     payment = 50}}},
	['galaxy'] = {label = 'Galaxy Nightclub', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Bartender', payment = 50},
			['1'] = {name = 'Dancer', payment = 50},
			['2'] = {name = 'Security', payment = 50},
			['3'] = {name = 'DJ', payment = 75},
			['4'] = {name = 'Manager', payment = 60},
			['5'] = {name = 'Owner', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['bestbuds'] = {label = 'Bestbuds', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Bud Seller', payment = 550},
			['1'] = {name = 'Trimmer', payment = 600},
			['2'] = {name = 'Proccesor', payment = 750},
			['3'] = {name = 'Management', isboss = true, payment = 1250},
        },
	},
	['whitewidow'] = {label = 'White Widow', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Experienced', payment = 50},
			['2'] = {name = 'Advanced', payment = 75},
			['3'] = {name = 'Owner', isboss = true, bankAuth = true, payment = 75},
        },
	},

	['records'] = {label = '47 Records', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['2'] = {name = 'Advanced', payment = 75},
			['3'] = {name = 'Owner', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['casino'] = {label = 'Casino', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Security', payment = 50},
			['1'] = {name = 'Novice', payment = 50},
			['2'] = {name = 'Experienced', payment = 50},
			['3'] = {name = 'Boss', isboss = true, bankAuth = true, payment = 75},
        },
	},
	['billiards'] = {label = 'Billiards', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Dishwasher', payment = 50},
			['1'] = {name = 'Wait Staff', payment = 50},
			['2'] = {name = 'Deliveries', payment = 50},
			['3'] = {name = 'Bartender', payment = 50},
			['4'] = {name = 'Floor Manager', payment = 50},
			['5'] = {name = 'General Manager', isboss = true, payment = 75},
			['6'] = {name = 'Owner', isboss = true, payment = 75},
        },
	},
}