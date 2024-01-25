local regularDrugOdds = {
    policeCallChance = 99,
    robberyChance = 5,
    aggroChance = 5,
    sellChance = 80,
    sellAmountRange = {1, 15},
}

local hardDrugOdds = {
    policeCallChance = 99,
    robberyChance = 15,
    aggroChance = 15,
    sellChance = 85,
    sellAmountRange = {1, 1},
}

local superHardDrugOdds = {
    policeCallChance = 99,
    robberyChance = 35,
    aggroChance = 35,
    sellChance = 85,
    sellAmountRange = {1, 15},
}

SellableDrugs = {
    -- ["meth_big"] = {
    --     priceRange = {9000, 15000},
    --     odds = superHardDrugOdds,
    -- },
    ["coke_pure"] = {
        priceRange = {750, 1300},
        odds = hardDrugOdds,
    },
    ["coke_figure"] = {
        priceRange = {1250, 1800},
        odds = hardDrugOdds,
    },
    ["weed_package"] = {
        priceRange = {850, 1010},
        odds = hardDrugOdds,
    },
    ["meth_bag"] = {
        priceRange = {1275, 2039},
        odds = hardDrugOdds,
    },
    ["crack"] = {
        priceRange = {675, 950},
        odds = hardDrugOdds,
    },
    ["heroin"] = {
        priceRange = {950, 1090},
        odds = hardDrugOdds,
    },
}