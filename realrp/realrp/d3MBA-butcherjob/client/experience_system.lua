local Framework = exports['d3MBA-lib']:GetFrameworkObject()

-- Catching experience 
function CatchingChickenExperience() -- Experience system for catching chicken, function will return true or false based on player experience 
    local data = Framework.TriggerServerCallback('d3-butcherJob:server:getData') -- get player experience from DB 
    Wait(50) 
    local PlayerExperience = data.catching -- player experience

    local ExperienceChance = Config.CatchingChickens.ExperienceChance
    local keys = {}
    for k in pairs(ExperienceChance) do table.insert(keys, k) end
    table.sort(keys)
    local chance = 100

    for _, v in ipairs(keys) do -- loop through experience table (from config.lua)
        if PlayerExperience >= v then
            chance = ExperienceChance[v]
        else
            break
        end
    end

    local randValue = math.random(100) -- random number for chance calculation
    if randValue <= chance then
        return true -- success 
    else
        return false -- fail
    end
end


-- Processing experience 
function ExperienceProcessingTime() -- Experience system for processing chicken (processing plucked chicken), function will returnd processing time (in seconds) based on player experience 
    local data = Framework.TriggerServerCallback('d3-butcherJob:server:getData')
    local PlayerExperience = data.processing

    local experience_levels = {}
    for experience, time in pairs(Config.ProcessingTable.Duration) do
        table.insert(experience_levels, {experience = experience, time = time})
    end

    table.sort(experience_levels, function(a, b)
        return a.experience > b.experience
    end)

    for _, level in ipairs(experience_levels) do
        if PlayerExperience >= level.experience then
            return level.time
        end
    end

    return experience_levels[#experience_levels].time
end
