Config = {}
Config.Debug = false -- True / False for Debug System
Config.Dispatch = "ps-dispatch" -- 'default' / 'ps-dispatch' / 'cd_dispatch'
Config.PoliceRequired = 0 -- How many PD Officers Required to request
Config.Cooldown = 1 -- Server cooldown for alerts ( Set in minutes )

Config.Locations = {
    ["police"] = { -- Set this to the name of the job
        Required = 0, -- How many players with this job are required to be online to make a request/alert (You'll need to add events that track the amount of players online with that job. Police / Ambulance is setup by default)
        Zone = { -- Polyzone Info
            name = "MRPD Front Desk", -- Name of the menu title
            coords = vector3(441.24325561523, -981.88629150391, 30.689582824707), -- Boxzone Coords
            length = 1.0, width = 0.8, -- Boxzone Length / Width
            heading = 335, -- Boxzone Heading
            minZ = 28.69,
            maxZ = 29.69,
        },
        Menu = { -- Menu Info ( Set Header, Text, Icon, Event, and Event Type )
            [1] = { Header = 'Assistance', Txt = '', Icon = 'fas fa-hand', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'assistance' },
            [2] = { Header = 'Weapon License', Txt = '', Icon = 'fas fa-gun', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'weaponlicense' },
            [3] = { Header = 'Interview', Txt = '', Icon = 'fas fa-people-arrows-left-right', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'interview' },
            [4] = { Header = 'Supervisor', Txt = '', Icon = 'fas fa-crown', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'supervisor' },
        },
    },
    --[[["police"] = { -- Set this to the name of the job
        Required = 0, -- How many players with this job are required to be online to make a request/alert (You'll need to add events that track the amount of players online with that job. Police / Ambulance is setup by default)
        Zone = { -- Polyzone Info
            name = "RHPD Front Desk", -- Name of the menu title
            coords = vector3(-376.69732666016, -353.39877319336, 31.654624938965), -- Boxzone Coords
            length = 1.0, width = 0.8, -- Boxzone Length / Width
            heading = 335, -- Boxzone Heading
            minZ = 28.69,
            maxZ = 29.69,
        },
        Menu = { -- Menu Info ( Set Header, Text, Icon, Event, and Event Type )
            [1] = { Header = 'Assistance', Txt = '', Icon = 'fas fa-hand', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'assistance' },
            [2] = { Header = 'Weapon License', Txt = '', Icon = 'fas fa-gun', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'weaponlicense' },
            [3] = { Header = 'Interview', Txt = '', Icon = 'fas fa-people-arrows-left-right', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'interview' },
            [4] = { Header = 'Supervisor', Txt = '', Icon = 'fas fa-crown', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'supervisor' },
        },
    },]]--
    ["ambulance"] = {
        Required = 0, -- How many players with this job are required to be online to make a request/alert (You'll need to add events that track the amount of players online with that job. Police / Ambulance is setup by default)
        Zone = {
            name = "Pillbox Front Desk",
            coords = vector3(311.81, -593.42, 42.28),
            length = 0.8, width = 0.8,
            heading = 337,
            minZ = 41.28,
            maxZ = 42.28
        },
        Menu = {
            [1] = { Header = 'Assistance', Txt = '', Icon = 'fas fa-hand', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'assistance'},
            [2] = { Header = 'Interview', Txt = '', Icon = 'fas fa-people-arrows-left-right', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'interview' },
            [3] = { Header = 'Supervisor', Txt = '', Icon = 'fas fa-crown', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'supervisor'},
        }
    }
}
