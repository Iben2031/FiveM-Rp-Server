local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('d9e05f4c-a4a9-4e64-b51a-7b21a9fbe1d9')
AddEventHandler('d9e05f4c-a4a9-4e64-b51a-7b21a9fbe1d9', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		--if xPlayer.job.name == 'police' then
			TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', xPlayers[i], _U('robbery_cancelled_at') .. Banks[robb].nameofbank)
			TriggerClientEvent('5e9c3aa3-12f9-4b93-8041-db40edfaf0a5', xPlayers[i])
		--end
	end
	if(robbers[source])then
		TriggerClientEvent('695bf319-a161-40ec-863e-6858d13bbaaf', source)
		robbers[source] = nil
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('robbery_has_cancelled') .. Banks[robb].nameofbank)
	end
end)

RegisterServerEvent('878a06d5-b03b-439d-8a4c-91f7edbf98a2')
AddEventHandler('878a06d5-b03b-439d-8a4c-91f7edbf98a2', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	if Banks[robb] then

		local bank = Banks[robb]

		if (os.time() - bank.lastrobbed) < 7200 and bank.lastrobbed ~= 0 then

			TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('already_robbed') .. (7200 - (os.time() - bank.lastrobbed)) .. _U('seconds'))
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

			if(cops >= bank.police)then

				rob = true
				TriggerClientEvent('chatMessage', -1, 'ข่าวด่วน', {255, 0, 0}, "มีการปล้นธนาคารเกิดขึ้นที่ ^2" .. bank.nameofbank)
				TriggerClientEvent('chatMessage', -1, 'ข่าวด่วน', {255, 0, 0}, "มีการปล้นธนาคารเกิดขึ้นที่ ^2" .. bank.nameofbank)
				TriggerClientEvent('chatMessage', -1, 'ข่าวด่วน', {255, 0, 0}, "มีการปล้นธนาคารเกิดขึ้นที่ ^2" .. bank.nameofbank)
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					--if xPlayer.job.name == 'police' then
							TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', xPlayers[i], _U('rob_in_prog') .. bank.nameofbank)
							TriggerClientEvent('742dabb4-db92-40d9-a44a-b6c9fa0410b8', xPlayers[i], Banks[robb].position)
							TriggerClientEvent('03b2bbab-0627-475a-8571-3af60579b03f', xPlayers[i], Banks[robb].position)	
					--end
				end

				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('started_to_rob') .. bank.nameofbank .. _U('do_not_move'))
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('alarm_triggered'))
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('hold_pos'))
				TriggerClientEvent('f67db0c9-f69b-4d9c-a20d-dc451f8424b0', source, robb)
				Banks[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(900000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('49cd9de6-7976-4b36-83be-5269533759eb', savedSource, job)
						if(xPlayer)then

							xPlayer.addAccountMoney('black_money', bank.reward)
							local xPlayers = ESX.GetPlayers()
							for i=1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								--if xPlayer.job.name == 'police' then
										TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', xPlayers[i], _U('robbery_complete_at') .. bank.nameofbank)
										TriggerClientEvent('5e9c3aa3-12f9-4b93-8041-db40edfaf0a5', xPlayers[i])
								--end
							end
						end
					end
				end)
			else
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('min_two_police') .. bank.police)
			end
		else
			TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('robbery_already'))
		end
	end
end)
