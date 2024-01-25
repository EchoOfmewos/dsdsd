local Translations = {
    error = {
        ["canceled"]                = "Canceled",
        ["cannot_do_right_now"]     = "Cannot do this right now.",
        ["recently_did_this"]       = "Someone recently did this.",
        ["power_grid_active"]       = "The City's power-grid is still active.",
        ["wrong_phone_number"]      = "Wrong phone number, try again.",
        ["supplier_scared_off"]     = "You've put the wrong number in 3 times. The Supplier has been scared off!",
        ["not_enough_money"]        = "You don't have enough money.",
        ["executor_detected"]       = "Uh Oh.. Looks like someone is using an executor",
        ["key_required"]           = "You need a Key to open this cache!",
        ["key_broke"]              = "Your key broke..",
        ["cache_already_taken"]    = "The Cache has already been taken..",
        ["supplier_abandoned"]         = "You took too long, the Supplier has abandoned you.",
        ["no_refunds"]                 = "No Refunds!",
    },
    success = {
        ["marked_locations_on_map"]    = "I've marked locations on your Map.",
        ["email_sent"]                 = "I'll send an e-mail right now!",
        ["email_received"]             = "You've received an email with the phone numbers you need to put in.",
        ["correct_number_dialed"]      = "You've dialed the correct number. Now find the next one.",
        ["all_numbers_dialed"]         = "You've dialed all the correct numbers, caches have been marked on the map.",
        ["key_found"]                  = "You found a key!",
        ["cache_retrieved"]            = "You've retrieved the cache. POLICE WERE CALLED",
    },
    prints = {
        ["cooldown_started"] = "COKE MISSION: Cooldown started",
        ["cooldown_finished"] = "COKE MISSION: Cooldown sinished",
    },
    email = {
        ["unknown"] = "Unknown",
        ["mystery_package_subject"] = "Mystery Package Pickup",
        ["mystery_package_message"] = "My friend has restocked hidden underwater stashes all along the coast of LS, and marked them with flares, I have taken the liberty of also marking the locations on your GPS. You can reach these locations by stealing a boat or using your own. Good luck!",
        ["supplier_subject"] = "Phone Numbers",
        ["supplier_phone_numbers"] = "Here are the phone numbers you need to put in for my Supplier to get the Signal to resupply the caches:",
    },
    target = {
        ["retrieve_cache"]             = "Retrieve Cache",
        ["pay_cost"]                   = "Pay me",
    },
    progress = {
        ["search_register"]            = "Talking to...",
        ["open_trunk"]                 = "Retrieving Cache",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})