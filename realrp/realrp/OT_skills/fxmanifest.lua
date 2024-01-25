fx_version "cerulean"
author "stuxxy"
version '2.0.0'
discord 'https://discord.gg/otstudios'

lua54 'yes'

games {
  "gta5",
  "rdr3"
}

ui_page 'web/build/index.html'

shared_scripts {
  '@ox_lib/init.lua',
  'shared/config.lua',
  'shared/util.lua'
}

server_script {
  '@oxmysql/lib/MySQL.lua',
  'server/open.lua',
  'server/main.lua',
  'server/commands.lua'
}

client_script {
  'client/open.lua',
  'client/main.lua'
}

files {
  'web/build/index.html',
  'web/build/**/*'
}

escrow_ignore {
  'client/open.lua',
  'server/open.lua',
  'server/commands.lua',
  'shared/config.lua'
}
dependency '/assetpacks'