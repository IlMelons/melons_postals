-- Copyright (c) 2019 BlockBa5her (Original Script)
-- Copyright (c) 2024 IlMelons (Modifications)

fx_version "cerulean"
game "gta5"
lua54 "yes"

name "melons_postals"           -- Original Script: nearest-postal --|-- URL[https://github.com/DevBlocky/nearest-postal]
author "IlMelons"               -- Original Script: DevBlocky
description "Script that allows players to set a waypoint to specific postal codes with a simple command"
version "1.0.0"

shared_scripts {
    "@ox_lib/init.lua",
}

server_scripts {
    "server/server.lua",
}

client_scripts {
    "client/client.lua",
}

local postalFile = "files/ocrp-postals.json" -- Here you can set the postal codes list file folder path

-- DON'T TOUCH IF YOU DON'T KNOW WHAT ARE YOU DOING
file(postalFile)
postal_file(postalFile)