--===============================================--===============================================
--= stationary radars based on  https://github.com/DreanorGTA5Mods/StationaryRadar           =
--===============================================--===============================================



ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
	
	
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	
    PlayerData.job = job
end)

local radares_city = {
    {x = 379.68807983398, y = -1048.3527832031, z = 29.250692367554},
    {x = -253.10794067383, y = -630.20385742188, z = 33.002685546875},
	{x = 406.82, y = -851.27, z = 29.34},
	{x = 398.79, y = -1131.89, z = 29.47},
	{x = 501.37, y = -1131.93, z = 29.47},
	{x = 501.89, y = -1257.82, z = 29.33},
	{x = 535.47, y = -1431.9, z = 29.34},
	{x = 460.01, y = -1630.36, z = 29.42},
	{x = 480.49, y = -1647.95, z = 29.33},
	{x = 530.67, y = -1688.34, z = 29.5},
	{x = 466.08, y = -1828.25, z = 28.02},
	{x = 511.88, y = -1901.83, z = 25.5},
	{x = 358.94, y = -1929.58, z = 24.61},
	{x = 524.53, y = -2046.81, z = 27.42},
	{x = 383.63, y = -2174.48, z = 15.14},
	{x = 352.53, y = -2244.3, z = 10.21},
	{x = 332.52, y = -2508.47, z = 5.63},
	{x = 189.08, y = -2554.3, z = 5.91},
	{x = 321.41, y = -1514.44, z = 29.34},
	{x = 178.65, y = -1595.93, z = 29.34},
	{x = 53.17, y = -1674.19, z = 29.3},
	{x = -126.92, y = -1738.04, z = 30.14},
	{x = -122.03, y = -1526.78, z = 34.04},
	{x = 155.13, y = -1397.16, z = 29.3},
	{x = -99.0, y = -1368.24, z = 29.4},
	{x = -233.33, y = -1433.36, z = 31.37},
	{x = 213.12, y = -1130.43, z = 29.33},
	{x = 58.63, y = -1129.67, z = 29.33},
	{x = 106.08, y = -998.46, z = 29.4},
	{x = 173.86, y = -819.74, z = 31.17},
	{x = 253.4, y = -625.41, z = 28.7},
	{x = 353.58, y = -267.02, z = 53.94},
	{x = 511.14, y = 83.88, z = 96.38},
	{x = 361.07, y = 135.7, z = 103.09},
	{x = 230.76, y = -222.49, z = 54.03},
	{x = 103.07, y = -579.48, z = 31.52},
	{x = 34.57, y = -771.63, z = 31.6},
	{x = -31.64, y = -949.06, z = 29.41},
	{x = -100.14, y = -1139.61, z = 25.8},
	{x = -239.59, y = -1430.73, z = 31.35},
	{x = -381.93, y = -1834.46, z = 21.8},
	{x = -276.88, y = -1429.72, z = 31.35},
	{x = -277.11, y = -1140.59, z = 23.08},
	{x = -186.63, y = -892.56, z = 29.34},
	{x = -121.26, y = -712.96, z = 35.01},
	{x = 29.47, y = -281.31, z = 47.76},
	{x = -76.87, y = -109.69, z = 57.87},
	{x = -393.54, y = -1.19, z = 46.94},
	{x = -770.13, y = -110.84, z = 37.87},
	{x = -628.85, y = -371.71, z = 34.81},
	{x = -635.9, y = -659.18, z = 31.72},
	{x = -770.98, y = -1117.09, z = 10.7},
	{x = -1078.04, y = -758.53, z = 19.35},
	{x = -1384.72, y = -391.83, z = 36.69},
	{x = -1564.25, y = -180.66, z = 55.53},
	{x = -1083.06, y = 263.36, z = 63.93},
}

Citizen.CreateThread(function()
    while true do
        Wait(0)
        for k,v in pairs(radares_city) do
            local player = GetPlayerPed(-1)
            local coords = GetEntityCoords(player, true)
            if Vdist2(radares_city[k].x, radares_city[k].y, radares_city[k].z, coords["x"], coords["y"], coords["z"]) < 20 then
				print('player pss cord' .. 'x' .. radares_city[k].x .. 'y' .. radares_city[k].y .. 'z' .. radares_city[k].z)
				print(PlayerData.job.name)
                if PlayerData.job ~= nil and not (PlayerData.job.name == 'police' or PlayerData.job.name == 'ambulance') then
                    checkSpeed()
					
                end
            end
        end
    end
end)

local radares_freeway = {
	{x = 1538.75, y = -1011.75, z = 58.11},
	{x = 1531.64, y = -998.27, z = 58.16},
	{x = 2120.24, y = -574.02, z = 95.45},
	{x = 2130.55, y = -585.48, z = 95.47},
	{x = 2573.5, y = 189.17, z = 99.01},
	{x = 2589.47, y = 183.86, z = 98.22},
	{x = 2203.11, y = 2764.71, z = 45.63},
	{x = 2215.81, y = 2742.67, z = 45.81},
	{x = 2918.25, y = 3900.74, z = 52.21},
	{x = 2813.18, y = 4395.53, z = 49.27},
	{x = 2781.64, y = 4382.07, z = 49.33},
	{x = 2098.13, y = 6101.06, z = 50.79},
	{x = 2068.47, y = 6065.79, z = 49.2},
	{x = 136.27, y = 6524.96, z = 31.64},
	{x = 152.48, y = 6510.56, z = 31.56},
	{x = -671.06, y = 5568.09, z = 38.6},
	{x = -662.99, y = 5550.39, z = 38.5},
	{x = -2576.2, y = 3311.52, z = 13.49},
	{x = -2678.3, y = 2440.3, z = 16.69},
	{x = -2696.1, y = 2443.69, z = 16.69},
	{x = -2975.96, y = 491.57, z = 15.31},
	{x = -2995.44, y = 493.11, z = 15.31},
	{x = -1598.73, y = -753.14, z = 11.43},
	{x = -1598.92, y = -731.23, z = 11.32},
	{x = -519.82, y = -520.41, z = 25.28},
	{x = -519.82, y = -536.25, z = 25.26},
	{x = 64.76, y = -501.64, z = 34.07},
	{x = 49.02, y = -484.03, z = 33.87},
	{x = 994.19, y = -885.99, z = 30.97},
	{x = 983.45, y = -895.27, z = 30.97},
	{x = 1078.32, y = -1597.49, z = 29.3},
	{x = 1092.75, y = -1596.98, z = 29.08},
	{x = 750.05, y = -2627.24, z = 52.21},
	{x = 753.38, y = -2641.03, z = 52.23},
	{x = -376.37, y = -2343.04, z = 63.38},
	{x = -384.58, y = -2354.51, z = 63.38},
	{x = -396.75, y = -1240.0, z = 37.26},
	{x = -413.16, y = -1238.12, z = 37.26},
}

Citizen.CreateThread(function()
    while true do
        Wait(0)
        for k,v in pairs(radares_freeway) do
            local player = GetPlayerPed(-1)
            local coords = GetEntityCoords(player, true)
            if Vdist2(radares_freeway[k].x, radares_freeway[k].y, radares_freeway[k].z, coords["x"], coords["y"], coords["z"]) < 20 then
                if PlayerData.job ~= nil and not (PlayerData.job.name == 'police' or PlayerData.job.name == 'ambulance') then
                    checkSpeed2()
                end
            end
        end
    end
end)

function checkSpeed()
    local pP = GetPlayerPed(-1)
    local speed = GetEntitySpeed(pP)
    local vehicle = GetVehiclePedIsIn(pP, false)
    local driver = GetPedInVehicleSeat(vehicle, -1)
    local plate = GetVehicleNumberPlateText(vehicle)
    local maxspeed = 80.4650
    local mphspeed = math.ceil(speed*2.236936)
	mphspeed = mphspeed*1.609344
	print('mph' .. mphspeed .. 'max of ' .. maxspeed)
	local fineamount = nil
	local finelevel = nil
	local truespeed = mphspeed
    if mphspeed > maxspeed and driver == pP then
        Citizen.Wait(250)
        TriggerServerEvent('fineAmount', mphspeed)
	if truespeed >= 80.4650 and truespeed <= 90 then
	fineamount = Config.Fine
	finelevel = '10km/h Over Limit'
	end
	if truespeed >= 90 and truespeed <= 100 then
	fineamount = Config.Fine2
	finelevel = '20km/h Over Limit'
	end
	if truespeed >= 100 and truespeed <= 110 then
	fineamount = Config.Fine3
	finelevel = '30km/h Over Limit'
	end
	if truespeed > 120 then
	fineamount = Config.Fine4
	finelevel = 'Over Limit 120km/h+'
	end
        exports.pNotify:SetQueueMax("left", 1)
        exports.pNotify:SendNotification({
            text = "<h2><center>Speed Camera</center></h2>" .. "</br>You've been issued a fine for speeding!</br>Plate Number: " .. plate .. "</br>Fine Amount: $" .. fineamount .. "</br>Violation: " .. finelevel .. "</br>Speed Limit: " .. maxspeed .. "</br>Your Speed: " ..mphspeed,
            type = "error",
            timeout = 9500,
            layout = "centerLeft",
            queue = "left"
        })
    end
end

function checkSpeed2()
    local pP = GetPlayerPed(-1)
    local speed = GetEntitySpeed(pP)
    local vehicle = GetVehiclePedIsIn(pP, false)
    local driver = GetPedInVehicleSeat(vehicle, -1)
    local plate = GetVehicleNumberPlateText(vehicle)
    local maxspeed = 120.05
    local mphspeed = math.ceil(speed*2.236936)
		mphspeed = mphspeed*1.609344
	local fineamount = nil
	local finelevel = nil
	local truespeed = mphspeed
    if mphspeed > maxspeed and driver == pP then
        Citizen.Wait(250)
        TriggerServerEvent('fineAmount', mphspeed)
	if truespeed >= 120.05 and truespeed <= 125 then
	fineamount = Config.Fine5
	finelevel = '5km/h Over Limit'
	end
	if truespeed >= 125 and truespeed <= 130 then
	fineamount = Config.Fine6
	finelevel = '10km/h Over Limit'
	end
	if truespeed >= 130 and truespeed <= 135 then
	fineamount = Config.Fine7
	finelevel = '15km/h Over Limit'
	end
	if truespeed > 135 then
	fineamount = Config.Fine8
	finelevel = 'Over Limit 135km/h+'
	end
        exports.pNotify:SetQueueMax("left", 1)
        exports.pNotify:SendNotification({
            text = "<h2><center>Speed Camera</center></h2>" .. "</br>You've been issued a fine for speeding!</br>Plate Number: " .. plate .. "</br>Fine Amount: $" .. fineamount .. "</br>Violation: " .. finelevel .. "</br>Speed Limit: " .. maxspeed .. "</br>Your Speed: " ..mphspeed,
            type = "error",
            timeout = 9500,
            layout = "centerLeft",
            queue = "left"
        })
    end
end

