fx_version 'adamant'
game 'gta5'
lua54 'yes'
author 'sheen'
version '4.0'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/config.lua',
}

client_scripts {
    '@menuv/menuv.lua',
    'client/menu_f.lua',

    'client/client_editable.lua',

    'client/scaleforms.lua',
    'client/functions.lua',

    'client/client.lua',
    'client/target.lua',
    'client/camera.lua',
    
    'client/ox_menu.lua',
    'client/menuv_menu.lua',
    'client/war_menu.lua',
}

server_scripts { 
    '@mysql-async/lib/MySQL.lua',
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua',
    'server/server_editable.lua',
}

escrow_ignore {
    'shared/config.lua',
    'server/server_editable.lua',
    'client/client_editable.lua'
}

dependency '/assetpacks'