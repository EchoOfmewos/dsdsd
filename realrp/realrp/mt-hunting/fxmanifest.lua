fx_version 'cerulean'
author 'Marttins#0001'
description 'Simple hunting script made by MT Scripts for QBCore and QBox'
game 'gta5'

client_scripts {
    '@ox_lib/init.lua',
    'client/*.lua',
}

server_scripts {
    '@ox_lib/init.lua',
    'server/*.lua',
}

shared_scripts {
    'config.lua',
}

escrow_ignore {
    'client/functions.lua',
    'config.lua',
}

files{
    'web/*'
}

ui_page('web/index.html')

lua54 'yes'
dependency '/assetpacks'