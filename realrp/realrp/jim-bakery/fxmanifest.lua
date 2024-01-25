name "Jim-Bakery"
author "Jimathy"
version "1.5"
description "Bakery Script By Jimathy"
fx_version "cerulean"
game "gta5"
lua54 'yes'

shared_scripts { 'locales/*.lua', 'config.lua', 'shared/*.lua' }
client_scripts { '@PolyZone/client.lua', '@PolyZone/BoxZone.lua', '@PolyZone/EntityZone.lua', '@PolyZone/CircleZone.lua', '@PolyZone/ComboZone.lua', 'client/*.lua' }
server_scripts { 'server/*.lua' }
escrow_ignore { '*.lua', 'client/*.lua', 'server/*.lua', 'locales/*.lua', }

file 'stream/**.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**.ytyp'

dependency '/assetpacks'