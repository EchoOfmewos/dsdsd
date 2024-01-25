

fx_version 'adamant'
games {'gta5'}
this_is_a_map 'yes'
lua54 'yes'


client_script 'client.lua'

data_file 'AUDIO_GAMEDATA' 'audio/int_nightclub_game.dat' -- dat151
data_file 'AUDIO_DYNAMIXDATA' 'audio/int_nightclub_mix.dat' -- dat15

files {
  'audio/int_nightclub_game.dat151.rel',
  'audio/int_nightclub_mix.dat15.rel',
}


escrow_ignore {
  'client.lua'
}
dependency '/assetpacks'