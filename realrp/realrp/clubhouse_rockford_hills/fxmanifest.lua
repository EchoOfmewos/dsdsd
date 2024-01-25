

lua54 'yes'
fx_version 'cerulean'

game 'gta5'
this_is_a_map 'yes'

author 'Apollo developments'
description 'M.C Clubhouse RockFord Hills'
version '1.0.0'

client_script 'client.lua'


file 'clubhouse_rockford_hills_manifest.ymt'


data_file 'SCENARIO_POINTS_OVERRIDE_FILE' 'clubhouse_rockford_hills_manifest.ymt'



escrow_ignore {
    'client.lua',
    'stream/*.ytd'
    }


dependency '/assetpacks'