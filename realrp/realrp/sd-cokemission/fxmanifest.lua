fx_version 'cerulean'
game 'gta5'

name "NoPixel Inspired Coke Mission"
author "Made with love by Samuel#0008"
Version "2.0.4"

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',    
    'client/minigame.lua',
	'client/main.lua',
}

shared_scripts {
    '@sd_lib/shared/lang.lua',
    'locales/en.lua', -- change en to your language
    'config.lua',
}

server_scripts {
	'server/main.lua',
}

lua54 'yes'

escrow_ignore { 
    '**/*.lua', 
    'config.lua',
}

dependency '/assetpacks'