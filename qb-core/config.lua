-- discord.gg/sgx
QBConfig = {}

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 10) -- Gets max players from config file, default 64
QBConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
QBConfig.UpdateInterval = 10 -- how often to update player data in minutes
QBConfig.StatusInterval = 5000 -- how often to check hunger/thirst status in ms

QBConfig.Money = {}
QBConfig.Money.MoneyTypes = { ['cash'] = 5000, ['bank'] = 5000, ['crypto'] = 0, ['cosmo'] = 0 } -- ['type']=startamount - Add or remove money types for your server (for ex. ['blackmoney']=0), remember once added it will not be removed from the database!
QBConfig.Money.DontAllowMinus = { 'cash', 'crypto', 'bank', 'cosmo' } -- Money that is not allowed going in minus
QBConfig.Money.PayCheckTimeOut = 30 -- The time in minutes that it will give the paycheck

QBConfig.Player = {}
QBConfig.Player.MaxWeight = 350000 -- Max weight a player can carry (currently 120kg, written in grams)
QBConfig.Player.MaxInvSlots = 41 -- Max inventory slots for a player
QBConfig.Player.HungerRate = 3.0 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 3.0 -- Rate at which thirst goes down.
QBConfig.Player.Bloodtypes = {
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-",
}

QBConfig.Server = {} -- General server config
QBConfig.Server.GlobalTax = 15.0
QBConfig.Server.closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.closedReason = "Server Closed" -- Reason message to display when people can't join the server
QBConfig.Server.uptime = 0 -- Time the server has been up.
QBConfig.Server.whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.discord = "" -- Discord invite link
QBConfig.Server.PermissionList = {} -- permission list

QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = false, -- Allow notifications to stack with a badge instead of repeating
    position = "bottom-right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'done'
    },
    primary = {
        classes = 'primary',
        icon = 'info'
    },
    error = {
        classes = 'error',
        icon = 'dangerous'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}
