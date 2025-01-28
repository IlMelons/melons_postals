---@diagnostic disable lowercase-global

utils = {}

function utils.Notify(msg, type)
    lib.notify({
        title = "Melons Postals",
        description = msg,
        position = "top",
        type = type or "inform",
    })
end