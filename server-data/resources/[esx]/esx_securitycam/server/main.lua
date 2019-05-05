ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('9cf9a239-5aa1-4f03-b8e2-08d161cdd98f')
AddEventHandler('9cf9a239-5aa1-4f03-b8e2-08d161cdd98f', function()
	local _source = source
	TriggerClientEvent('5cc5732b-851f-4a00-9b7c-3d111d0cdaa2', _source)
end)

RegisterServerEvent('4758e0c0-314b-4ce4-90e0-fe4ced2fa6bb')
AddEventHandler('4758e0c0-314b-4ce4-90e0-fe4ced2fa6bb', function(state)
	print(('esx_securitycam: %s has set the bank cameras to %s!'):format(GetPlayerIdentifiers(source)[1], state))
	TriggerClientEvent('9e970747-25cd-4bf8-bc08-7cb807acd09c', -1, state)
end)

RegisterServerEvent('72d26c09-fba3-439e-b458-d70e8d55dae2')
AddEventHandler('72d26c09-fba3-439e-b458-d70e8d55dae2', function(state)
	print(('esx_securitycam: %s has set the police cameras to %s!'):format(GetPlayerIdentifiers(source)[1], state))
	TriggerClientEvent('234d3de4-5302-4d8b-a489-26d8213c2456', -1, state)
end)