

fx_version 'cerulean'
game 'gta5'

description 'QBX-Apartments'
version '2.1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    '@ox_lib/init.lua',
    'config.lua',
    'locales/en.lua',
    'locales/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

client_scripts {
    'client/main.lua'
}

dependencies {
    'ox_lib',
    'ox_inventory',
    'qb-core',
    'qbx-interior',
    --'qb-weathersync',
}

lua54 'yes'
