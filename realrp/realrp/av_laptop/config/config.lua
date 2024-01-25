-- READ THE DOCS BEFORE USING THIS SCRIPT: https://docs.av-scripts.com/
-- READ THE DOCS BEFORE USING THIS SCRIPT: https://docs.av-scripts.com/
-- READ THE DOCS BEFORE USING THIS SCRIPT: https://docs.av-scripts.com/

Config = {}
Config.Debug = false
Config.Framework = "QBCore" -- QBCore or ESX
Config.DefaultWallpaper = "https://i.imgur.com/NRXLVRH.jpg" -- Default wallpaper
Config.GiveNUI = true -- Used for mini music player
Config.NuiCommand = "nui" -- Command used to activate the cursor on screen and minimize/close the music player
Config.LaptopItem = "laptop" -- The item used to open laptop
Config.HackingDeviceITem = 'decrypter' -- Item used to hack laptops, set false if you don't want ppl be able to hack other players laptops.
Config.UseBattery = false -- true/false, false will make battery infinite
Config.Inventory = "ox_inventory" -- (available options: qb-inventory, lj-inventory, ox_inventory, ps-inventory, origen_inventory and qs-inventory)
Config.AdminLevel = "admin" -- Used for some apps to give extra permissions to edit/delete info (for ex. racing app: admins can create/remove tracks or events)

Config.Apps = {
    {
        name = "darkmarket",
        label = "Black Market",
        isEnabled = function()
            return false
        end
    },
    {
        name = "boosting",
        label = "Boosting",
        isEnabled = function()
            return false
        end
    },
    {
        name = "cupcake",
        label = "Cupcake Swap",
        isEnabled = function()
            return false
        end
    },
    {
        name = "campro",
        label = "CamPro",
        isEnabled = function()
            return true
        end
    },
    {
        name = "business",
        label = "Business",
        isEnabled = function()
            if GetResourceState('av_restaurants') ~= "started" then
                return false
            end
            if PlayerJob.isboss or PlayerJob.grade_name == "boss" then
                return true
            end
            return false
        end
    },
    {
        name = "meth",
        label = "Humane Labs",
        isEnabled = function()
            return exports['av_laptop']:hasItem('black_usb')
        end
    },
    {
        name = "music",
        label = "Music",
        isEnabled = function()
            return true
        end
    },
    {
        name = "gang",
        label = "Gang",
        isEnabled = function()
            if GetResourceState('av_gangs') ~= "started" then
                return false
            end
            local gang = exports['av_gangs']:getGang()
            if gang and gang['name'] then
                return true
            else
                return false
            end
        end
    },
    {
        name = "racing",
        label = "Racing",
        isEnabled = function()
            return false
        end
    },
    {
        name = "realestate",
        label = "Real Estate",
        isEnabled = function()
            return true
        end
    },
}