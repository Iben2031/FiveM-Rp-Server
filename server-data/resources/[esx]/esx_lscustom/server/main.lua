ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('1ffac387-0ea5-49bf-96c5-013d59b99a47')
AddEventHandler('1ffac387-0ea5-49bf-96c5-013d59b99a47', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	price = tonumber(price)
	if price > xPlayer.getMoney() then
		TriggerClientEvent('5e652077-a0f0-4cc6-86c0-2d5ab119a808', _source)
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('not_enough_money'))
	else
		xPlayer.removeMoney(price)
		TriggerClientEvent('b6e57067-9414-4cc5-b5c3-02f85ea79b65', _source)
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('purchased'))
	end
end)

RegisterServerEvent('fb5e7259-141f-4522-8a53-7b06a7691f6b')
AddEventHandler('fb5e7259-141f-4522-8a53-7b06a7691f6b', function(myCar)

	MySQL.Async.execute(
		'UPDATE `owned_vehicles` SET `vehicle` = @vehicle WHERE `vehicle` LIKE "%' .. myCar['plate'] .. '%"',
		{
			['@vehicle'] = json.encode(myCar)
		}
	)
end)