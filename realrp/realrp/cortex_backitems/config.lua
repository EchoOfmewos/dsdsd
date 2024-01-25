limit = { -- Item type on back limit
    gun = 3,
    melee = 3,
    drug = 3,
    none = 3
}

backItems = {
    -- ## Gunw_lr_kyrossgl
	['WEAPON_CARBINERIFLE'] = { -- Weapon/item name | Make sure the weapon/item name is the same as in the inventory data. (P.S Weapon name must be UPPERCASE.)
        type = 'gun', model = `w_ar_carbinerifle`,              bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_M32S'] = { -- Weapon/item name | Make sure the weapon/item name is the same as in the inventory data. (P.S Weapon name must be UPPERCASE.)
        type = 'gun', model = `w_lr_kyrossgl`,              bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_COMPACTRIFLE'] = { -- Weapon/item name | Make sure the weapon/item name is the same as in the inventory data. (P.S Weapon name must be UPPERCASE.)
        type = 'gun', model = `w_ar_assaultrifle_smg`,              bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_SCARH'] = { -- Weapon/item name | Make sure the weapon/item name is the same as in the inventory data. (P.S Weapon name must be UPPERCASE.)
        type = 'gun', model = `w_ar_scarh`,              bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_PMXFM'] = { -- Weapon/item name | Make sure the weapon/item name is the same as in the inventory data. (P.S Weapon name must be UPPERCASE.)
        type = 'gun', model = `pmx_fluffymods`,              bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_SCARSC'] = { -- Weapon/item name | Make sure the weapon/item name is the same as in the inventory data. (P.S Weapon name must be UPPERCASE.)
        type = 'gun', model = `scarsc`,              bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },
    
    ['WEAPON_PP19'] = {
        type = 'gun', model = `pp19`,              bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_MICROSMG'] = {
        type = 'gun', model = `w_sb_microsmg`,                  bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_SMG'] = {
        type = 'gun', model = `w_sb_smg`,                       bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_ASSAULTSMG'] = {
        type = 'gun', model = `w_sb_assaultsmg`,                       bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_AK47'] = {
        type = 'gun', model = `w_ar_ak47`,                      bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    ['WEAPON_PUMPSHOTGUN'] = {
        type = 'gun', model = `w_sg_pumpshotgun`,                      bone = 24818, x = 0.19, y = -0.165, z = -0.02, xR = 0.0, yR = 0.0, zR = 0.0
    },

    -- ## Add more here | If you not gonna change new position, Just copy from above and change the Name and Model & done.

    -- ## Melee
    ['WEAPON_BAT'] = {
        type = 'melee', model = `w_me_bat`,                     bone = 24818, x = 0.30, y = -0.15, z = -0.2, xR = 0.0, yR = 120.0, zR = 0.0
    },

    ['WEAPON_BATTLEAXE'] = {
        type = 'melee', model = `w_me_battleaxe`,                     bone = 24818, x = 0.30, y = -0.15, z = -0.2, xR = 0.0, yR = 120.0, zR = 0.0
    },

    ['WEAPON_HATCHET'] = {
        type = 'melee', model = `w_me_hatchet`,                     bone = 24818, x = 0.30, y = -0.15, z = -0.2, xR = 0.0, yR = 120.0, zR = 0.0
    },

    ['WEAPON_CROWBAR'] = {
        type = 'melee', model = `w_me_crowbar`,                     bone = 24818, x = 0.30, y = -0.15, z = -0.2, xR = 0.0, yR = 120.0, zR = 0.0
    },

    ['WEAPON_POOLCUE'] = {
        type = 'melee', model = `w_me_poolcue`,                 bone = 24818, x = 0.30, y = -0.15, z = -0.2, xR = 0.0, yR = 120.0, zR = 0.0
    },

    ['WEAPON_MACHETE'] = {
        type = 'melee', model = `w_me_machette_lr`,             bone = 24818, x = 0.30, y = -0.15, z = -0.2, xR = 0.0, yR = 120.0, zR = 0.0
    },
    ['WEAPON_GOLFCLUB'] = {
        type = 'melee', model = `w_me_gclub`,             bone = 24818, x = 0.30, y = -0.15, z = -0.2, xR = 0.0, yR = 120.0, zR = 0.0
    },

    -- ## Drug/Item
    ['markedbills'] = {
        type = 'drug', model = `prop_money_bag_01`,             bone = 24818, x = 0.25, y = -0.1, z = -0.64, xR = 0.0, yR = 90.0, zR = 0.0
    },

    ['meth_bag'] = {
        type = 'drug', model = `bkr_prop_meth_smallbag_01a`,    bone = 24818, x = 0.23, y = -0.1, z = -0.30, xR = 90.0, yR = 90.0, zR = 0.0
    },

    ['weed_plant'] = {
        type = 'drug', model = `bkr_prop_weed_drying_02a`,      bone = 24818, x = 0.25, y = -0.19, z = 0.18, xR = 0.0, yR = 90.0, zR = 0.0 
    },

    ['WEAPON_PETROLCAN'] = {
        type = 'drug', model = `w_am_jerrycan`,                 bone = 24818, x = -0.15, y = -0.17, z = -0.43, xR = 0.0, yR = 90.0, zR = 195.0
    },

    -- ## Here you can set your own specific weapon position, You can place it on the back, front, or anywhere you like. But if you have two of same weapons/items it will show only one.
    ['WEAPON_AUGA3'] = {
        type = 'none', model = `w_ar_aug`,                      bone = 24818, x = 0.3, y = 0.18, z = 0.02, xR = 0.0, yR = 60, zR = 0.0
    },

    ['WEAPON_PISTOL50'] = {
        type = 'none', model = `w_pi_pistol50`,
        job = { -- only works with type none.
            ['police'] = { -- Job name | all = all jobs.
                bone = 0, x = -0.03, y = 0.06, z = 0.21, xR = 90.0, yR = -90.0, zR = -190.0 -- Position for Police job.
            },

            -- If you want this weapon only for 1 job, you can remove this.
            ['all'] = {
                bone = 23553, x = -0.01, y = -0.16, z = 0.0, xR = 180.0, yR = 180.0, zR = 0.0 -- Position for all jobs.
            }
        }
    },
}