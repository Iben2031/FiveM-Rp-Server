local holdingup = false
local bank = ""
local secondsRemaining = 0
local blipRobbery = nil
local holdingupdraw = 0
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

RegisterNetEvent('f67db0c9-f69b-4d9c-a20d-dc451f8424b0')
AddEventHandler('f67db0c9-f69b-4d9c-a20d-dc451f8424b0', function(robb)
	holdingupdraw = 1
	holdingup = true
	bank = robb
	secondsRemaining = 900
end)

RegisterNetEvent('5e9c3aa3-12f9-4b93-8041-db40edfaf0a5')
AddEventHandler('5e9c3aa3-12f9-4b93-8041-db40edfaf0a5', function()
	holdingupdraw = 0
    RemoveBlip(blipRobbery)
end)

RegisterNetEvent('742dabb4-db92-40d9-a44a-b6c9fa0410b8')
AddEventHandler('742dabb4-db92-40d9-a44a-b6c9fa0410b8', function(position)
	holdingupdraw = 1
    blipRobbery = AddBlipForCoord(position.x, position.y, position.z)
    SetBlipSprite(blipRobbery , 161)
    SetBlipScale(blipRobbery , 2.0)
    SetBlipColour(blipRobbery, 3)
    PulseBlip(blipRobbery)
end)

RegisterNetEvent('695bf319-a161-40ec-863e-6858d13bbaaf')
AddEventHandler('695bf319-a161-40ec-863e-6858d13bbaaf', function(robb)
	holdingupdraw = 0
	holdingup = false
	ESX.ShowNotification(_U('robbery_cancelled'))
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)


RegisterNetEvent('49cd9de6-7976-4b36-83be-5269533759eb')
AddEventHandler('49cd9de6-7976-4b36-83be-5269533759eb', function(robb)
	holdingupdraw = 0
	holdingup = false
	ESX.ShowNotification(_U('robbery_complete') .. Banks[bank].reward)
	bank = ""
	secondsRemaining = 0
	incircle = false
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if holdingup then
			Citizen.Wait(1000)
			if(secondsRemaining > 0)then
				secondsRemaining = secondsRemaining - 1
			end
		end
	end
end)

Citizen.CreateThread(function()
	for k,v in pairs(Banks)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 431)--156
		SetBlipScale(blip, 0.8)
		SetBlipColour(blip, 75)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('bank_robbery'))
		EndTextCommandSetBlipName(blip)
	end
end)
incircle = false

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(Banks)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if not holdingup then
					DrawMarker(1, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)

					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 1.0)then
						if (incircle == false) then
							DisplayHelpText(_U('press_to_rob') .. v.nameofbank)
						end
						incircle = true
						if IsControlJustReleased(1, 51) then
							if IsPedArmed(PlayerPedId(), 4) then
								TriggerServerEvent('878a06d5-b03b-439d-8a4c-91f7edbf98a2', k)
							else
								ESX.ShowNotification(_U('no_threat'))
							end
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 1.0)then
						incircle = false
					end
				end
			end
		end

		if holdingup then

			drawTxt(0.66, 1.44, 1.0,1.0,0.4, _U('robbery_of') .. secondsRemaining .. _U('seconds_remaining'), 255, 255, 255, 255)

			local pos2 = Banks[bank].position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 7.5)then
				TriggerServerEvent('d9e05f4c-a4a9-4e64-b51a-7b21a9fbe1d9', bank)
			end
		end

		Citizen.Wait(0)
	end
end)

RegisterNetEvent('03b2bbab-0627-475a-8571-3af60579b03f')
AddEventHandler('03b2bbab-0627-475a-8571-3af60579b03f', function(position)
	
while true do
local pos = GetEntityCoords(GetPlayerPed(-1), true)
		if holdingupdraw == 1 then
			DrawMarker(1, position.x, position.y, position.z - 45, 0, 0, 0, 0, 0, 0, 200.0001, 200.0001, 70.5001, 1555, 0, 0,255, 0, 0, 0,0)
				--if(Vdist(pos.x, pos.y, pos.z, position.x, position.y, position.z) < 100)then
					--SetFollowPedCamViewMode(4)
				--end
		end		
			
			Citizen.Wait(0)	
end


	
end)
