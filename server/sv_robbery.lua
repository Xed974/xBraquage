local function getCops()
    local xPlayers = ESX.GetPlayers()
    local copsConnected = 0

    for i = 1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

        for _,v in pairs(xBraquage.JobPolice) do
            if (xPlayer.getJob().name) == v then
                copsConnected = copsConnected + 1
            end
        end
    end
    return copsConnected
end

ESX.RegisterServerCallback("xBraquage:startRobbery", function(source, cb, pos)
    local xPlayer = ESX.GetPlayerFromId(source)
    local copsCount = getCops()
    
    if (not xPlayer) then return end
    if copsCount >= xBraquage.PoliceRequis then
        if not getCooldown(pos) then
            TriggerClientEvent('esx:showNotification', source, '(~g~Succès~s~)\nBraquage commencé.')
            setCooldown(pos)
            cb(true)
        else
            TriggerClientEvent('esx:showNotification', source, '(~y~Information~s~)\nLa brinks est passée récemment.')
        end
    else
        TriggerClientEvent('esx:showNotification', source, '(~y~Information~s~)\nLa brinks est passée récemment.')
    end
end)

RegisterNetEvent("xBraquage:giveGain")
AddEventHandler("xBraquage:giveGain", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if (not xPlayer) then return end
    xPlayer.addAccountMoney(xBraquage.TypeMoney, xBraquage.Gain)
    TriggerClientEvent('esx:showNotification', xPlayer.source, '(~g~Succès~s~)\nBraquage réussi.')
end)

--- Xed#1188 | https://discord.gg/HvfAsbgVpM