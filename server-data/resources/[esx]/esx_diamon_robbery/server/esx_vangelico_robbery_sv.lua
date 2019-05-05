local rob = false
local robbers = {}
PlayersCrafting    = {}
local CopsConnected  = 0
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('ac5caa15-fd4c-49c3-b532-478531fd3623')
AddEventHandler('ac5caa15-fd4c-49c3-b532-478531fd3623', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', xPlayers[i], _U('robbery_cancelled_at') .. Stores[robb].nameofstore)
			TriggerClientEvent('386f0c5f-57ff-453a-9b97-9f3e5ed18c0f', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('faf8acf3-bde0-45fb-83b3-2a677f42f2d2', source)
		robbers[source] = nil
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('robbery_has_cancelled') .. Stores[robb].nameofstore)
	end
end)

RegisterServerEvent('07a3fa46-78f8-4afc-8de3-3d24dab11ddd')
AddEventHandler('07a3fa46-78f8-4afc-8de3-3d24dab11ddd', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', xPlayers[i], _U('end'))
			TriggerClientEvent('386f0c5f-57ff-453a-9b97-9f3e5ed18c0f', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('ac68fa41-9434-42a9-b252-ab9993c666cc', source)
		robbers[source] = nil
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('robbery_has_ended') .. Stores[robb].nameofstore)
	end
end)

RegisterServerEvent('d495a47c-388c-4ed3-b402-1ae271508bd1')
AddEventHandler('d495a47c-388c-4ed3-b402-1ae271508bd1', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	if Stores[robb] then

		local store = Stores[robb]

		if (os.time() - store.lastrobbed) < 3600 and store.lastrobbed ~= 0 then

            TriggerClientEvent('f457f315-31fd-4586-8348-990bd3055978', source)
			TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('already_robbed') .. (3600 - (os.time() - store.lastrobbed)) .. _U('seconds'))
			return
		end


		local cops = 0
		for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
				cops = cops + 1
			end
		end


		if rob == false then

			if(cops >= Config.RequiredCopsRob)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', xPlayers[i], _U('rob_in_prog') .. store.nameofstore)
							TriggerClientEvent('061fe9bb-1442-4bbf-a1c1-6803ca3cf004', xPlayers[i], Stores[robb].position)
					end
				end

				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('started_to_rob') .. store.nameofstore .. _U('do_not_move'))
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('alarm_triggered'))
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('hold_pos'))
			    TriggerClientEvent('419074bb-f285-4686-8558-135e33559cc5', source, robb)
                CancelEvent()
				Stores[robb].lastrobbed = os.time()
			else
				TriggerClientEvent('f457f315-31fd-4586-8348-990bd3055978', source)
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('min_two_police'))
			end
		else
			TriggerClientEvent('f457f315-31fd-4586-8348-990bd3055978', source)
			TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('robbery_already'))
		end
	end
end)

RegisterServerEvent('515144af-2fe0-4e64-b022-58fd8516097c')
AddEventHandler('515144af-2fe0-4e64-b022-58fd8516097c', function()

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.addInventoryItem('jewels', math.random(5, 10))
end)

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(120 * 1000, CountCops)
end

CountCops()

local function Craft(source)

	SetTimeout(4000, function()

		if PlayersCrafting[source] == true and CopsConnected >= Config.RequiredCopsSell then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local JewelsQuantity = xPlayer.getInventoryItem('jewels').count

			if JewelsQuantity < 1 then 
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('notenoughgold'))
			else   
                xPlayer.removeInventoryItem('jewels', 1)
                Citizen.Wait(4000)
				xPlayer.addAccountMoney('black_money', 1200)
				
				Craft(source)
			end
		else
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('copsforsell'))
		end
	end)
end

RegisterServerEvent('7b720b81-2bca-478a-a069-6e0c6c253ec1')
AddEventHandler('7b720b81-2bca-478a-a069-6e0c6c253ec1', function()
	local _source = source
	PlayersCrafting[_source] = true
	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('goldsell'))
	Craft(_source)
end)

RegisterServerEvent('dd2c92a8-81df-43c1-9b60-7086d1bc9f1e')
AddEventHandler('dd2c92a8-81df-43c1-9b60-7086d1bc9f1e', function()
	local _source = source
	PlayersCrafting[_source] = false
end)

