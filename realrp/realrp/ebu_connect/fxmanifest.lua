

fx_version 'adamant'
game 'gta5'

description 'Connect Trailer Script'
author 'theebu'
lua54 'yes'
version '0.1.2'

client_scripts {
	'config.lua',
	'client/client.lua',
	'client/utils.lua'
}

escrow_ignore {
	'config.lua',
	'client/utils.lua'
}
dependency '/assetpacks'