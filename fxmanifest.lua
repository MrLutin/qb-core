fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Kakarot, MrLutin'
description 'Custom version of QB-Core framework, contains all the core functionality and features'
version '1.2.6'
repository 'https://github.com/MrLutin/qb-core'

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
    'shared/locale.lua',
    'locale/en.lua',
    'locale/*.lua',
    'shared/main.lua',
    'shared/items.lua',
    'shared/jobs.lua',
    'shared/vehicles.lua',
    'shared/gangs.lua',
    'shared/weapons.lua',
    'shared/locations.lua'
}

client_scripts {
    'client/main.lua',
    'client/functions.lua',
    'client/loops.lua',
    'client/events.lua',
    'client/menu.lua', -- custom handler
    'client/input.lua', -- custom handler
    'client/target.lua', -- custom handler
    'client/drawtext.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/functions.lua',
    'server/player.lua',
    'server/events.lua',
    'server/commands.lua',
    'server/exports.lua',
    'server/debug.lua'
}

dependency { 'progressbar', 'ox_lib', 'ox_target', 'oxmysql' }
provide { 'qb-menu', 'qb-input', 'qb-target' }
