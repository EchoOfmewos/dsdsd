fx_version 'cerulean'
game 'gta5'

author 'Samuel'
description 'Made with love by Samuel#0008'
Version '1.4.3'

client_scripts {
    'client/*.lua',
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