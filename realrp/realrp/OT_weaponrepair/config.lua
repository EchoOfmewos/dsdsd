Config = {}

Config.useOTSkills = false -- requires our skills system, you can find here: https://forum.cfx.re/t/paid-ot-skills/4917372
Config.xpreward = 5

Config.requireditem = 'weaponrepairkit'
Config.requireditemamount = 1
Config.repairtime = 30000
Config.repairItem = 'weaponrepairkit'

Config.require = {
    ['WEAPON_NAVYREVOLVER'] = {
        requireditem = 'weaponrepairkit',
        requireditemamount = 1,
        repairtime = 10000
    },
}

Config.locations = {
    {
        coords = vector3(-1583.05, -426.98, 18.73),
        heading = 271.89,
        spawnprop = true, -- spawns the workbench at the location 
        free = false -- allows weapons to be repaired for free at the location
    }
}