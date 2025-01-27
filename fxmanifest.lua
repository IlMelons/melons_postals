fx_version "cerulean"
game "gta5"
lua54 "yes"

name "melons_postals"
author "IlMelons"
description "Script that allows players to set a waypoint to specific postal codes with a simple command"
version "1.0.1"
repository "https://github.com/IlMelons/melons_postals"

shared_scripts {
    "@ox_lib/init.lua",
}

server_scripts {
    "server/server.lua",
    "checker.lua",
}

client_scripts {
    "client/client.lua",
}

local postalFile = "files/ocrp-postals.json" -- Here you can set the postal codes list file folder path

-- DON'T TOUCH IF YOU DON'T KNOW WHAT ARE YOU DOING
file(postalFile)
postal_file(postalFile)