fx_version 'cerulean'
game 'gta5'
author 'Ajaxon'
description 'Mapdata'
version '1.0.3'
this_is_a_map 'yes'
lua54 'yes'

replace_level_meta 'gta5'

dependencies { 
    '/server:5503',
    '/gameBuild:2545',
}

data_file 'TIMECYCLEMOD_FILE' 'ajaxon_timecycle.xml'
data_file "AUDIO_GAMEDATA" "game.dat"


files {
    'ajaxon_timecycle.xml',
    'gta5.meta',
    'doortuning.ymt',
    'game.dat151.rel',
}

client_script {
    'ajaxon_entityset.lua',
}

escrow_ignore {
    'ajaxon_entityset.lua',
}

dependency '/assetpacks'