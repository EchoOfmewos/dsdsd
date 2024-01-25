

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'momof513'
description 'momof-multijob'
version '1.0.0'

ui_page 'html/build/index.html'

shared_script 'config.lua'

client_script 'client/main.lua'

server_script 'server/main.lua'

files {
  'html/build/index.html',
  'html/build/**/*'
}

exports {
  'GetJobs',
	'OpenJobMenu',
  'HasJob',
  'HasJobWithGrade',
}

server_exports {
  'AddPlayerJob',
  'GetPlayerJobs',
  'GetPlayerJobsTable',
  'HasJob',
  'HasJobWithGrade',
  'RemovePlayerJob',
}

escrow_ignore {
  'config.lua',
  'documentation.md',
}

dependency '/assetpacks'