local blips = {
 
   --coke 
  {title="Pilot Job (Start)", colour=6, id=423, x = -900.7, y = -2978.62, z = 19.85}, 
  {title="Pilot Job (Door)", colour=6, id=359, x = -1307.26, y = -3389.68, z = 13.94},
  --{title="Mount Hospital", colour=6, id=61, x = -436.26, y = -338.39, z = 24.26},
  --{title="Pharmacy", colour=5, id=51, x = -492.22, y = -340.22, z = 30.02},
  {title="Pharmacy", colour=5, id=51, x = 309.76, y = -593.75, z = 43.28},
  {title="Mining Shop", colour=5, id=52, x = 2707.8059082031, y = 2777.1477050781, z = 37.877975463867},
  {title="Mining Smelter (Materials)", colour=5, id=648, x = 2654.8837890625, y = 2811.8974609375, z = 34.149452209473},
  {title="Mining Field (Materials)", colour=5, id=617, x = 2945.9802246094, y = 2782.0378417969, z = 39.605838775635},
  {title="Vehicle Rentals", colour=5, id=523, x = -257.56, y = -986.56, z = 31.22},
  {title="Vehicle Rentals", colour=5, id=523, x = 111.33, y = -1080.92, z = 28.59},
  {title="Vehicle Rentals", colour=5, id=523, x = 1708.31, y = 3598.87, z = 34.42},
  {title="Vehicle Rentals", colour=5, id=523, x = -126.93, y = 6291.63, z = 31.34},
  
  
  
  -- {title="Night Club", colour=0, id=93, x = -433.28335571289, y = -29.904165267944, z = 40.875091552734},
   --{title="Crypto Lab", colour=4, id=606, x = -185.72770690918, y = -759.61804199219, z = 30.454006195068},
   --weed
  -- {title="Power Plant", colour=25, id=802, x = 2847.4448242188, y = 1512.7078857422, z = 24.610692977905},
   --{title="Water Park", colour=25, id=358, x = -193.81666564941, y = -207.3913269043, z = 457.23364257813},
---  {title="Arcade Games", colour=25, id=102, x = -1270.2424316406, y = -305.3010559082, z = 36.985080718994},
   -- chimical
---  {title="Garden Jobs", colour=1, id=285, x = -540.42, y = -205.34, z = 137.65},  
  -- {title="Kart Games", colour=1, id=127, x = -1723.1614990234, y = -1124.7036132813, z = 14.11493396759},
   --{title="Chimical sale", colour=67, id=51, x=-106.5, y=-8.35, z=66.80},
   -- meth
  -- {title="hydrochloric acid", colour=46, id=84, x=2416.42, y= 3142.55, z=48.15},  
   --{title="Sulfuric acid", colour=46, id=84, x=2663.97, y=1590.81, z=24.5},
   --{title="Sodium hydroxide", colour=46, id=84, x=182.5, y=2776.1, z=45.66},
  -- {title="Meth Process", colour=46, id=84, x=604.75, y=-3056.83, z=6.17},
  -- {title="Meth Sell", colour=46, id=84, x=214.56, y=-147.48, z=58.81},
}

Citizen.CreateThread(function()

  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
	
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 6)
    SetBlipCategory(info.blip, 10)
    SetBlipScale(info.blip, 0.7)
    SetBlipColour(info.blip, info.colour)
	
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
	--------------------------------------------------------------
  	
  end
end)



