ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterUsableItem('colorcontroler', function(playerId)
  TriggerClientEvent('bl_core:opencontroler', playerId)
end)
