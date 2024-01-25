function spawnObject(model, coord)
    local entity = CreateObject(model, coord.x, coord.y, coord.z, 0, 0, 0)
    while not DoesEntityExist(entity) do
        Wait(10)
    end
    PlaceObjectOnGroundProperly(entity)
    FreezeEntityPosition(entity, true)
    return entity
end

function loadAnimDict(dict)	
    if not HasAnimDictLoaded(dict) then 
        while not HasAnimDictLoaded(dict) do 
            RequestAnimDict(dict) Wait(5) 
        end 
    end 
end

function playAnim(animDict, animName, duration, flag)
    loadAnimDict(animDict)
    TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, flag, 1, false, false, false)
end

function stopAnim(animDict, animName)
    StopAnimTask(PlayerPedId(), animName, animDict)
    RemoveAnimDict(animDict)
end

function minigame()
    playAnim('anim@gangops@facility@servers@bodysearch@', 'player_search', 10000, 6)
    success = lib.skillCheck({'easy', 'easy', {areaSize = 50, speedMultiplier = 1.5}, 'easy'}, {'1', '2', '3', '4'})
    stopAnim('anim@gangops@facility@servers@bodysearch@', 'player_search')
    return(success)
end

local time = 1000
function loadModel(model) 
    if not HasModelLoaded(model) then
        while not HasModelLoaded(model) do
            if time > 0 then time = time - 1 RequestModel(model) else time = 1000 break end Wait(10)
        end
    end
end