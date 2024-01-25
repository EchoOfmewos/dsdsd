local m45a1menu = MenuV:CreateMenu(false, 'Customizing weapon...', 'topleft', 0, 195, 227)
local spawnm45a1 = g17menu:AddButton({ icon = '📋', label = 'Spawn M45A1', value = 'spawner', description = 'Spawn your M45A1' })
local despawnm45a1 = g17menu:AddButton({ icon = '📋', label = 'DeSpawn M45A1', value = 'despawner', description = 'DeSpawn your M45A1' })

local magazines = m45a1menu:AddSlider({ icon = '🔫', label = 'Magazines', value = 'magazines', values = {
    { label = '7rnd Magazine', value = 'mag1', description = 'Add a 7rnd Magazine' },
    { label = '11rnd Magazine', value = 'mag2', description = 'Add a 11rnd Magazine' }
}})

local flash = m45a1menu:AddSlider({ icon = '🔫', label = 'Flashlights', value = 'flash', values = {
    { label = 'Flashlight', value = 'flash1', description = 'Add a Flashlight #1' }
}})

local suppressor = m45a1menu:AddSlider({ icon = '🔫', label = 'Suppressors', value = 'suppressors', values = {
    { label = 'Suppressor', value = 'muzzle1', description = 'Add muzzle #1' }

}})
spawnm45a1:On('select', function(item, value) 
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), 999, true, true)
end)

spawnm45a1:On('select', function(item, value) 
    RemoveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_m45a1"))
end)
magazines:On('select', function(item, value) 
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), false) then
        if (('%s'):format(value)) == "mag1" then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), GetHashKey("COMPONENT_M45A1_CLIP_01"))
        elseif (('%s'):format(value)) == "mag2" then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), GetHashKey("COMPONENT_M45A1_CLIP_02"))
        end
    end
end)

flash:On('select', function(item, value) 
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), false) then
        if (('%s'):format(value)) == "flash1" then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), GetHashKey("COMPONENT_M45A1_FLSH_01"))
        end
    end
end)

suppressor:On('select', function(item, value) 
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), false) then
        if (('%s'):format(value)) == "muzzle1" then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("weapon_m45a1"), GetHashKey("COMPONENT_M45A1_SUPP_01"))
        end
    end
end)

RegisterCommand('m45a1', function(source, args, RawCommand)
    local ped = GetPlayerPed(-1)
    MenuV:OpenMenu(m45a1menu)
end)
