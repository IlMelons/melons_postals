fx_version "cerulean"
game "gta5"
lua54 "yes"

name "melons_postals"
author "IlMelons"
description "Script that allows players to set a waypoint to specific postal codes with a simple command"
version "1.2.0"
repository "https://github.com/IlMelons/melons_postals"

ox_lib "locale"

shared_scripts {
    "@ox_lib/init.lua",
}

server_scripts {
    "server/*.lua",
    "checker.lua",
}

client_scripts {
    "client/*.lua",
}

files {
    "config/config.lua",
    "data/*.lua",
    "locales/*.json",
}