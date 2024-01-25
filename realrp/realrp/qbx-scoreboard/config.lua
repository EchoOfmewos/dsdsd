Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.Toggle = false -- If this is false the scoreboard stays open only when you hold the OpenKey button, if this is true the scoreboard will be openned and closed with the OpenKey button

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 100) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["parkingmeter"] = {
        minimumPolice = 5,
        busy = false,
        label = "Parking Meter Robbing",
    },
    ["scraprobbery"] = {
        minimumPolice = 3,
        busy = false,
        label = "Stealing Materials",
    },
    ["atm"] = {
        minimumPolice = 3,
        busy = false,
        label = "ATM Robbery"
    },
    ["storerobbery"] = {
        minimumPolice = 4,
        busy = false,
        label = "Store Robbery",
    },
    ["oxyrun"] = {
        minimumPolice = 6,
        busy = false,
        label = "Oxy Runs",
    },
    ["yacht"] = {
        minimumPolice = 15,
        busy = false,
        label = "Yacht Heist"
    },
    ["bankrobbery"] = {
        minimumPolice = 7,
        busy = false,
        label = "Fleeca Bank Heist"
    },
    ["paleto"] = {
        minimumPolice = 12,
        busy = false,
        label = "Paleto Bank Heist"
    },
    ["jewellery"] = {
        minimumPolice = 6,
        busy = false,
        label = "Vangelico Heist"
    },
    ["warehouse"] = {
        minimumPolice = 6,
        busy = false,
        label = "Warehouse Heist"
    },
    ["bobcat"] = {
        minimumPolice = 5,
        busy = false,
        label = "Bobcat Heist"
    },
    ["drug"] = {
        minimumPolice = 6,
        busy = false,
        label = "Drug Mission"
    },
    ["cornerselling"] = {
        minimumPolice = 5,
        busy = false,
        label = "Selling Drugs"
    }
}

-- Show ID's for all players or Opted in Staff
Config.ShowIDforALL = true
