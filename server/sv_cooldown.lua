local data = {}
local function refreshCooldown()
    data = {}
    data = LoadResourceFile("xBraquage", "data.json")
    data = json.decode(data)
end

function getCooldown(pos)
    refreshCooldown()
    for _,v in pairs(data) do
        if json.encode(v.pos.x) == json.encode(pos.x) then
            return true
        end
    end
end

function setCooldown(pos)
    refreshCooldown()
    table.insert(data, {pos = pos, time = (xBraquage.TimeCooldown * 60000)})
    SaveResourceFile("xBraquage", "data.json", json.encode(data), -1)
end

CreateThread(function()
    while true do
        refreshCooldown()
        for _,v in pairs(data) do
            if v.time > 0 then
                v.time = v.time - 60000
            else
                table.remove(data, _)
            end
            SaveResourceFile("xBraquage", "data.json", json.encode(data), -1)
        end
        Wait(60000)
    end
end)

--- Xed#1188 | https://discord.gg/HvfAsbgVpM