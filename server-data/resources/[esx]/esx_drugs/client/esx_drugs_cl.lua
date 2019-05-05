local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local cokeQTE       			= 0
ESX 			    			= nil
local coke_poochQTE 			= 0
local weedQTE					= 0
local weed_poochQTE 			= 0
local methQTE					= 0
local meth_poochQTE 			= 0
local opiumQTE					= 0
local opium_poochQTE 			= 0
local myJob 					= nil
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local isInZone                  = false
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('c32138a4-827a-48a4-b2f5-b6a1f48faf07', function(zone)
	if myJob == 'police' or myJob == 'ambulance' or myJob == 'mecano' or myJob == 'taxi' or myJob == 'oranger2' or myJob == 'oranger3' then
		return
	end

	ESX.UI.Menu.CloseAll()
	
	if zone == 'exitMarker' then
		CurrentAction     = zone
		CurrentActionMsg  = _U('exit_marker')
		CurrentActionData = {}
	end
	
	if zone == 'CokeField' then
		CurrentAction     = zone
		CurrentActionMsg  = _U('press_collect_coke')
		CurrentActionData = {}
	end

	if zone == 'CokeProcessing' then
		if cokeQTE >= 5 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_process_coke')
			CurrentActionData = {}
		end
	end

	if zone == 'CokeDealer' then
		if coke_poochQTE >= 1 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_sell_coke')
			CurrentActionData = {}
		end
	end

	if zone == 'MethField' then
		CurrentAction     = zone
		CurrentActionMsg  = _U('press_collect_meth')
		CurrentActionData = {}
	end

	if zone == 'MethProcessing' then
		if methQTE >= 5 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_process_meth')
			CurrentActionData = {}
		end
	end

	if zone == 'MethDealer' then
		if meth_poochQTE >= 1 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_sell_meth')
			CurrentActionData = {}
		end
	end

	if zone == 'WeedField' then
		CurrentAction     = zone
		CurrentActionMsg  = _U('press_collect_weed')
		CurrentActionData = {}
	end

	if zone == 'WeedProcessing' then
		if weedQTE >= 5 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_process_weed')
			CurrentActionData = {}
		end
	end

	if zone == 'WeedDealer' then
		if weed_poochQTE >= 1 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_sell_weed')
			CurrentActionData = {}
		end
	end

	if zone == 'OpiumField' then
		CurrentAction     = zone
		CurrentActionMsg  = _U('press_collect_opium')
		CurrentActionData = {}
	end

	if zone == 'OpiumProcessing' then
		if opiumQTE >= 5 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_process_opium')
			CurrentActionData = {}
		end
	end

	if zone == 'OpiumDealer' then
		if opium_poochQTE >= 1 then
			CurrentAction     = zone
			CurrentActionMsg  = _U('press_sell_opium')
			CurrentActionData = {}
		end
	end
end)

AddEventHandler('93884608-362a-43f8-84fa-f732ff0af218', function(zone)
	CurrentAction = nil
	ESX.UI.Menu.CloseAll()

	TriggerServerEvent('e86d1ba9-7a2d-4abe-86de-e98e71824c0d')
	TriggerServerEvent('a8173673-3818-4c12-843a-2be34e3b6ac0')
	TriggerServerEvent('127b02d6-dde1-460d-9c73-12502843507f')
	TriggerServerEvent('93e447a5-2bab-411d-9ddf-1b5e374a0b97')
	TriggerServerEvent('9fe2f64d-6e28-465b-a9a6-b4003f554b7c')
	TriggerServerEvent('9fa401ed-d8eb-4805-846e-a00ec25606ee')
	TriggerServerEvent('ebb96c89-3e5e-48d1-b44d-d355eb246a23')
	TriggerServerEvent('f1a0ecf9-7f52-4774-a4c2-d750db6d7b72')
	TriggerServerEvent('cf38f277-a69e-42ce-87bb-0c4322ff4b28')
	TriggerServerEvent('07e6a8df-2525-4d49-b14c-eed2524b1f9c')
	TriggerServerEvent('fe546510-bfd2-4387-bca8-735b75426369')
	TriggerServerEvent('08d791ff-9a33-4fd1-a2ec-41e546a7225d')
end)

-- Weed Effect
RegisterNetEvent('55da3dee-0807-484a-8f28-efaed7eccedc')
AddEventHandler('55da3dee-0807-484a-8f28-efaed7eccedc', function()
	RequestAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK")
	while not HasAnimSetLoaded("MOVE_M@DRUNK@SLIGHTLYDRUNK") do
		Citizen.Wait(0)
	end
	TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_SMOKING_POT", 0, true)
	Citizen.Wait(5000)
	DoScreenFadeOut(1000)
	Citizen.Wait(1000)
	ClearPedTasksImmediately(GetPlayerPed(-1))
	SetTimecycleModifier("spectator5")
	SetPedMotionBlur(GetPlayerPed(-1), true)
	SetPedMovementClipset(GetPlayerPed(-1), "MOVE_M@DRUNK@SLIGHTLYDRUNK", true)
	SetPedIsDrunk(GetPlayerPed(-1), true)
	DoScreenFadeIn(1000)
	Citizen.Wait(600000)
	DoScreenFadeOut(1000)
	Citizen.Wait(1000)
	DoScreenFadeIn(1000)
	ClearTimecycleModifier()
	ResetScenarioTypesEnabled()
	ResetPedMovementClipset(GetPlayerPed(-1), 0)
	SetPedIsDrunk(GetPlayerPed(-1), false)
	SetPedMotionBlur(GetPlayerPed(-1), false)
end)

-- Render markers
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		local coords = GetEntityCoords(GetPlayerPed(-1))

		for k,v in pairs(Config.Zones) do
			if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.DrawDistance) then
				DrawMarker(Config.MarkerType, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
			end
		end

	end
end)

if Config.ShowBlips then
	-- Create blips
	Citizen.CreateThread(function()
		for k,v in pairs(Config.Zones) do
			local blip = AddBlipForCoord(v.x, v.y, v.z)

			SetBlipSprite (blip, v.sprite)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, 0.9)
			SetBlipColour (blip, v.color)
			SetBlipAsShortRange(blip, true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.name)
			EndTextCommandSetBlipName(blip)
		end
	end)
end


-- RETURN NUMBER OF ITEMS FROM SERVER
RegisterNetEvent('6bcce3cc-deb3-447f-baf8-49ee3c1aeff3')
AddEventHandler('6bcce3cc-deb3-447f-baf8-49ee3c1aeff3', function(cokeNbr, cokepNbr, methNbr, methpNbr, weedNbr, weedpNbr, opiumNbr, opiumpNbr, jobName, currentZone)
	cokeQTE	   = cokeNbr
	coke_poochQTE = cokepNbr
	methQTE 	  = methNbr
	meth_poochQTE = methpNbr
	weedQTE 	  = weedNbr
	weed_poochQTE = weedpNbr
	opiumQTE	   = opiumNbr
	opium_poochQTE = opiumpNbr
	myJob		 = jobName
	TriggerEvent('c32138a4-827a-48a4-b2f5-b6a1f48faf07', currentZone)
end)

-- Activate menu when player is inside marker
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		local coords      = GetEntityCoords(GetPlayerPed(-1))
		local isInMarker  = false
		local currentZone = nil

		for k,v in pairs(Config.Zones) do
			if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.ZoneSize.x / 2) then
				isInMarker  = true
				currentZone = k
			end
		end

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
			lastZone				= currentZone
			TriggerServerEvent('d45bba0d-4625-4f8c-b2df-8a2e7afd8c5b', currentZone)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('93884608-362a-43f8-84fa-f732ff0af218', lastZone)
		end

		if isInMarker and isInZone then
			TriggerEvent('c32138a4-827a-48a4-b2f5-b6a1f48faf07', 'exitMarker')
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if CurrentAction ~= nil then
			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)
			if IsControlJustReleased(0, Keys['E']) and IsPedOnFoot(PlayerPedId()) then
				isInZone = false -- unless we set this boolean to false, we will always freeze the user
				if CurrentAction == 'exitMarker' then
					isInZone = false -- do not freeze user
					TriggerEvent('c26e9886-8427-4fa7-96a3-c74dad51923d', false)
					TriggerEvent('93884608-362a-43f8-84fa-f732ff0af218', lastZone)
					Citizen.Wait(15000)
				elseif CurrentAction == 'CokeField' then
					TriggerServerEvent('53bb269c-0e0a-4f48-bb41-54973a4cc32c')
				elseif CurrentAction == 'CokeProcessing' then
					TriggerServerEvent('6e274f33-ab19-4eb6-a1e5-df9b569eddbd')
				elseif CurrentAction == 'CokeDealer' then
					TriggerServerEvent('de775c64-74eb-4a82-89db-f213bca385f7')
				elseif CurrentAction == 'MethField' then
					TriggerServerEvent('0d9f7189-1617-40bb-9ada-2013c8282876')
				elseif CurrentAction == 'MethProcessing' then
					TriggerServerEvent('cc23348c-bfb4-47bf-8d7a-85db93056d73')
				elseif CurrentAction == 'MethDealer' then
					TriggerServerEvent('2f83e36c-0629-40ec-98d6-41221606e1f7')
				elseif CurrentAction == 'WeedField' then
					TriggerServerEvent('11c0bb5f-6da4-4762-9901-cfa058fb7e21')
				elseif CurrentAction == 'WeedProcessing' then
					TriggerServerEvent('8a099479-c014-4adb-8b67-2193a68057b3')
				elseif CurrentAction == 'WeedDealer' then
					TriggerServerEvent('4a9dbb93-b772-4c38-8a3b-77b6198870a3')
				elseif CurrentAction == 'OpiumField' then
					TriggerServerEvent('6c579107-ec2a-4e1f-826a-cff3f94d6dfe')
				elseif CurrentAction == 'OpiumProcessing' then
					TriggerServerEvent('ea3b6b53-7633-4fd3-afba-3fa7ab259975')
				elseif CurrentAction == 'OpiumDealer' then
					TriggerServerEvent('2b9ac5fc-3325-4611-9644-bb1870a68542')
				else
					isInZone = false -- not a esx_drugs zone
				end
				
				if isInZone then
					TriggerEvent('c26e9886-8427-4fa7-96a3-c74dad51923d', true)
				end
				
				CurrentAction = nil
			end
		end
	end
end)

RegisterNetEvent('c26e9886-8427-4fa7-96a3-c74dad51923d')
AddEventHandler('c26e9886-8427-4fa7-96a3-c74dad51923d', function(freeze)
	FreezeEntityPosition(GetPlayerPed(-1), freeze)
end)
