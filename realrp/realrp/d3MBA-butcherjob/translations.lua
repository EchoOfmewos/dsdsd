Config.ProgressBar = { 
    -- Change progress bar text here for every action.
    PorcessingChicken = "Processing chicken",
    PluckChicken = "Plucking chicken", 
    PuttingChickenOnTheLine = "Putting chicken on the line...",
    GrindingMeat = "Grinding meat...",
    Packaging = "Packaging...", 
}

Config.Notifications = {
    ["spawnpoint_check"] = "The vehicle spawnpoint is currently blocked!",
    ["paid_deposit"] = "You've paid " ..Config.JobVehicle.Deposit.Amount.. "$ as a vehicle deposit!",
    ["deposit_back"] = "You've received your deposit back: " ..Config.JobVehicle.Deposit.Amount.. "$",
    ["no_enough_money_deposit"] = "You don't have sufficient funds to pay the vehicle deposit of " ..Config.JobVehicle.Deposit.Amount.. "$",
    ["no_enough_money"] = "You don't have enough money - ",
    ["return_vehicle"] = "[E] Return the job vehicle",
    ["chicken_escaped"] = "The chicken has escaped from your grasp!",
    ["no_meat_in_box"] = "There are no plucked chickens in the box!",
    ["no_legs_in_box"] = "There are no chicken legs in the box!",
    ["catch_chicken"] = "You've successfully caught a chicken.",
    ["took_legs_box"] = "You've collected %s x chicken legs from the box", -- %s = amount
    ["took_meat_box"] = "You've collected %s x unplucked chickens from the box", -- %s = amount
    ["park_vehicle_add_chickens"] = "Added %s chickens to your cage.",
    ["veh_cage_full"] = "The cage is full.",
    ["increase_experience"] = "Experience increased by + ",
    ["you_dont_have_unplucked_chicken"] = "You don't have any unplucked chickens!",
    ["you_dont_have_butcher_knife"] = "You don't have a butcher knife!",
    ["you_dont_have_chicken"] = "You don't have any chickens!",
    ["you_dont_have_plucked_chicken"] = "You don't have any plucked chickens!",
    ["missing_following_items"] = "You're missing the following items: %s", -- %s = List of missing items
    ["script_restert_restore_clothes"] = "Your clothes have been restored due to the script restart.",
    ["go_catch_chickens"] = "Proceed to catch chickens.",
    ["you_must_wear_job_uniform"] = "You must wear job unioform!",
    ["you_already_have_butcher_knife"] = "You already have a butcher knife!",
    ["invalid_amount"] = "Invalid amount!",  
    ["sell_you_dont_have_item"] = "You don't have %sx %s for sell!",
    ["new_order"] = "You have a new order!",
    ["searching_for_order"] = "Searching for an order...",
    ["you_dont_have_order"] = "You don't have an order!",
    ["packed_order"] = "You've packed the order.",
    ["delivery_completed"] = "You've completed the delivery.",
    ["no_order_to_sell"] = "You don't have an order to sell!",
    ["sold_chicken_order"] = "You successfully sold chicken order for %s $.",
    ["sold_item"] = "You sold %sx %s for %s$",
}

Config.InstructionsText = {
    ["office"] = "The office houses a computer for tracking your experience level.",
    ["job_vehicle"] = "On this location you can take a job vehicle. You must pay a deposit of " ..Config.JobVehicle.Deposit.Amount.. "$.",
    ["catching_chickens"] = "Catching chickens is your second step. Approach them and press [E] to do so.",
    ["butcher_knife"] = "Find a butcher knife on the shelf, a crucial tool for your work.",
    ["kill_chickens"] = "With your butcher knife, your third task is to slaughter the captured chickens.",
    ["putting_chicken_on_the_line"] = "For the fourth task, place the slaughtered chickens on the conveyor, ready for plucking.",
    ["line_chicken_leg_box"] = "On the conveyor, there's a box storing chicken legs. Collect them during the fifth task.",
    ["line_meat_box"] = "At the end of the conveyor, the sixth task is to gather the plucked chickens from the meat box.",
    ["line_controls"] = "You can keep track of the plucked chickens, chicken legs, and the number of chickens on the conveyor.",
    ["table_processing"] = "Task seven is processing the plucked chickens at a specified table.",
    ["meat_grinder"] = "Finally, task eight involves using the meat grinder to process all parts of the chicken.",
    ["change_clothes"] = "Before beginning your tasks, remember to change into your job uniform to maintain hygiene.",
    ["instant_sell"] = "Sell chicken products here quickly",
    ["delivery_sell"] = "Delivery is another, more lucrative but time-consuming, way to sell your chicken products.", 
    ["sell_tips"] = "You can find more tips about selling products on the office laptop.",
}

Config.Menu = {
    ["menu"] = "Menu",
    ["exit"] = "Exit",
    ["back"] = "Back",
    ["office"] = "Office", 
    ["catching_experience_title"] = "Catching experience: %s", -- %s = experience level
    ["catching_experience_context"] = "Chicken catching experience.", 
    ["processing_experience_title"] = "Processing experience: %s", -- %s = experience level
    ["processing_experience_context"] = "Chicken processing experience.",
    ["find_customers_title"] = "Find the customers",
    ["find_customers_context"] = "Click to find customers.",
    ["see_order_details_title"] = "See order details",
    ["see_order_details_context"] = "Click to see order details.",
    ["tips_for_selling_title"] = "Tips for selling products",
    ["tips_for_selling_context"] = "Click to see tips for selling products.",
    ["order_details_title"] = "Order Details",
    ["order_title"] = "Order",
    ["item_format"] = "%s - %sx", -- %s = item name, %s = amount
    ["customer_distance"] = "Customer is: %s meters away from you.", -- %s = meters variable
    ["total_price"] = "Total Price: %s$", -- %s = price 
    ["tips_title"] = "Tips for selling products",
    ["tips_ox_title"] = "Tips",
    ["sell_directly_title"] = "Sell Directly, Save Time",
    ["sell_directly_context"] = "Sell your products directly at the company for a faster but smaller profit.",
    ["deliver_title"] = "Deliver for More Money",
    ["deliver_context"] = "Deliver products to customers for more money, but it takes longer.",
    ["line_controls_title"] = "Line Controls",
    ["controls_title"] = "Controls",
    ["chickens_on_line"] = "Chickens on the line: %s", -- %s = chickens on the line
    ["chickens_on_line_context"] = "Number of chickens on the line.",
    ["chicken_legs_in_box"] = "Chicken legs in the box: %s", -- %s = chicken legs in the box
    ["chicken_legs_in_box_context"] = "Number of chicken legs in the box.",
    ["plucked_chickens_in_meat_box"] = "Plucked chickens in the meat box: %s", -- %s = plucked chickens in the meat box
    ["plucked_chickens_in_meat_box_context"] = "Number of plucked chickens in the meat box.",
    ["refresh_title"] = "Refresh",
    ["refresh_context"] = "Click to refresh the menu.",
    ["meat_grinder_title"] = "Meat Grinder",
    ["grinder_title"] = "Grinder",
    ["grind_meat"] = "Grind meat - %sg of meat",
    ["grind_meat_context"] = "Click to see more.",
    ["start_grinding_meat"] = "Start grinding meat - %sg of meat", -- %s = grams 
    ["butcher_shop_title"] = "Butcher Shop", 
    ["butcher_shop_menu"] = "Butcher Shop Menu",
    ["sell_label"] = "Sell - %s", -- %s = item label
    ["price_context"] = "Price: $%s", -- %s = price variable 
    ["start_packaging_title"] = "Start packaging order", 
    ["order_title"] = "Order",
    ["total_price_title"] = "Total Price: %s$", -- %s = total price variable
}

Config.InputMenu = {
    ["enter_amount"] = "Enter amount of %s to sell", 
    ["amount"] = "Amount?"
}

Config.TargetLabels = { 
    ["change_clothes"] = "Change clothes",
    ["spawn_job_vehicle"] = "Take a vehicle keys",
    ["return_job_vehicle"] = "Back a vehicle keys", 
    ["catching_ped"] = "Start catching chickens", 
    ["stop_catching"] = "Stop catching chickens",
    ["office"] = "Laptop", 
    ["collect_butcher_knife"] = "Collect a butcher knife",
    ["open_line_controls"] = "Open line controls menu", 
    ["chicken_processing"] = "Chicken processing", 
    ["kill_chicken"] = "Kill chicken", 
    ["take_chicken"] = "Collect chicken", 
    ["pluck_chicken"] = "Pluck the chicken", 
    ["put_chicken_on_line"] = "Put chicken on line", 
    ["grind_the_meat"] = "Grind the meat",  
    ["meat_box"] = "Take out plucked chickens",
    ["legs_container"] = "Take out chicken legs",
    ["instructions_ped"] = "Click to open job instrictions",
    ["instant_sell"] = "Open sell menu", 
    ["packaging"] = "Packaging",
    ["delivery_ped"] = "Sell chicken order", 
}

Config.TargetIcons = {
    ["change_clothes"] = "fas fa-tshirt",
    ["job_vehicle"] = "fas fa-car",
    ["catching_ped"] = "fas fa-child",
    ["stop_catching"] = "fas fa-circle-xmark",
    ["cage"] = "fas fa-hand-pointer",
    ["office"] = "fas fa-computer",
    ["take"] = "fas fa-hand",
    ["circle"] = "fas fa-circle",
    ["butcher_machine"] = "fas fa-cogs",
    ["line"] = "fas fa-arrows-alt-h",
    ["meat_box"] = "fas fa-box-open",
    ["open_line_controls"] = "fas fa-cog",
    ["legs_container"] = "fas fa-drumstick-bite",
    ["instructions_ped"] = "fas fa-book-open",
    ["instant_sell"] = "fas fa-dollar-sign",
    ["packaging"] = "fas fa-box",
    ["delivery_ped"] = "fas fa-dollar-sign",
}