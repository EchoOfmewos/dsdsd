

--[[ FX Information ]]--
fx_version   'cerulean'
use_experimental_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'

--[[ Resource Information ]]--
name         'cortex_backitems'
author       'Cortex Scripts | Cortex#5288'
description  '[ESX/ox_core, ox_inventory-version] This script allow you to put weapons or items on your back'
version      '1.0.9'

client_scripts {
    'config.lua',
    'client/main.lua',
    'client/utils.lua'
}

server_script 'server/server.lua'

shared_script '@ox_lib/init.lua'

escrow_ignore {
    'config.lua',
    'client/utils.lua',
    'server/server.lua'
}
dependency '/assetpacks'