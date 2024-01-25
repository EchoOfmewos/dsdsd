

fx_version 'adamant'

game 'gta5'

lua54 'on'


ui_page {
    'html/index.html',
}

client_scripts {
	"config.lua",
	"client.lua"
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	"config.lua",
	"server.lua"
}


files {
	'html/index.html',
	'html/script.js',
	'html/*.css',
}