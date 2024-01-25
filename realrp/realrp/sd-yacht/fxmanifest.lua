fx_version 'cerulean'
game 'gta5'

Author 'samuel#0008, phade#9756 & abbbybabyy#8554 & blaizee#1630'
Version '1.0.0'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/client.lua',
}

shared_scripts {
    '@sd_lib/shared/lang.lua',
    'locales/en.lua', -- change en to your language
    'config.lua',
}

server_scripts {
    'server/server.lua',
} 

data_file "DLC_ITYP_REQUEST" "stream/hei_mpheist_yacht.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/yacht_screens.ytyp"

lua54 'yes'

escrow_ignore { 
    '**/*.lua', 
    'config.lua',
}

dependency '/assetpacks'