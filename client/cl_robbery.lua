function Robbery(pos)
    local time, robbery = 0, true

    while robbery do
        local pPos = GetEntityCoords(PlayerPedId())
        local dst = Vdist(pPos.x, pPos.y, pPos.z, pos.x, pos.y, pos.z)
        
        if dst <= xBraquage.DstRobbery then
            time = time + 60000
            print(dst)
            exports['progressBars']:startUI((xBraquage.TimeRobbery * 60000), "Braquage en cours...")
            if (time - 60000) == (xBraquage.TimeRobbery * 60000) then
                TriggerServerEvent("xBraquage:giveGain")
                robbery = false
                break
            end       
        elseif dst > xBraquage.DstRobbery then
            ESX.ShowNotification('(~y~Information~s~)\nBraquage échoué.')
            robbery = false
            break 
        end

        Wait(60000)
    end
end

--- Xed#1188 | https://discord.gg/HvfAsbgVpM