# qbcore
Custom Version of QBCore made to be use with ox_lib in dependency \
This version use only the fivem id from CFX to get the player data!

Custom Trigger to send logged data to discord 
```lua
RegisterNetEvent('qb-log:server:CreateLog', function(type, message)
    local src = source
    if not QBCore.Players[src] then return end
    local Player = QBCore.Players[src]
    LogsWebhooks = {
        {
            ["color"] = "8663711",
            ["title"] = type,
            ["description"] = message,
            ["footer"] = {
                ["text"] = "QBCore Logger"
            },
        }
    }

    -- Send data to discord
    PerformHttpRequest(
        QBConfig.WebHooks, -- Set from the config file
        function(err, text, headers) end, 'POST',
        json.encode({username = "QBCore Logger", embeds = LogsWebhooks}),
        { ['Content-Type'] = 'application/json' }
    )
end)
```