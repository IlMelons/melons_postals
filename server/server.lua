Config = lib.load("config.config")

lib.addCommand(Config.CommandName, {
    help = locale("help_command"),
    params = {
        {
            name = "postal",
            type = "number",
            help = locale("help_param"),
        },
    },
    restricted = false
}, function(source, args, raw)
    local postalcode = args.postal
    if postalcode then
        TriggerClientEvent("melons_postals:client:SetWaypoint", source, postalcode)
    end
end)