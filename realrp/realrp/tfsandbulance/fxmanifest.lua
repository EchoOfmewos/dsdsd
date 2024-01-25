fx_version 'cerulean'
game 'gta5'

authors { "L'kid" }
description "Sandbulance by Tidemo, FiveM resource made by L'kid"
version '1.0'

lua54 'yes'

files {
    'data/**/*.meta',
	'audio/sandbulance_game.dat151.rel',
}

data_file 'HANDLING_FILE' 'data/**/handling*.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles*.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols*.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations*.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts*.meta'
data_file 'AUDIO_GAMEDATA' 'audio/sandbulance_game.dat'

client_scripts {
    'vehicle_names.lua',
}