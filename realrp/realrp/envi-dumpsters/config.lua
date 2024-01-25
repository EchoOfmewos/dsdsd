Config = {}

Config.DebugMode = false -- Set to false to disable debug messages
Config.TrashCooldown = 120 -- The time in MINS a player must wait before they can search the same trash again.

Config.AdvancedCheaterCheck = true -- Set to false to disable the advanced cheater check. [WaveShield does not like this..]

Config.Fails = {
    EnableFail = true, -- Set to false to disable the fail
    EnableRatEvent = true, -- Set to false to disable rat events
    EnableNeedleEvent = true, -- Set to false to disable needle events
    FailChancePercent = 13, -- The probability, as a percentage, that a player will fail when attempting to search the trash. A higher number means a greater chance of failure.
    DirtyNeedlesChancePercent = 20, -- The chance, as a percentage, of encountering dirty needles when a failure occurs during trash pickup. This only applies if needle events are enabled.
    DirtyNeedlesEffectTime = 30, -- The time, in seconds, that the dirty needles effect will last. This only applies if needle events are enabled.
    RatChancePercent = 70, -- The chance, as a percentage, of encountering a rat when a failure occurs during trash pickup. This only applies if rat events are enabled and is evaluated after the dirty needles chance.
    DirtyNeedlesHealthLoss = 20, -- The amount of health a player will lose if they are affected by the dirty needles event. This is a fixed value and only applies if needle events are enabled.
    HealthLoss = 10, -- The fixed amount of health a player will lose on a generic fail event, where no specific event like dirty needles or a rat is triggered.
    RatHealthLoss = 5, -- The fixed amount of health a player will lose if they are affected by the rat event. This is a fixed value and only applies if rat events are enabled.
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Aggressive Ped Settings --

Config.AggressivePedsAttack = true -- Set to false to disable hostile hobo events
Config.AggressivePedDistance = 25 -- The distance, in meters, that a player must be from a hobo before they will become hostile. This only applies if hostile hobo events are enabled.
                                  -- BEWARE: This distance is DOUBLED when searching a model from 'otherSearchables' (Homeless Props)
                            
Config.AggressivePeds = {
    'a_m_m_tramp_01',
    'a_m_m_trampbeac_01',
    'A_M_M_Hillbilly_02',
    'A_M_M_RurMeth_01',
    'A_M_M_Salton_01',
    'A_M_M_Salton_02',
    'A_M_M_Salton_03',
    'A_M_M_Salton_04',
    'a_f_m_skidrow_01',
    'a_f_m_trampbeac_01',
    'a_f_o_salton_01',
    'a_f_y_hippie_01',
    'a_f_y_rurmeth_01',
    'a_m_m_skidrow_01',
    'a_m_o_tramp_01',
    'a_m_o_trampbeac_01',
    'a_m_o_beach_01',
    'a_m_o_salton_01',
    'a_m_o_soucent_02',
    'a_m_o_soucent_03',
    'a_m_y_methhead_01',
    'a_m_y_salton_01',
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Rewards Settings --

Config.RandomSelection = { -- Configuration for the random item selection
    itemCountMin = 1, -- Number of items to select randomly (DEFAULT: random between 1 and 5)
    itemCountMax = 3, -- Number of items to select randomly (DEFAULT: random between 1 and 5)
}

Config.BeachCanItems = {
    {name = "plastic", metadata = {}, min = 1, max = 3},
    {name = "iron", metadata = {}, min = 1, max = 3},
    {name = "steel", metadata = {}, min = 1, max = 3},
    {name = "aluminum", metadata = {}, min = 1, max = 3},
    {name = "glass", metadata = {}, min = 1, max = 3},
    {name = "rubber", metadata = {}, min = 1, max = 1},
    {name = "copper", metadata = {}, min = 1, max = 1},
    {name = "ironoxide", metadata = {}, min = 1, max = 3},
    {name = "metallicaluminum", metadata = {}, min = 1, max = 3},
    -- ADD AS MANY AS YOU LIKE
}

Config.BeachCanItemsRare = {
    -- ADD AS MANY AS YOU LIKE
}

Config.BeachCanItemsRareChance = 5 -- The chance, as a percentage, of finding an extra rare item!

--------------------------------------------------------

Config.DumpsterItems = {
    {name = "plastic", metadata = {}, min = 1, max = 3},
    {name = "iron", metadata = {}, min = 1, max = 3},
    {name = "steel", metadata = {}, min = 1, max = 3},
    {name = "aluminum", metadata = {}, min = 1, max = 3},
    {name = "glass", metadata = {}, min = 1, max = 3},
    {name = "rubber", metadata = {}, min = 1, max = 3},
    {name = "copper", metadata = {}, min = 1, max = 3},
    {name = "ironoxide", metadata = {}, min = 1, max = 3},
    {name = "metallicaluminum", metadata = {}, min = 1, max = 3},
    -- ADD AS MANY AS YOU LIKE
}

Config.DumpsterItemsRare = {
    {name = "gun_stock", metadata = {}, min = 1, max = 1},
    {name = "gun_barrel", metadata = {}, min = 1, max = 1},
    {name = "gun_muzzle", metadata = {}, min = 1, max = 1},
    {name = "gun_grip", metadata = {}, min = 1, max = 1},
    {name = "wrench", metadata = {}, min = 1, max = 1},
    {name = "packofscrews", metadata = {}, min = 1, max = 1},
    -- ADD AS MANY AS YOU LIKE 

}

Config.DumpsterItemsRareChance = 5 -- The chance, as a percentage, of finding an extra rare item!

--------------------------------------------------------

Config.GarbageCanItems = {
    {name = "plastic", metadata = {}, min = 1, max = 3},
    {name = "iron", metadata = {}, min = 1, max = 3},
    {name = "steel", metadata = {}, min = 1, max = 3},
    {name = "aluminum", metadata = {}, min = 1, max = 3},
    {name = "glass", metadata = {}, min = 1, max = 3},
    {name = "rubber", metadata = {}, min = 1, max = 3},
    {name = "copper", metadata = {}, min = 1, max = 3},
    {name = "ironoxide", metadata = {}, min = 1, max = 3},
    {name = "metallicaluminum", metadata = {}, min = 1, max = 3},
    -- ADD AS MANY AS YOU LIKE
}

Config.GarbageCanItemsRare = {
    {name = "diamond", metadata = {}, min = 1, max = 5},
    {name = "casino_chips", metadata = {}, min = 1, max = 1000},
    {name = "blackdiamond", metadata = {}, min = 1, max = 5},
    {name = "meth_syringe", metadata = {}, min = 1, max = 1},
    -- ADD AS MANY AS YOU LIKE
}

Config.GarbageCanItemsRareChance = 5 -- The chance, as a percentage, of finding an extra rare item!




----------------------------------------------------------------

Config.OtherSeachablesItems = {
    -- ADD AS MANY AS YOU LIKE
}

Config.OtherSeachablesItemsRare = {
    {name = "weapon_bat", metadata = {}, min = 1, max = 1},
    {name = "casino_chips", metadata = {}, min = 1, max = 1},
    {name = "crack_1oz", metadata = {}, min = 1, max = 1},
    {name = "meth", metadata = {}, min = 1, max = 3},
    -- ADD AS MANY AS YOU LIKE
}

Config.OtherSeachablesItemsRareChance = 0 -- The chance, as a percentage, of finding an extra rare item!

----------------------------------------------------------------

Config.GarbageBagsItems = {

    {name = "burger", metadata = {}, min = 1, max = 1},
    {name = "lighter", metadata = {}, min = 1, max = 1},

    -- ADD AS MANY AS YOU LIKE

}

Config.GarbageBagsItemsRare = {
    {name = "diamond", metadata = {}, min = 1, max = 1},
    -- ADD AS MANY AS YOU LIKE

}

Config.GarbageBagsItemsRareChance = 5 -- The chance, as a percentage, of finding an extra rare item!
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Storage Settings --

Config.BeachCanStorageSlots = 3 -- The number of slots in the beach can storage
Config.BeachCanStorageWeight = 10000 -- The maximum weight of the beach can storage

Config.DumpsterStorageSlots = 8 -- The number of slots in the dumpster storage
Config.DumpsterStorageWeight = 50000 -- The maximum weight of the dumpster storage

Config.GarbageCanStorageSlots = 4 -- The number of slots in the garbage can storage
Config.GarbageCanStorageWeight = 12000 -- The maximum weight of the garbage can storage

Config.OtherStorageSlots = 5 -- The number of slots in the other storage
Config.OtherStorageWeight = 15000 -- The maximum weight of the other storage

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Exclusive Item Zones --
-- IF YOU ARE IN THESE AREAS, YOU WILL SOMETIMES FIND THESE ITEMS INSTEAD

Config.ExclusiveItemZones = {

    -- ADD AS MANY ZONES AS YOU LIKE

}



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Target Models --

BeachCans = {
    "prop_bin_beach_01a",
    "prop_bin_beach_01d",
    "prop_bin_delpiero",
    "prop_bin_delpiero_b",
}

Dumpsters = {
    "prop_cs_dumpster_01a",
    "p_dumpster_t",
    "prop_dumpster_01a",
    "prop_dumpster_02a",
    "prop_dumpster_02b",
    "prop_dumpster_3a",
    "prop_dumpster_4a",
    "prop_dumpster_4b",
}

GarbageCans = {
    "prop_bin_01a",
    "prop_bin_02a",
    "prop_bin_03a",
    "prop_bin_04a",
    "prop_bin_05a",
    "prop_bin_06a",
    "prop_bin_07a",
    "prop_bin_07b",
    "prop_bin_07c",
    "prop_bin_07d",
    "prop_bin_08a",
    "prop_bin_08open",
    "prop_bin_09a",
    "prop_bin_10a",
    "prop_bin_10b",
    "prop_bin_11a",
    "prop_bin_11b",
    "prop_bin_12a",
    "zprop_bin_01a_old",
}

OtherSearchables = {
    "prop_skid_trolley_2",
    "prop_skid_trolley_1",
    "prop_skid_tent_01",
    "prop_skid_tent_01b",
    "prop_skid_tent_03",
    "prop_skid_tent_cloth",
    "prop_rub_trolley03a",

}

TrashBagModels = {
    'prop_rub_binbag_01b',
    'prop_rub_binbag_04',

    -- ADD MORE IF YOU LIKE, BUT THESE ONES WORK BEST
}


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Animation Settings --
-- Fail Animations --
Config.RatFailAnim = { dict = 'misscarsteal2_bin', anim = 'trev_sink_exit' }
Config.DirtyNeedlesFailAnim = { dict = 'misscarsteal2_bin', anim = 'trev_sink_exit' }
Config.FailAnim = { dict = 'move_p_m_two_idles@generic', anim = 'fidget_sniff_fingers'} 

-- Search Animations --
BeachCanAnims = {
    { dict = 'anim@gangops@van@drive_grab@', anim = 'grab_drive' },
    { dict = 'amb@code_human_in_car_mp_actions@arse_pick@std@ps@base', anim = 'enter' },
    { dict = 'rcmepsilonism8', anim = 'bag_handler_grab_walk_left' },
    { dict = 'anim@scripted@player@freemode@gen_grab@heeled@', anim = 'low_multi' },
    { dict = 'anim@move_m@trash', anim = 'pickup' },
    { dict = 'anim@heists@prison_heiststation@heels', anim = 'pickup_bus_schedule' },
}

DumpsterAnims = {
    { dict = 'weapons@first_person@aim_idle@generic@melee@knife@shared@core', anim = 'fidget_low_loop' },
    { dict = 'missheistpaletoscore2', anim = 'dump_exit_franklin' },
    { dict = 'anim@gangops@facility@servers@bodysearch@', anim = 'player_search' },
    { dict = 'anim@gangops@morgue@table@', anim = 'player_search' },
    { dict = 'missexile3', anim = 'ex03_dingy_search_case_a_michael' },
    { dict = 'anim@amb@inspect@crouch@male_a@base', anim = 'base' },
}

GarbageCanAnims = {
    { dict = 'switch@trevor@garbage_food', anim = 'loop_trevor' },
    { dict = 'amb@prop_human_bum_bin@base', anim = 'base' },
    { dict = 'amb@prop_human_bum_bin@idle_b', anim = 'idle_d' },
    { dict = 'anim@heists@money_grab@briefcase', anim = 'enter' },
}

TrashBagAnims = {
    { dict = 'anim@gangops@facility@servers@bodysearch@', anim = 'player_search' },
    { dict = 'missexile3', anim = 'ex03_dingy_search_case_a_michael' },
    { dict = 'amb@medic@standing@kneel@base', anim = 'base' },
    { dict = 'amb@world_human_bum_wash@male@low@base', anim = 'base' },
    { dict = 'anim@am_hold_up@male', anim = 'shoplift_low' },


}


HideInDumpsterAnims ={
    { dict = 'anim@veh@apc@ds@enter_exit_front', anim = 'climb_up' },
    { dict = 'rcm_extreme1@heli', anim = 'heli_jump_l' },
    { dict = 'anim@veh@apc@ds@enter_exit_front', anim = 'climb_up' },

}

KickedOutDumpsterAnims = {
    { dict = 'anim@veh@truck@squaddie@rps@enter_exit', anim = 'jump_out'},
    { dict = 'anim@veh@plane@bombushka@common@enter_exit', anim = 'climb_down_no_door' },
    { dict = 'anim@veh@low@lm87@ds@enter_exit', anim = 'jump_out' },
}


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Config.Lang = {
    
    ['needles'] = 'You got stabbed by dirty needles!',
    ['rat'] = "A rat bit you!",
    ['fail'] = "You got hurt while searching the trash!",
    ['success'] = "You found something!",
    ['garbagebag'] = 'Could be something good in there.. Maybe you should break it open?',
    ['notrash'] = "No trash! Sorry!",
    ['look'] = "Try looking somewhere else!",
    ['cheater'] = "You're a dirty cheater!",
    ['look_somewhere_else'] = "Look somewhere else!",
    ['no_items'] = "You didn't find anything!",
    ['inspect'] = 'Inspect Trash Bag',
    ['open_garbage'] = 'Open Garbage Can',
    ['open_dumpster'] = 'Open Dumpster',
    ['search_dumpster'] = 'Search Dumpster',
    ['search_garbage'] = 'Search Garbage',
    ['search'] = 'Search',
    ['open'] = 'Open',

    -- Not added yet (Coming Soon..)
    ['hide_in_dumpster'] = 'Hide in Dumpster',
    ['dumpster_busy'] = 'Looks like someone is hiding in here!',

}