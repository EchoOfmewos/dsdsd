fx_version 'cerulean'
games      { 'gta5' }
lua54 'yes'

author 'Robbie | Lith studios'
description 'Mower Job'
version '1.2.3'

--
-- Server
--

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    "config.lua",
    "server/editable/functions.lua",
    "server/editable/qb.lua",    
    "server/editable/esx.lua",
    "server/editable/standalone.lua",
    "server/server.lua",
    "locale/locale.lua"

}
--
-- Client
--

client_scripts {
    "client/functions.lua",
    "client/cache.lua",
    "config.lua",  
    "client/client.lua",
    "client/editable/qb.lua",
    "locale/locale.lua",
    "client/editable/esx.lua",
    "client/editable/functions.lua",
    "client/editable/standalone.lua"
}

files{
    "stream/*",
}


escrow_ignore {
    "config.lua",
    "client/editable/*.lua",
    "server/editable/*.lua",
    "locale/*.lua"
}
dependency '/assetpacks'