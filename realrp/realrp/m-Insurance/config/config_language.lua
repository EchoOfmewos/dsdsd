Language = {}

Language = {
    -- Data
    ["date"] = "%d/%m/%Y", -- Default: %d/%m/%Y -> day/month/year ! BE CAREFUL https://www.lua.org/pil/22.1.html
    -- Geral
    ["Currency"] = "$",

    ["WrongJob"] = "You don't have permission",
    ["NotOnline"] = "That player doesn't exist",

    -- Notifys
    ["Dead"] = "You cannot access this while dead.",
    ["Water"] = "You cannot access this in the water.",
    ["Veiculo"] = "You cannot do this out of the vehicle.",
    ["Clean"] = "Vehicle is dirty you have to wash it first!",
    ["Owned"] = "This vehicle is not yours",
    ["NoMoney"] = "You don\'t have enough money on you.",
    ["Success"] = "Wait a minute, we are printing the documents..",
    ["Registration"] = "You need to register the vehicle first.",
    ["Repaired"] = "Vehicle successfully repaired.",
    ["NoInsurance"] = "This vehicle dont have insurance",

    -- QB-Input
    ["InputHeader"] = "🚗 Car Insurance<br><br> ❌ Do not write anything, this is just to confirm the information.",
    ["InputHeader2"] = "🚗 Car Registration<br><br> ❌ Do not write anything, this is just to confirm the information.",
    ["InputConfirm"] = "✔️ Confirm",
    ["InputName"] = "Name: ",
    ["InputCitizenID"] = "CitizenID: ",
    ["InputPlate"] = "Plate: ",
    ["InputModel"] = "Model: ",

    -- QB-Menu
    ["Header"] = "Car Insurance",
    ["xTime"] = "📃 30 Days", -- you can change to your own time (recommend to change accord your Config.xTime)
    ["2xTime"] = "📃 60 Days",
    ["3xTime"] = "📃 90 Days",
    ["InfoxTime"] = "🔹This insurance will only be valid for the next 30 days.<br>💲Price: ", 
    ["Info2xTime"] = "🔹This insurance will only be valid for the next 60 days.<br>💲Price: ",
    ["Info3xTime"] = "🔹This insurance will only be valid for the next 90 days.<br>💲Price: ",
    ["HeaderHealth"] = "Health Insurance",

    -- Email
    ["Sender"] = "Ottos Garage",
    ["Subject"] = "Insurance",
    ["Email_1"] = "Vehicle Plate: ",
    ["Email_2"] = "<br>Vehicle Model: ",
    ["Email_3"] = "<br>Information: Has been registered with insurance.<br>Expires:",

    -- Progressbar
    ["Testing"] = "Testing the vehicle...",
    ["Registration2"] = "Registering the vehicle...",
    ["Repairing"] = "Repairing the vehicle...",
    ["Health"] = "We are writing your health insurance...",

    -- Target
    ["Icon"] = "fas fa-car",
    ["Label"] = "Car Insurance",
    ["Label2"] = "Car Registration",
    ["IconRepair"] = "fas fa-car",
    ["LabelRepair"] = "Repair Station",
    ["IconHealth"] = "fa-solid fa-heart",
    ["LabelHealth"] = "Health Insurance",

    -- Commands 
    ["DontHave"] = "The car dont have car insurance.",
    ["Have"] = "The car have car insurance.",
}
