fx_version 'cerulean' 
game 'gta5'
this_is_a_map 'yes'
lua54 'yes'

author "d3MBA#0001"

description "Butcher job"
discord "discord.gg/d3MBA" 

version "2.0.2"


shared_scripts {
    'config.lua',
    'translations.lua'
}

client_scripts {
    'client/target/target.lua',
    'client/menu/*.lua',
    'client/*.lua',
    'client/locked/*.lua',
    -- PolyZone
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
}

server_scripts {
    'server/*.lua',
    'server/locked/*.lua',
    'version-check.lua',
} 

escrow_ignore {
    'config.lua',
    'translations.lua',
    'client/menu/*.lua',
    'client/*.lua',
    'server/*.lua',
    'client/target/target.lua',
    
    'items/*.lua',
    'README/*.lua',
    'version-check.lua',
    
}


dependency '/assetpacks'