ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('lenses', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local item = xPlayer.getInventoryItem('lenses').count
    if item >= 1 then
        TriggerClientEvent('esx_lenses:use', _source)
        xPlayer.removeInventoryItem('lenses', 1)
    end
end)