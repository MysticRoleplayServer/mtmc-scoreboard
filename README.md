
# MTMC Scoreboard

A basic free scoreboard for FiveM


![score1](https://user-images.githubusercontent.com/84265583/219900162-e7a38008-6c1c-42bf-93a2-3c6e6b9ae01c.png)


![score2](https://user-images.githubusercontent.com/84265583/219900165-ed329825-2757-4d15-af5e-d0e2ee9ed973.png)


![score3](https://user-images.githubusercontent.com/84265583/219900174-8e7ec677-d604-4cd2-820e-347b74f1a3f1.png)


![score4](https://user-images.githubusercontent.com/84265583/219900179-a466df8e-a62e-477d-920a-3e170ac31b63.png)


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
