Config = {}

Config.Framework = 'qb' -- 'esx' or 'qb'
Config.Target = 'ox_target' -- 'qb-target', 'ox_target' or 'qtarget'

Config.ESXName = 'es_extended'      -- custom ESX name 
Config.QBName = "qb-core"           -- custom QB-Core name

Config.Debug = false -- Set to true to enable debug mode

-- Tool Settings

-- (Remove Wheels)
Config.EnableImpactDriver = true            -- enable/disable the impact_driver        

-- (Remove Doors)
Config.EnableSaw = true                     -- enable/disable the buzz_saw             

-- (Cut Brakes)
Config.EnablePliers = true                  -- enable/disable the pliers               
Config.NoBrakesSpeed = 35                   -- Speed at which the brakes will fail (MPH) - to allow reversing - 0 will disable reversing, anything under 35 may glitch reversing animation

-- (Sabotage Controls)
Config.EnableAdjSpanner = true              -- enable/disable the adjustable_spanner   

-- (Sabotage Gas Tank)
Config.EnableDrill = true                   -- enable/disable the drill                
Config.LeakSpeed = 60                       -- Speed at which the gas tank can start leaking (MPH)

-- (Loosen Wheel Nuts)
Config.EnableSpanner = true                 -- enable/disable the spanner              
Config.WheelFallOffSpeed = 15               -- Speed at which wheels can start falling off (MPH)         



-- Car Bomb Settings
Config.EnableIgnitionBomb = true
Config.EnableRemoteBomb = true
Config.EnableImpactBomb = true

Config.IgnitionBombItem = 'ignition_bomb'        -- Item to use for ignition bomb
Config.ImpactBombItem = 'impact_bomb'            -- Item to use for impact bomb
Config.RemoteBombItem = 'remote_bomb'            -- Item to use for remote bomb
Config.RemoteDetonatorItem = 'phone_bomb'        -- Item to use for remote detonator

-- Arson Settings
Config.EnableFireLighter = true
Config.LightFireItem = 'firelighter'                 -- Item to use for lighting fires

-- Repair Settings
Config.RepairJob = 'mechanic'               -- Job to use for repairs
Config.RepairTime = 10                      -- Time in seconds to repair a vehicle

Config.RealisticRepair = true              -- enable/disable realistic repairs for brakes, controls, gas tank etc. 
-- if true you must be holding the right tool for some repairs (brakes = spanner, controls = adjustable spanner)
--(to enable this you must use vehicle lifts (such as in wasabi_mechanic) as it will require you to be underneath the vehicle for some repairs)




-- Sound Settings          -- You must have the sound files in your Interact-Sound folder for this to work!
Config.SawVolume = 0.2     -- [0.1 = 10% volume, 1.0 = 100% volume]
Config.ImpactDriverVolume = 0.3
Config.DrillVolume = 0.2

Config.MiniGame = true -- Set to true to enable the minigames

function skillCheckEasy()    -- change your minigame here
    return lib.skillCheck({'easy'}, {'e'}) --lib.skillCheck({'easy'}, {'w', 'a', 's', 'd'})
end
function skillCheckFast()    -- change your minigame here
    return lib.skillCheck({areaSize = 100, speedMultiplier = 2}, {'e'}) --lib.skillCheck({'easy'}, {'w', 'a', 's', 'd'})
end

function skillCheckLong()    -- change your minigame here
    return lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'medium', 'medium', {areaSize = 100, speedMultiplier = 2}, 'medium'}, {'w', 'a', 's', 'd'})
end

-- Language
Config.Lang = {
    -- Door Names
    ['driver_door'] = 'Driver Door',
    ['passenger_door'] = 'Passenger Door',
    ['back_driver_door'] = 'Back Driver Door',
    ['back_passenger_door'] = 'Back Passenger Door',
    ['hood'] = 'Hood',
    ['trunk'] = 'Trunk',

    -- Tire label
    ['remove_wheel'] = 'Remove Wheel',

    -- Target labels
    ['chop_target'] = 'Remove ',
    ['saw_off'] = 'Saw Off ',
    ['saw_off_door'] = 'Saw Off Door',
    ['impact_driver'] = 'Impact Driver',
    ['buzz_saw'] = 'Buzz Saw',
    ['pickup_buzz_saw'] = 'Disassemble Buzz Saw',
    ['loosen'] = 'Loosen Wheel Bolts',
    ['sabotage_tank'] = 'Sabotage Fuel Tank',
    ['fix_tank'] = 'Repair Fuel Tank',
    ['cut_brakes'] = 'Cut Brakes',
    ['fix_brakes'] = 'Repair Brake Lines',
    ['sabotage_controls'] = 'Sabotage Control Box',
    ['fix_controls'] = 'Repair Contol Box',
    ['rig_ignition'] = 'Rig Ignition Explosive',
    ['rig_remote'] = 'Rig Remote Explosive',
    ['rig_impact'] = 'Rig Impact Explosive',
    ['disarm_bomb'] = 'Disarm Explosive',


}