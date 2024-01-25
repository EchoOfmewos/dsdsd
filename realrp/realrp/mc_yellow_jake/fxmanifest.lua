lua54 'yes'
fx_version 'cerulean'

game 'gta5'
this_is_a_map 'yes'

author 'Apollo Developments'
description 'M.C Yellow Jack'
version '1.0.0'

files {
    'audio/apollo_mc_yellowjack_game.dat151.rel',
    'audio/apollo_mc_jackgarage_game.dat151.rel',
    }


data_file 'AUDIO_GAMEDATA' 'audio/apollo_mc_yellowjack_game.dat'
data_file 'AUDIO_GAMEDATA' 'audio/apollo_mc_jackgarage_game.dat'





client_scripts { 
    'client.lua',
    'apollo_yellowjack_entityset_mods.lua',
}


escrow_ignore {
    'stream/front_sign_unlocked/*.ydr',
    'stream/unlocked/*.ydr',
    'stream/unlocked/*.ydd',
    'stream/ytd/*.ytd',
    'client.lua',
    'apollo_yellowjack_entityset_mods.lua',
}
    
dependency '/assetpacks'