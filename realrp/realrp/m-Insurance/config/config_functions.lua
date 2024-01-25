local QBCore = exports[Config.Utility.CoreName]:GetCoreObject()

function Notify(msg, type)
    if type == "primary" then 
        QBCore.Functions.Notify(msg, "primary")
    end
    if type == "success" then
        QBCore.Functions.Notify(msg, "success")
    end
    if type == "error" then
        QBCore.Functions.Notify(msg, "error")
    end
end

function Email(plateVeh,modelName,expire)
    if Config.Utility.Phone == "qb-phone" then
        TriggerServerEvent("qb-phone:server:sendNewMail", {
            sender = Language["Sender"],
            subject = Language["Subject"],
            message = Language["Email_1"]..plateVeh..Language["Email_2"]..modelName..Language["Email_3"]..expire,
        })
    elseif Config.Utility.Phone == "qs-smartphone" then
        TriggerServerEvent("qs-smartphone:server:sendNewMail", {
            sender = Language["Sender"],
            subject = Language["Subject"],
            message = Language["Email_1"]..plateVeh..Language["Email_2"]..modelName..Language["Email_3"]..expire,
        })
    elseif Config.Utility.Phone == "gksphone" then
        TriggerServerEvent("gksphone:NewMail", {
            sender = Language["Sender"],
            image = '/html/static/img/icons/mail.png',
            subject = Language["Subject"],
            message = Language["Email_1"]..plateVeh..Language["Email_2"]..modelName..Language["Email_3"]..expire,
        })
    elseif Config.Utility.Phone == "roadphone" then
        TriggerServerEvent("roadphone:receiveMail", {
            sender = Language["Sender"],
            image = '/public/html/static/img/icons/app/mail.png',
            subject = Language["Subject"],
            message = Language["Email_1"]..plateVeh..Language["Email_2"]..modelName..Language["Email_3"]..expire,
        })
    elseif Config.Utility.Phone == "d-phone" then
        TriggerServerEvent("mail:functions:sendmail:tosource", 1, Language["Sender"], Language["Sender"], Language["Subject"], Language["Email_1"]..plateVeh..Language["Email_2"]..modelName..Language["Email_3"]..expire, nil)
    elseif Config.Utility.Phone == "renewed-phone" then
        TriggerServerEvent("qb-phone:server:sendNewMail", {
            sender = Language["Sender"],
            subject = Language["Subject"],
            message = Language["Email_1"]..plateVeh..Language["Email_2"]..modelName..Language["Email_3"]..expire,
            button = {
                buttonEvent = "Renewed-Debt:server:AcceptShit",
                buttonData = 10,
                isServer = false
            }
        })
    elseif Config.Utility.Phone == "road-phone" then
        TriggerServerEvent('roadphone:receiveMail', {
            sender = Language["Sender"],
            subject = Language["Subject"],
            message = Language["Email_1"]..plateVeh..Language["Email_2"]..modelName..Language["Email_3"]..expire,
            image = '/public/html/static/img/icons/app/mail.png',
            button = {
              buttonEvent = "",
              buttonData = data,
              buttonname = "SetLocation"
            }
         })
    elseif Config.Utility.Phone == "notify" then
        Notify("Your vehicle: "..plateVeh.." has been register with insurance.", "success", 5000)
    end
end

function RepairVehicle()
    local playerPed = PlayerPedId()
    local veh = GetVehiclePedIsIn(playerPed, false)
    local plate = Config.Utility.CustomPlate and string.gsub(GetVehicleNumberPlateText(veh),' ','') or GetVehicleNumberPlateText(veh)

    QBCore.Functions.TriggerCallback('m-Insurance:Server:haveInsurance', function(hasInsurance)
        if not hasInsurance then
            Notify(Language["NoInsurance"], "error", 5000)
        else
            -- Has insurance
            QBCore.Functions.TriggerCallback('m-Insurance:Server:HaveMoneyRepair', function(hasMoney)
                if not hasMoney then
                    Notify(Language["NoMoney"], "error", 5000)
                else
                    if veh then
                        QBCore.Functions.Progressbar("RepairVehicle", Language["Repairing"], 5000, false, true, {
                            disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true
                        }, {}, {}, {}, function()
                            FreezeEntityPosition(veh, true)
                            SetVehicleFixed(veh)
                            SetVehicleEngineHealth(veh, 1000.0)
                            SetVehicleBodyHealth(veh, 1000.0)
                            SetVehiclePetrolTankHealth(veh, 1000.0)
                            SetVehicleDirtLevel(veh, 0)
                            SetVehicleOnGroundProperly(veh)
                            FreezeEntityPosition(veh, false)
                            if Config.Utility.Garages == "qs" then
                                exports['qs-advancedgarages']:RepairSpecificVehicle(veh)
                            end
                            Notify(Language["Repaired"], "success", 5000)
                        end)
                    end
                end
            end)
        end
    end, plate)
end