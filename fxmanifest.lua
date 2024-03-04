-- For support join my discord: https://discord.gg/Z9Mxu72zZ6

author "Andyyy"
description "Remove cops, gangs, etc from fivem"
version "1.0.0"

fx_version "cerulean"
game "gta5"
lua54 "yes"

files {"data/**"}

client_scripts {"@ox_lib/init.lua", "client/main.lua"}

dependency "ox_lib"
