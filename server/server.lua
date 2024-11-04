lib.addCommand("gps", {
    help = "Sets a Waypoint on the Map",
    params = {
        {
            name = "postal",
            type = "number",
            help = "Postal Code",
        },
    },
    restricted = false
}, function(source, args, raw)
    local postalcode = args.postal
    if postalcode then
        TriggerClientEvent("melons_gps:SetWaypoint", source, postalcode)
    end
end)