config = {}

-- target resource (only one of these can be true)
-------------------------------------------------------
config.qbtarget = false  
config.oxtarget = true  
-------------------------------------------------------


config.pedmodel = 'a_m_m_prolhost_01' -- ped model hash

config.scenario = 'WORLD_HUMAN_CLIPBOARD' -- scenario for ped to play, false to disable

config.locations = {
    ['legion'] = {
        ped = true, -- if false uses boxzone (below)

        coords = vector4(-258.99, -985.92, 30.22, 342.66),
        
        -------- boxzone (only used if ped is false) --------

        length = 1.0,  
        width = 1.0,   
        minZ = 30.81,  
        maxZ = 30.81,  
        debug = false, 

        -----------------------------------------------------
        vehicles = {
            ['asea']        = {     -- vehicle model name
                price = 250,        -- ['vehicle'] = price
                image = 'https://i.imgur.com/gpw2CNy.png',      -- image for menu, false for no image
            },
            ['sentinel']    = {
                price = 200, 
                image = 'https://i.imgur.com/LheKlzT.png',
            },
            ['bison']       = {
                price = 100, 
                image = 'https://i.imgur.com/uOvGpSy.png',
            },
            ['patriot']     = {
                price = 500, 
                image = 'https://i.imgur.com/LsqIPvJ.png',
            },
            ['stretch']     = {
                price = 200, 
                image = 'https://i.imgur.com/pZeUmzV.png',
            },

        },

        vehiclespawncoords = vector4(-235.38735961914, -988.58477783203, 29.196821212769, 160.34536743164), -- where vehicle spawns when rented

    },
    ['legiontwo'] = {
        ped = true, -- if false uses boxzone (below)

        coords = vector4(108.84, -1089.37, 29.3, 341.95),
        
        -------- boxzone (only used if ped is false) --------

        length = 1.0,  
        width = 1.0,   
        minZ = 30.81,  
        maxZ = 30.81,  
        debug = false, 

        -----------------------------------------------------
        vehicles = {
            ['asea']        = {     -- vehicle model name
                price = 250,        -- ['vehicle'] = price
                image = 'https://i.imgur.com/gpw2CNy.png',      -- image for menu, false for no image
            },
            ['sentinel']    = {
                price = 200, 
                image = 'https://i.imgur.com/LheKlzT.png',
            },
            ['bison']       = {
                price = 100, 
                image = 'https://i.imgur.com/uOvGpSy.png',
            },
            ['patriot']     = {
                price = 500, 
                image = 'https://i.imgur.com/LsqIPvJ.png',
            },
            ['stretch']     = {
                price = 200, 
                image = 'https://i.imgur.com/pZeUmzV.png',
            },

        },

        vehiclespawncoords = vector4(111.33, -1080.92, 28.59, 342.2), -- where vehicle spawns when rented

    },
    ['sandy'] = {
        ped = true, -- if false uses boxzone (below)

        coords = vector4(1708.31, 3598.87, 34.42, 206.39),
        
        -------- boxzone (only used if ped is false) --------

        length = 1.0,  
        width = 1.0,   
        minZ = 30.81,  
        maxZ = 30.81,  
        debug = false, 

        -----------------------------------------------------
        vehicles = {
            ['asea']        = {     -- vehicle model name
                price = 250,        -- ['vehicle'] = price
                image = 'https://i.imgur.com/gpw2CNy.png',      -- image for menu, false for no image
            },
            ['sentinel']    = {
                price = 200, 
                image = 'https://i.imgur.com/LheKlzT.png',
            },
            ['bison']       = {
                price = 100, 
                image = 'https://i.imgur.com/uOvGpSy.png',
            },
            ['patriot']     = {
                price = 500, 
                image = 'https://i.imgur.com/LsqIPvJ.png',
            },
            ['stretch']     = {
                price = 200, 
                image = 'https://i.imgur.com/pZeUmzV.png',
            },

        },

        vehiclespawncoords = vector4(1716.09, 3597.72, 35.24, 118.78), -- where vehicle spawns when rented

    },

    ['paleto'] = {
        ped = true, -- if false uses boxzone (below)

        coords = vector4(-126.93, 6291.63, 31.34, 312.56),
        
        -------- boxzone (only used if ped is false) --------

        length = 1.0,  
        width = 1.0,   
        minZ = 30.81,  
        maxZ = 30.81,  
        debug = false, 

        -----------------------------------------------------
        vehicles = {
            ['asea']        = {     -- vehicle model name
                price = 250,        -- ['vehicle'] = price
                image = 'https://i.imgur.com/gpw2CNy.png',      -- image for menu, false for no image
            },
            ['sentinel']    = {
                price = 200, 
                image = 'https://i.imgur.com/LheKlzT.png',
            },
            ['bison']       = {
                price = 100, 
                image = 'https://i.imgur.com/uOvGpSy.png',
            },
            ['patriot']     = {
                price = 500, 
                image = 'https://i.imgur.com/LsqIPvJ.png',
            },
            ['stretch']     = {
                price = 200, 
                image = 'https://i.imgur.com/pZeUmzV.png',
            },

        },

        vehiclespawncoords = vector4(-131.27, 6279.81, 30.77, 320.03), -- where vehicle spawns when rented

    },

    -- add as many locations as you'd like with any type of vehicle (air, water, land) follow same format as above
}

