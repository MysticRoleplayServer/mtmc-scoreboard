QBCore = exports['qb-core']:GetCoreObject()

local playerCache = {}
local gangCache = {}
local jobCache = {}
local avatars = {}



function loadData()
    local newData = {}
    local newJobCache = initJobs()
    local newGangCache = initGangs()
    local players = QBCore.Functions.GetPlayers()
    for i, p in pairs(players) do
        local player = QBCore.Functions.GetPlayer(p)
        if(player) then
            local pJob = player.PlayerData.job
            local onDuty = player.PlayerData.job.onduty
            local gang = player.PlayerData.gang
            table.insert(newData,{
                fullname = player.PlayerData.charinfo.firstname .. " " .. player.PlayerData.charinfo.lastname,
                job = pJob.label,
                onDuty = onDuty,
                isStaff = (Config.DisplayStaff  and isStaff(p)) or false,
            })
            if(Config.Jobs[pJob.name]) then
                local targetJobData = findJobData(newJobCache,pJob.name)
                if(onDuty) then
                    targetJobData.onDutyCount = targetJobData.onDutyCount + 1
                else
                    targetJobData.offDutyCount = targetJobData.offDutyCount + 1
                end
            end
            if(Config.Gangs[gang.name]) then
                local targetGangData = findGangData(newGangCache,gang.name)
                targetGangData.count = targetGangData.count + 1
            end
        end
    end

    playerCache = newData
    jobCache = newJobCache
    gangCache = newGangCache
end

function isStaff(src)
    return QBCore.Functions.HasPermission(src,'god') 
    or QBCore.Functions.HasPermission(src,'admin') 
    or QBCore.Functions.HasPermission(src,'mod') 
    or QBCore.Functions.HasPermission(src,'trial')
end

function findGangData(data, targetGang)
    for i, gang in pairs(data) do
        if(gang.name == targetGang) then
            return gang
        end
    end
end


function findJobData(data, targetJob)
    for i, job in pairs(data) do
        if(job.name == targetJob) then
            return job
        end
    end
end

function initGangs()
    local data = {}
    for i, job in pairs(Config.Gangs) do
        table.insert(data,{
            count = 0,
            name = i,
            label = job.label,
            icon = job.icon,
            color = job.color
        })
    end
    return data
end

function initJobs()
    local data = {}
    for i, job in pairs(Config.Jobs) do
        table.insert(data,{
            onDutyCount = 0,
            offDutyCount = 0,
            name = i,
            label = job.label,
            icon = job.icon,
            color = job.color
        })
    end
    return data
end

Citizen.CreateThread(function()
    while true do
        loadData()
        Wait(Config.RefreshRate)
    end
end)

QBCore.Functions.CreateCallback("mtmc-scoreboard:server:getscoreboard",function(src,cb)
    cb({
        playerData = playerCache,
        jobData = jobCache,
        gangData = gangCache
    })
end)
