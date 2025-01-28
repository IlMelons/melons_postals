local Config = require "config.config"
local postal = lib.load(Config.PostalFilePath)

RegisterNetEvent("melons_postals:client:SetWaypoint", function(selectedPostal)
    local userPostal = string.upper(selectedPostal)
    local setPostal = postal.Postals[userPostal]
    if not setPostal then
        utils.Notify(locale("not_found"):format(userPostal), "error")
    else
        if IsWaypointActive() then
            DeleteWaypoint()
        end
        SetNewWaypoint(setPostal.x, setPostal.y)
        utils.Notify(locale("set_success"):format(userPostal), "success")
    end
end)