
# MTMC Scoreboard

A basic free scoreboard for FiveM

![image](https://user-images.githubusercontent.com/84265583/219730768-c25254d3-f8b8-4bf1-be9c-3bf9836c6107.png)



Requires QBCore



## Dependencies

QBCore

## Config

Adjust config to how you like, the original config is below


Config = {}

Config.DisplayStaff = false

Config.RefreshRate = 60000

Config.Jobs = {
    ['police'] =    {
        label = 'Police',
        icon = 'fa-solid fa-handcuffs',
        color = '#1660DB'
    },
    ['taxi'] =    {
        label = 'Taxi',
        icon = 'fa-solid fa-taxi',
        color = '#EBBA00'
    },
    ['ambulance'] = {
        label = 'EMS',
        icon = 'fa-solid fa-truck-medical',
        color = '#ad0303'
    },
    ['realestate'] = {
        label = 'Real Estate',
        icon = "fa-solid fa-house",
        color = '#06731a'
    }
}

Config.Gangs = {
    ['ballas'] =  {
        label = 'Ballas',
        icon = 'fa-solid fa-user-ninja',
        color = '#A216DB'
    },
    ['vagos'] = {
        label = 'Vagos',
        icon = 'fa-solid fa-gun',
        color = '#c9c908'
    },
    ['cartel'] = {
        label = 'Cartel',
        icon = 'fa-solid fa-joint',
        color = '#0d9184'
    }
}
