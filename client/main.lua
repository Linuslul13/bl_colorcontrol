RegisterNetEvent('bl_core:opencontroler', function(playerId)
    print('Debug on')
    local ped = PlayerPedId()
    print('Ped ID => '..ped)
    local vehicle = GetVehiclePedIsUsing(ped)
    print('Vehicle ID => '..vehicle)
    print("------------------------------")
    if vehicle == 0 then 
        TriggerEvent('bl_notify', 'error', 'BLACKLINE', 'Du bist in keinem Auto!', 5000)
    else
        local input = lib.inputDialog('Neon Controler', {
             {type = 'color', label = 'Welche Farbe willst du haben?', default = '#eb4034'},
         })

         if input == nil then 
            print('nichts')
         else
         print(input[1] .. ' to '.. lib.math.hextorgb(input[1]))
         SetVehicleNeonLightsColour(vehicle, lib.math.hextorgb(input[1]))
         TriggerEvent('bl_notify', 'success', 'BLACKLINE', 'Du hast deine Unterbodenbeleuchtung zu '..input[1]..' geändert!', 5000)
         end
    end         
end)