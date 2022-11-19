Citizen.CreateThread(function()
    while true do
        local wait = 1000

        for _,v in pairs(xBraquage.Position) do
            local pPos = GetEntityCoords(PlayerPedId())
            local dst = Vdist(pPos.x, pPos.y, pPos.z, v.x, v.y, v.z)

            if dst <= 3.0 then
                wait = 0
                DrawMarker(xBraquage.MarkerType, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, xBraquage.MarkerSizeLargeur, xBraquage.MarkerSizeEpaisseur, xBraquage.MarkerSizeHauteur, xBraquage.MarkerColorR, xBraquage.MarkerColorG, xBraquage.MarkerColorB, xBraquage.MarkerOpacite, xBraquage.MarkerSaute, true, p19, xBraquage.MarkerTourne)
            end
            if dst <= 1.0 then
                wait = 0
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour braquer la supérette.")
                if IsControlJustPressed(1, 51) then
                    for a,b in pairs(xBraquage.ItemRequired) do
                        if GetSelectedPedWeapon(PlayerPedId()) == b then
                            ESX.TriggerServerCallback("xBraquage:startRobbery", function(result) 
                                if result then
                                    Robbery(v)
                                end
                            end, v)
                        end
                    end
                end
            end
        end

        Citizen.Wait(wait)
    end
end)

--- Xed#1188 | https://discord.gg/HvfAsbgVpM