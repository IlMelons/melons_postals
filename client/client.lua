postals = nil
Citizen.CreateThread(function()
    postals = LoadResourceFile(GetCurrentResourceName(), GetResourceMetadata(GetCurrentResourceName(), "postal_file"))
    postals = json.decode(postals)
    for i, postal in ipairs(postals) do postals[i] = { vec(postal.x, postal.y), code = postal.code } end
end)

function CustomNotify(msg, type)
    lib.notify({
        title = "SERVER NAME",
        description = msg,
        position = "top",
        type = type or "inform",
    })
end

RegisterNetEvent("melons_gps:SetWaypoint", function(postal)
    local userPostal = string.upper(postal)
    local foundPostal
    for _, p in ipairs(postals) do
        if string.upper(p.code) == userPostal then
            foundPostal = p
            break
        end
    end
    if foundPostal then
        if IsWaypointActive() then
            DeleteWaypoint()
        end
        SetNewWaypoint(foundPostal[1][1], foundPostal[1][2])
        CustomNotify(string.format("Waypoint set to postal %s", foundPostal.code), "success")
    else
        CustomNotify("That postal doesn't exist", "error")
    end
end)