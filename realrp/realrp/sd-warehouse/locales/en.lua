local Translations = {
    error = {
        ["canceled"]                    = "Canceled..",
        ["you_failed"]                    = "You failed!",
        ["no_equipment"]                    = "You do not have the required equipment.",
        ["get_to_safe"]                    = "Get to a safe distance!",
        ["no_cops"]                    = "Not enough cops!",
        ["recently_robbed"]                    = "This place has been robbed recently!",
    },
    success = {
        ["locks_disabled"]                    = "The Electronic Locks have been disabled! Enter through Gate 1",
        ["locks_enabled"]                    = "You've locked all the entrances..",
        ["doors_unlocked"]                    = "All the exits are now unlocked!",
    },
    prints = {
        ["cooldown_started"] = "WAREHOUSE: Cooldown started",
        ["cooldown_finished"] = "WAREHOUSE: Cooldown finished",
    },
    target = {
        ["loot_crate"]                    = "Loot Crate",
        ["enter_warehouse"]                    = "Enter Warehouse",
        ["leave_warehouse"]                    = "Leave Warehouse",
        ["enable_locks"]                    = "Enable Locks",
        ["disable_locks"]                    = "Disable Locks",
    },
    progress = {
        ["looting_crate"]             = "Looting Crate..",
    },   
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})