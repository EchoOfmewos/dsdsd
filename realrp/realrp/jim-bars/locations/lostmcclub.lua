-- Bahama Mamas
-- https://forum.cfx.re/t/free-map-bahama-mamas-retexture-improve/4889260

-- Galaxy Night Club

Config.Locations["lostmcclub"] = {
    zoneEnable = true,
    job = "bahama",
    gang = "lostmc",
    label = "Lost MC Bar",
    logo = "https://i.imgur.com/usIc09I.png",
    autoClockOut = true,
    zones = {
        vector2(357.23, 302.9),
        vector2(322.89, 311.28),
        vector2(347.11, 273.48),
        vector2(308.03, 269.83)
    },
    Blip = {
        showBlip = true,
        coords = vector3(1988.21, 3039.5, 47.22),
        color = 0,
        scale = 1.0,
        sprite = 226,
    },
    Targets = {
        Clockin = {
            --{ coords = vector3(391.36, 269.19, 94.99), h = 120.0, l = 0.9, w = 0.5, bottom = 93.9, top = 95.79, }, -- Mac pro upstairs back main room
        },
        Cocktails = {
            { coords = vector3(1988.63, 3039.36, 47.23), h = 344.0, l = 1.15, w = 2.0, bottom = 88.96, top = 91.99, },-- first bar below entry
            --{ coords = vector3(1990.62, 3038.09, 47.23), h = 295.0, l = 1.85, w = 0.85, bottom = 93.89, top = 94.99, },-- main room upper main bar left
            --{ coords = vector3(358.99, 283.95, 94.19), h = 35.0, l = 1.85, w = 0.85, bottom = 93.89, top = 94.99, },-- main room upper main bar right
            --{ coords = vector3(409.15, 249.89, 92.05), h = 345.0, l = 0.65, w = 0.85, bottom = 91.55, top = 92.85, },-- pool table room
        },
        Shop = { 
            { coords = vector3(1994.16, 3036.83, 47.21), h = 345.0, l = 1.75, w = 0.75, bottom = 92.19, top = 95.39, },-- main room upper main bar
            --{ coords = vector3(355.04, 288.36, 91.19), h = 255.0, l = 1.85, w = 0.85, bottom = 88.59, top = 92.59, },--     first bar below entry
            --{ coords = vector3(406.84, 249.97, 92.05), h = 75.0, l = 1.0, w = 0.5, bottom = 90.75, top = 92.85, },-- pool table room
        },
        Tap = {
            { coords = vector3(1991.25, 3037.73, 47.23), h = 74.0, l = 1.7, w = 1.5, bottom = 89.99, top = 91.99, },-- first bar below entry
            { coords = vector3(1987.94, 3039.65, 47.23), h = 345.0, l = 1.5, w = 0.5, bottom = 93.99, top = 94.99, },-- main room upper main bar
        },
        Coffee = {
            { coords = vector3(350.12420654297, 286.98840332031, 91.191459655762), h = 174.0, l = 1.5, w = 1.5, bottom = 29.06, top = 29.66, prop = false },--
            { coords = vector3(357.83779907227, 284.1608581543, 94.19189453125), h = 174.0, l = 1.0, w = 1.0, bottom = 29.06, top = 29.66, prop = false },--
        },
        Storage = {
            --{ coords = vector3(1989.41, 3037.79, 47.21), h = 174.0, l = 0.5, w = 0.5, bottom = 29.06, top = 29.66, prop = false },--
            { coords = vector3(1988.4, 3038.58, 47.21), h = 174.0, l = 1.5, w = 1.5, bottom = 29.06, top = 29.66, prop = false },--
            --{ coords = vector3(410.4416809082, 248.23907470703, 92.05248260498), h = 174.0, l = 1.5, w = 1.5, bottom = 29.06, top = 29.66, prop = false },--
        },
        HandWash = {
            { coords = vector3(352.79, 277.35, 94.19), h = 345.0, l = 1.45, w = 0.85, bottom = 92.79, top = 94.79, },-- main room upper main bar back room
            { coords = vector3(357.61, 278.75, 94.19), h = 345.0, l = 1.25, w = 0.85, bottom = 92.50, top = 94.99, },-- main room upper main bar back
        },
        Payment = {
            { coords = vector3(1989.48, 3039.51, 47.23), h = 236.07, l = 0.5, w = 0.5, bottom = 90.80, top = 91.79, prop = true },-- first bar below entry
            --{ coords = vector3(1990.63, 3038.1, 47.23), h = 340.0, l = 0.5, w = 0.5, bottom = 93.99, top = 94.99, },-- main room upper main bar
            --{ coords = vector3(406.29, 248.39, 92.05), h = 345.0, l = 0.5, w = 0.5, bottom = 91.65, top = 92.85, prop = true },
            --{ coords = vector3(344.33071899414, 284.59750366211, 95.790924072266), h = 340.0, l = 1.0, w = 1.0, bottom = 93.99, top = 94.99, },-- pool table room
        },
        Tray = {
            { coords = vector3(1987.38, 3040.74, 47.23), h = 75.0, l = 1.6, w = 1.2, bottom = 90.69, top = 91.79, },-- first bar below entry
            { coords = vector3(1990.63, 3038.8, 47.23), h = 344.0, l = 2.25, w = 0.85, bottom = 93.99, top = 94.99, },-- main room upper main bar
            --{ coords = vector3(408.1, 250.21, 92.05), h = 75.0, l = 1.0, w = 0.4, bottom = 91.85, top = 92.85, },-- pool table room
        },
    },
    --Custom DJ Booth Stuff
    Booth = {
        enableBooth = false, -- Set false if using external DJ/Music stuff.
        DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
        radius = 40, -- The radius of the sound from the booth
        coords = vector3(372.75, -934.16, 25.33), -- Where the booth is located
        playing = false, -- No touch.
    },
}

