fx_version 'cerulean'
games { 'gta5' }

author 'CC'
description 'Paleto Bank Heist for Gabz MLO'
version '1.0.0'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua',
}

server_scripts {
  '@oxmysql/lib/MySQL.lua', 
  'server/*.lua'
}

shared_scripts {
   '@qb-core/shared/locale.lua',
   'locales/en.lua', -- Change to preferred language 
   'shared/config.lua',
   'shared/shared.lua'
}

escrow_ignore {
  'client/open.lua',
  'server/open.lua',
  'shared/config.lua',
  'shared/shared.lua',
  'locales/en.lua',
  'README/**.lua',
}

lua54 'yes'
dependency '/assetpacks'

dependency '/assetpacks'