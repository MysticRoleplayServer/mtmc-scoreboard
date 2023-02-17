QBCore = exports['qb-core']:GetCoreObject()
displayed = false

RegisterCommand("showscoreboard",function()
    if(not displayed) then
        QBCore.Functions.TriggerCallback("mtmc-scoreboard:server:getscoreboard",function(res)
            SendNUIMessage({
                type = 'enable',
                playerData = res.playerData,
                jobData = res.jobData,
                gangData = res.gangData
            })
        end)
    else
        SendNUIMessage({
            type = 'disable',
        })
        
    end
    displayed = not displayed
end)


RegisterKeyMapping('showscoreboard', 'Display Scoreboard', 'keyboard', 'Home')
