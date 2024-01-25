local Framework = exports['d3MBA-lib']:GetFrameworkObject()

RegisterNetEvent("d3MBA-butcher:client:OpenLaptopMenu", function()
	local data = Framework.TriggerServerCallback('d3-butcherJob:server:getData')

	local menuHeaderOptions = {
		title = Config.Menu["office"],
		ox_title = Config.Menu["office"] .. " " ..Config.Menu["menu"],
		icon = "fas fa-laptop",
	}

	local menuFooterOptions = {
		title = Config.Menu["exit"],
		icon = "fas fa-circle-xmark", 
	}

	local menuOptions = {}

	table.insert(menuOptions,  {
		title = string.format(Config.Menu["catching_experience_title"], data.catching),
		context = Config.Menu["catching_experience_context"],
		icon = "fas fa-database",
	})
	
	table.insert(menuOptions,  {
		title = string.format(Config.Menu["processing_experience_title"], data.processing),
		context = Config.Menu["processing_experience_context"],
		icon = "fas fa-database",
	})

	if OrderItems == nil and FindingOrder == false then  
		table.insert(menuOptions,  {
			title = Config.Menu["find_customers_title"],
			context = Config.Menu["find_customers_context"],
			event = "d3MBA-butcher:client:StartDelivery", 
			icon = "fas fa-truck-fast",
		})
	elseif OrderItems ~= nil then 
		table.insert(menuOptions,  {
			title = Config.Menu["see_order_details_title"],
			context = Config.Menu["see_order_details_context"],
			event = "d3MBA-butcher:client:OpenOrderDetailsMenu", 
			icon = "fas fa-box-open",
		})
	end 	

	table.insert(menuOptions,  {
		title = Config.Menu["tips_for_selling_title"],
		context = Config.Menu["tips_for_selling_context"],
		event = "d3MBA-butcher:client:OpenTipsMenu",
		icon = "fas fa-brain",
	})

	TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

RegisterNetEvent("d3MBA-butcher:client:OpenOrderDetailsMenu", function()
	local order = OrderItems
	local menuHeaderOptions = {
        title = Config.Menu["order_details_title"],
        ox_title = Config.Menu["order_title"],
        icon = "fas fa-box-open",
    }

    local menuFooterOptions = {
        title = Config.Menu["back"],
		event = "d3MBA-butcher:client:OpenLaptopMenu",
		icon = "fas fa-circle-arrow-left", 
    }

    local menuOptions = {}

    for _, item in ipairs(order.Items) do
        table.insert(menuOptions, {
            title = string.format(Config.Menu["item_format"], Framework.GetItemLabel(item.ItemName), item.Amount),
            image = Framework.ConvertImageFormat(ItemsImages[item.ItemName], 45), -- Assuming ItemsImages is available
        })
    end

	if Config.Delivery.DistanceMultiplier.Use == true then 
		table.insert(menuOptions, {
			title = string.format(Config.Menu["customer_distance"], math.floor(order.Distance + 0.5)),
			icon = "fas fa-arrows-alt-h",
			disabled = true,
		})
	end 

    table.insert(menuOptions, {
        title = string.format(Config.Menu["total_price"], order.TotalPrice),
		icon = "fas fa-dollar-sign",
        disabled = true,
    })

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

RegisterNetEvent("d3MBA-butcher:client:OpenTipsMenu", function()
	local menuHeaderOptions = {
		title = Config.Menu["tips_title"], 
		ox_title = Config.Menu["tips_ox_title"],
		icon = "fas fa-brain",
	}

	local menuFooterOptions = {
		title = Config.Menu["back"],
		icon = "fas fa-circle-arrow-left", 
		event = "d3MBA-butcher:client:OpenLaptopMenu"
	}

	local menuOptions = {}

	table.insert(menuOptions,  {
			title = Config.Menu["sell_directly_title"],
			context = Config.Menu["sell_directly_context"],
			icon = "fas fa-dollar-sign",
	})
	
	table.insert(menuOptions,  {
			title = Config.Menu["deliver_title"],
			context = Config.Menu["deliver_context"],
			icon = "fas fa-dollar-sign",
	})

	TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)


RegisterNetEvent("d3MBA-butcher:client:OpenLineControlsMenu", function()
	local menuHeaderOptions = {
        title = Config.Menu["line_controls_title"], 
		ox_title = Config.Menu["controls_title"],  
		icon = "fas fa-cog", 
	}

	local menuFooterOptions = {
		title = Config.Menu["exit"],
		icon = "fas fa-circle-xmark", 
	}

	local menuOptions = {}

	table.insert(menuOptions,  {
		title = string.format(Config.Menu["chickens_on_line"], ChickensOnLine),
		context = Config.Menu["chickens_on_line_context"],
		icon = "fas fa-arrows-alt-h",
	})
	
	table.insert(menuOptions,  {
		title = string.format(Config.Menu["chicken_legs_in_box"], LegsBoxCount),
		context = Config.Menu["chicken_legs_in_box_context"],
		icon = "fas fa-drumstick-bite",
	})
	
	table.insert(menuOptions,  {
		title = string.format(Config.Menu["plucked_chickens_in_meat_box"], MeatBoxCount),
		context = Config.Menu["plucked_chickens_in_meat_box_context"],
		icon = "fas fa-box-open",
	})

	table.insert(menuOptions,  {
		title = Config.Menu["refresh_title"],
		context = Config.Menu["refresh_context"],
		icon = "fas fa-sync",
		event = "d3MBA-butcher:client:OpenLineControlsMenu"
	})

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

RegisterNetEvent("d3MBA-butcher:client:OpenGrinderMenu", function(GrinderIndex)
	local menuHeaderOptions = {
        title = Config.Menu["meat_grinder_title"], 
		ox_title = Config.Menu["grinder_title"],  
		icon = "fas fa-cog", 
	}

	local menuFooterOptions = {
		title = Config.Menu["exit"],
		icon = "fas fa-circle-xmark", 
	}

	local menuOptions = {}

	-- Create a sorted keys table
	local sortedKeys = {}

	for k in pairs(Config.GrindingMeat.GrinderMenu) do 
		table.insert(sortedKeys, tonumber(k))
	end

	-- Sort the keys
	table.sort(sortedKeys)

	-- Use the sorted keys to create the menu options
	for _, k in ipairs(sortedKeys) do
		table.insert(menuOptions,  {
			title = string.format(Config.Menu["grind_meat"], k),
			context = Config.Menu["grind_meat_context"], 
			image = Framework.ConvertImageFormat(ItemsImages[Config.Items.GroundChicken], 40), -- 45 is the image size
			event = "d3MBA-butcher:client:GrindMeatMenu",
			args = {
				GrinderIndex = GrinderIndex,
				MeatAmount = k
			}
		})
	end 

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

-- Grinding meat menu
RegisterNetEvent("d3MBA-butcher:client:GrindMeatMenu", function(data)
	local menuHeaderOptions = {
        title = Config.Menu["meat_grinder_title"], 
		ox_title = Config.Menu["grinder_title"],  
		icon = "fas fa-cog", 
	}

	local menuFooterOptions = {
		title = Config.Menu["back"],
		event = "d3MBA-butcher:client:OpenGrinderMenu",
		args = data.GrinderIndex,
		icon = "fas fa-circle-arrow-left", 
	}

	local menuOptions = {}

	table.insert(menuOptions,  {
		title = string.format(Config.Menu["start_grinding_meat"], data.MeatAmount),
		icon = "fas fa-power-off", 
		event = "d3MBA-butcher:server:GrindMeat", 
		isServer = true, 
		args = {
			GrinderIndex = data.GrinderIndex,
			MeatAmount = data.MeatAmount,
		}
	})

	for k, v in pairs(Config.GrindingMeat.GrinderMenu[tostring(data.MeatAmount)]) do 
		table.insert(menuOptions,  {
			title = Framework.GetItemLabel(k) .. " - " .. v .. "x",
			image = Framework.ConvertImageFormat(ItemsImages[k], 45), -- 45 is the image size
		})
	end 

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

-- Instant sell menu 
RegisterNetEvent("d3MBA-butcher:client:OpenInstantSellMenu", function()

    local menuHeaderOptions = {
        title = Config.Menu["butcher_shop_title"], 
        ox_title = Config.Menu["butcher_shop_menu"],  
    }

    local menuFooterOptions = {
        title = Config.Menu["exit"],
        icon = "fas fa-circle-xmark", 
    }

    local menuOptions = {}

    local ShopItems = Config.InstantSell.SellMenu
    for i = 1, #ShopItems do  
        table.insert(menuOptions,  {
            title = string.format(Config.Menu["sell_label"], Framework.GetItemLabel(ShopItems[i].ItemName)),
            context = string.format(Config.Menu["price_context"], ShopItems[i].Price),
			image = Framework.ConvertImageFormat(ItemsImages[ShopItems[i].ItemName], 40), -- 45 is the image size
            event = "d3MBA-butcher:client:InstantSellInputAmount",
            args = {
                ItemName = ShopItems[i].ItemName,
                Price = ShopItems[i].Price,
            } 
        })
    end        

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)

RegisterNetEvent("d3MBA-butcher:client:ShowOrderMenu", function(order)
    local menuHeaderOptions = {
        title = Config.Menu["start_packaging_title"],
        ox_title = Config.Menu["order_title"],
		event = "d3MBA-butcher:client:StartPackagingOrder",
        icon = "fas fa-box-open",
    }

    local menuFooterOptions = {
        title = Config.Menu["exit"],
        icon = "fas fa-circle-xmark", 
    }

    local menuOptions = {}

    for _, item in ipairs(order.Items) do
        table.insert(menuOptions, {
            title = Framework.GetItemLabel(item.ItemName) .. " - " .. item.Amount .. "x",
            image = Framework.ConvertImageFormat(ItemsImages[item.ItemName], 45), -- Assuming ItemsImages is available
        })
    end

    table.insert(menuOptions, {
        title = string.format(Config.Menu["total_price_title"], order.TotalPrice),
		icon = "fas fa-dollar-sign",
        disabled = true,
    })

    TriggerEvent("d3MBA-lib:client:OpenMenu", Framework.Menu, menuHeaderOptions, menuOptions, menuFooterOptions)
end)


ItemsImages = {
	[Config.Items.ChickenGizzard] = "https://imgur.com/bHbh74L.png",
	[Config.Items.ChickenLeg] = "https://imgur.com/MlHofp7.png",
	[Config.Items.ChickenWing] = "https://imgur.com/OphStxZ.png",
	[Config.Items.ChickenBreast] = "https://imgur.com/FF0DA1e.png",
	[Config.Items.ChickenDrumstick] = "https://imgur.com/HEHn8dZ.png",
	[Config.Items.ChickenStockBones] = "https://imgur.com/TvqIHCi.png",
	[Config.Items.ChickenThigh] = "https://imgur.com/cUZ2PFv.png",
	[Config.Items.ChickenBack] = "https://imgur.com/jA5lcQN.png",
	[Config.Items.GroundChicken] = "https://imgur.com/9SMFtsq.png",
}