ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingCoke    = {}
local PlayersTransformingCoke  = {}
local PlayersSellingCoke       = {}
local PlayersHarvestingMeth    = {}
local PlayersTransformingMeth  = {}
local PlayersSellingMeth       = {}
local PlayersHarvestingWeed    = {}
local PlayersTransformingWeed  = {}
local PlayersSellingWeed       = {}
local PlayersHarvestingOpium   = {}
local PlayersTransformingOpium = {}
local PlayersSellingOpium      = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

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

--coke
local function HarvestCoke(source)

	if CopsConnected < Config.RequiredCopsCoke then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsCoke))
		return
	end

	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingCoke[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local coke = xPlayer.getInventoryItem('coke')

			if coke.limit ~= -1 and coke.count >= coke.limit then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('inv_full_coke'))
			else
				xPlayer.addInventoryItem('coke', 1)
				HarvestCoke(source)
			end

		end
	end)
end

RegisterServerEvent('53bb269c-0e0a-4f48-bb41-54973a4cc32c')
AddEventHandler('53bb269c-0e0a-4f48-bb41-54973a4cc32c', function()

	local _source = source

	PlayersHarvestingCoke[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('pickup_in_prog'))

	HarvestCoke(_source)

end)

RegisterServerEvent('e86d1ba9-7a2d-4abe-86de-e98e71824c0d')
AddEventHandler('e86d1ba9-7a2d-4abe-86de-e98e71824c0d', function()

	local _source = source

	PlayersHarvestingCoke[_source] = false

end)

local function TransformCoke(source)

	if CopsConnected < Config.RequiredCopsCoke then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsCoke))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingCoke[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local cokeQuantity = xPlayer.getInventoryItem('coke').count
			local poochQuantity = xPlayer.getInventoryItem('coke_pooch').count

			if poochQuantity > 99 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('too_many_pouches'))
			elseif cokeQuantity < 5 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('not_enough_coke'))
			else
				xPlayer.removeInventoryItem('coke', 5)
				xPlayer.addInventoryItem('coke_pooch', 1)
			
				TransformCoke(source)
			end

		end
	end)
end

RegisterServerEvent('6e274f33-ab19-4eb6-a1e5-df9b569eddbd')
AddEventHandler('6e274f33-ab19-4eb6-a1e5-df9b569eddbd', function()

	local _source = source

	PlayersTransformingCoke[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('packing_in_prog'))

	TransformCoke(_source)

end)

RegisterServerEvent('a8173673-3818-4c12-843a-2be34e3b6ac0')
AddEventHandler('a8173673-3818-4c12-843a-2be34e3b6ac0', function()

	local _source = source

	PlayersTransformingCoke[_source] = false

end)

local function SellCoke(source)

	if CopsConnected < Config.RequiredCopsCoke then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsCoke))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingCoke[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local poochQuantity = xPlayer.getInventoryItem('coke_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('coke_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 300)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_coke'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 500)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_coke'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 1000)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_coke'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 1400)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_coke'))
				elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 1800)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_coke'))
				elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 2200)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_coke'))
				end
				
				SellCoke(source)
			end

		end
	end)
end

RegisterServerEvent('de775c64-74eb-4a82-89db-f213bca385f7')
AddEventHandler('de775c64-74eb-4a82-89db-f213bca385f7', function()

	local _source = source

	PlayersSellingCoke[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('sale_in_prog'))

	SellCoke(_source)

end)

RegisterServerEvent('127b02d6-dde1-460d-9c73-12502843507f')
AddEventHandler('127b02d6-dde1-460d-9c73-12502843507f', function()

	local _source = source

	PlayersSellingCoke[_source] = false

end)

--meth
local function HarvestMeth(source)

	if CopsConnected < Config.RequiredCopsMeth then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsMeth))
		return
	end
	
	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingMeth[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local meth = xPlayer.getInventoryItem('meth')

			if meth.limit ~= -1 and meth.count >= meth.limit then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('inv_full_meth'))
			else
				xPlayer.addInventoryItem('meth', 1)
				HarvestMeth(source)
			end

		end
	end)
end

RegisterServerEvent('0d9f7189-1617-40bb-9ada-2013c8282876')
AddEventHandler('0d9f7189-1617-40bb-9ada-2013c8282876', function()

	local _source = source

	PlayersHarvestingMeth[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('pickup_in_prog'))

	HarvestMeth(_source)

end)

RegisterServerEvent('93e447a5-2bab-411d-9ddf-1b5e374a0b97')
AddEventHandler('93e447a5-2bab-411d-9ddf-1b5e374a0b97', function()

	local _source = source

	PlayersHarvestingMeth[_source] = false

end)

local function TransformMeth(source)

	if CopsConnected < Config.RequiredCopsMeth then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsMeth))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingMeth[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local methQuantity = xPlayer.getInventoryItem('meth').count
			local poochQuantity = xPlayer.getInventoryItem('meth_pooch').count

			if poochQuantity > 99 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('too_many_pouches'))
			elseif methQuantity < 5 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('not_enough_meth'))
			else
				xPlayer.removeInventoryItem('meth', 5)
				xPlayer.addInventoryItem('meth_pooch', 1)
				
				TransformMeth(source)
			end

		end
	end)
end

RegisterServerEvent('cc23348c-bfb4-47bf-8d7a-85db93056d73')
AddEventHandler('cc23348c-bfb4-47bf-8d7a-85db93056d73', function()

	local _source = source

	PlayersTransformingMeth[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('packing_in_prog'))

	TransformMeth(_source)

end)

RegisterServerEvent('9fe2f64d-6e28-465b-a9a6-b4003f554b7c')
AddEventHandler('9fe2f64d-6e28-465b-a9a6-b4003f554b7c', function()

	local _source = source

	PlayersTransformingMeth[_source] = false

end)

local function SellMeth(source)

	if CopsConnected < Config.RequiredCopsMeth then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsMeth))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingMeth[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local poochQuantity = xPlayer.getInventoryItem('meth_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('meth_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 300)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_meth'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 600)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_meth'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 1100)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_meth'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 1500)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_meth'))
				elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 1900)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_meth'))
				elseif CopsConnected == 5 then
					xPlayer.addAccountMoney('black_money', 2300)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_meth'))
				end
				
				SellMeth(source)
			end

		end
	end)
end

RegisterServerEvent('2f83e36c-0629-40ec-98d6-41221606e1f7')
AddEventHandler('2f83e36c-0629-40ec-98d6-41221606e1f7', function()

	local _source = source

	PlayersSellingMeth[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('sale_in_prog'))

	SellMeth(_source)

end)

RegisterServerEvent('9fa401ed-d8eb-4805-846e-a00ec25606ee')
AddEventHandler('9fa401ed-d8eb-4805-846e-a00ec25606ee', function()

	local _source = source

	PlayersSellingMeth[_source] = false

end)

--weed
local function HarvestWeed(source)

	if CopsConnected < Config.RequiredCopsWeed then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsWeed))
		return
	end

	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingWeed[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local weed = xPlayer.getInventoryItem('weed')

			if weed.limit ~= -1 and weed.count >= weed.limit then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('inv_full_weed'))
			else
				xPlayer.addInventoryItem('weed', 1)
				HarvestWeed(source)
			end

		end
	end)
end

RegisterServerEvent('11c0bb5f-6da4-4762-9901-cfa058fb7e21')
AddEventHandler('11c0bb5f-6da4-4762-9901-cfa058fb7e21', function()

	local _source = source

	PlayersHarvestingWeed[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('pickup_in_prog'))

	HarvestWeed(_source)

end)

RegisterServerEvent('ebb96c89-3e5e-48d1-b44d-d355eb246a23')
AddEventHandler('ebb96c89-3e5e-48d1-b44d-d355eb246a23', function()

	local _source = source

	PlayersHarvestingWeed[_source] = false

end)

local function TransformWeed(source)

	if CopsConnected < Config.RequiredCopsWeed then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsWeed))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingWeed[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)
			local weedQuantity = xPlayer.getInventoryItem('weed').count
			local poochQuantity = xPlayer.getInventoryItem('weed_pooch').count

			if poochQuantity > 99 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('too_many_pouches'))
			elseif weedQuantity < 5 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('not_enough_weed'))
			else
				xPlayer.removeInventoryItem('weed', 5)
				xPlayer.addInventoryItem('weed_pooch', 1)
				
				TransformWeed(source)
			end

		end
	end)
end

RegisterServerEvent('8a099479-c014-4adb-8b67-2193a68057b3')
AddEventHandler('8a099479-c014-4adb-8b67-2193a68057b3', function()

	local _source = source

	PlayersTransformingWeed[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('packing_in_prog'))

	TransformWeed(_source)

end)

RegisterServerEvent('f1a0ecf9-7f52-4774-a4c2-d750db6d7b72')
AddEventHandler('f1a0ecf9-7f52-4774-a4c2-d750db6d7b72', function()

	local _source = source

	PlayersTransformingWeed[_source] = false

end)

local function SellWeed(source)

	if CopsConnected < Config.RequiredCopsWeed then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsWeed))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingWeed[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)

			local poochQuantity = xPlayer.getInventoryItem('weed_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('weed_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 500)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_weed'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 700)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_weed'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 1000)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_weed'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 1300)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_weed'))
				elseif CopsConnected >= 4 then
					xPlayer.addAccountMoney('black_money', 1600)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_weed'))
				elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 1900)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_weed'))
				end
				
				SellWeed(source)
			end

		end
	end)
end

RegisterServerEvent('4a9dbb93-b772-4c38-8a3b-77b6198870a3')
AddEventHandler('4a9dbb93-b772-4c38-8a3b-77b6198870a3', function()

	local _source = source

	PlayersSellingWeed[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('sale_in_prog'))

	SellWeed(_source)

end)

RegisterServerEvent('cf38f277-a69e-42ce-87bb-0c4322ff4b28')
AddEventHandler('cf38f277-a69e-42ce-87bb-0c4322ff4b28', function()

	local _source = source

	PlayersSellingWeed[_source] = false

end)


--opium

local function HarvestOpium(source)

	if CopsConnected < Config.RequiredCopsOpium then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsOpium))
		return
	end

	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingOpium[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local opium = xPlayer.getInventoryItem('opium')

			if opium.limit ~= -1 and opium.count >= opium.limit then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('inv_full_opium'))
			else
				xPlayer.addInventoryItem('opium', 1)
				HarvestOpium(source)
			end

		end
	end)
end

RegisterServerEvent('6c579107-ec2a-4e1f-826a-cff3f94d6dfe')
AddEventHandler('6c579107-ec2a-4e1f-826a-cff3f94d6dfe', function()

	local _source = source

	PlayersHarvestingOpium[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('pickup_in_prog'))

	HarvestOpium(_source)

end)

RegisterServerEvent('07e6a8df-2525-4d49-b14c-eed2524b1f9c')
AddEventHandler('07e6a8df-2525-4d49-b14c-eed2524b1f9c', function()

	local _source = source

	PlayersHarvestingOpium[_source] = false

end)

local function TransformOpium(source)

	if CopsConnected < Config.RequiredCopsOpium then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsOpium))
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingOpium[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)

			local opiumQuantity = xPlayer.getInventoryItem('opium').count
			local poochQuantity = xPlayer.getInventoryItem('opium_pooch').count

			if poochQuantity > 99 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('too_many_pouches'))
			elseif opiumQuantity < 5 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('not_enough_opium'))
			else
				xPlayer.removeInventoryItem('opium', 5)
				xPlayer.addInventoryItem('opium_pooch', 1)
			
				TransformOpium(source)
			end

		end
	end)
end

RegisterServerEvent('ea3b6b53-7633-4fd3-afba-3fa7ab259975')
AddEventHandler('ea3b6b53-7633-4fd3-afba-3fa7ab259975', function()

	local _source = source

	PlayersTransformingOpium[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('packing_in_prog'))

	TransformOpium(_source)

end)

RegisterServerEvent('fe546510-bfd2-4387-bca8-735b75426369')
AddEventHandler('fe546510-bfd2-4387-bca8-735b75426369', function()

	local _source = source

	PlayersTransformingOpium[_source] = false

end)

local function SellOpium(source)

	if CopsConnected < Config.RequiredCopsOpium then
		TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsOpium))
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingOpium[source] == true then

			local _source = source
  			local xPlayer = ESX.GetPlayerFromId(_source)

			local poochQuantity = xPlayer.getInventoryItem('opium_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('opium_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 300)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_opium'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 1000)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_opium'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 1200)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_opium'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 1600)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_opium'))
				elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 2000)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_opium'))
				elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 2400)
					TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', source, _U('sold_one_opium'))
				end
				
				SellOpium(source)
			end

		end
	end)
end

RegisterServerEvent('2b9ac5fc-3325-4611-9644-bb1870a68542')
AddEventHandler('2b9ac5fc-3325-4611-9644-bb1870a68542', function()

	local _source = source

	PlayersSellingOpium[_source] = true

	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('sale_in_prog'))

	SellOpium(_source)

end)

RegisterServerEvent('08d791ff-9a33-4fd1-a2ec-41e546a7225d')
AddEventHandler('08d791ff-9a33-4fd1-a2ec-41e546a7225d', function()

	local _source = source

	PlayersSellingOpium[_source] = false

end)

RegisterServerEvent('d45bba0d-4625-4f8c-b2df-8a2e7afd8c5b')
AddEventHandler('d45bba0d-4625-4f8c-b2df-8a2e7afd8c5b', function(currentZone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('6bcce3cc-deb3-447f-baf8-49ee3c1aeff3', 
		_source, 
		xPlayer.getInventoryItem('coke').count, 
		xPlayer.getInventoryItem('coke_pooch').count,
		xPlayer.getInventoryItem('meth').count, 
		xPlayer.getInventoryItem('meth_pooch').count, 
		xPlayer.getInventoryItem('weed').count, 
		xPlayer.getInventoryItem('weed_pooch').count, 
		xPlayer.getInventoryItem('opium').count, 
		xPlayer.getInventoryItem('opium_pooch').count,
		xPlayer.job.name, 
		currentZone
	)
end)

ESX.RegisterUsableItem('weed', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('weed', 1)

	TriggerClientEvent('55da3dee-0807-484a-8f28-efaed7eccedc', _source)
	TriggerClientEvent('18cb7dc8-52ff-486e-a61e-c50dd8587281', _source, _U('used_one_weed'))
end)
