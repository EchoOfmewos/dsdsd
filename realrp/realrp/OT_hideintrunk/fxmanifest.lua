

fx_version 'cerulean'
games { 'gta5' }

author 'stuxxy'
version '1.5.0'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/*.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

escrow_ignore {
    'shared/config.lua',
    'shared/locales.lua',
    'client/opensource.lua',
    'server/opensource.lua'
}
dependency '/assetpacks'