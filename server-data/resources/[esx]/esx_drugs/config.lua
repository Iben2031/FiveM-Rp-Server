Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips   = true  --markers visible on the map? (false to hide the markers on the map)

Config.RequiredCopsWeed  = 0
Config.RequiredCopsCoke  = 1
Config.RequiredCopsMeth  = 2
Config.RequiredCopsOpium = 3

Config.TimeToFarm    = 13 * 1000
Config.TimeToProcess = 18 * 1000
Config.TimeToSell    = 18 * 1000

Config.Locale = 'en'

Config.Zones = {
	CokeField =			{x = 2145.9228515625,	y = 4778.8076171875,	z = 40.253701019287,		name = _U('coke_field'),		sprite = 501,	color = 75},
	CokeProcessing =	{x = -458.13967895508,	y = -2278.6174316406,	z = 7.5158290863037,		name = _U('coke_processing'),	sprite = 501,	color = 75},
	CokeDealer =		{x = -1756.1984863281,	y = 427.31674194336,	z =126.68292999268,		name = _U('coke_dealer'),		sprite = 501,	color = 75},
	
	MethField =			{x = 1390.298828125,  y = 3605.0217285156,   z = 38.00956726074,	name = _U('meth_field'),		sprite = 499,	color = 48},
	MethProcessing =	{x = -1147.4151611328, y = 4940.0087890625,   z = 221.00686645508,	name = _U('meth_processing'),	sprite = 499,	color = 48},
	MethDealer =		{x = -63.592178344727,   y = -1224.0709228516,  z = 27.768648147583,		name = _U('meth_dealer'),		sprite = 499,	color = 48},
	
	WeedField =			{x = 2217.125,	y = 5577.5942382813,	z = 52.961572647095,		name = _U('weed_field'),		sprite = 496,	color = 69},
	WeedProcessing =	{x = 29.061386108398,		y = 3666.0380859375,	z = 39.77326965332,		name = _U('weed_processing'),	sprite = 496,	color = 69},
	WeedDealer =		{x = -54.249694824219,	y = -1443.3666992188,	z = 31.068626403809,		name = _U('weed_dealer'),		sprite = 496,	color = 69},
	
	OpiumField =		{x = 1541.784790039,	y = 6335.3999023438,	z = 23.028722381592,		name = _U('opium_field'),		sprite = 51,	color = 64},
	OpiumProcessing =	{x = -7.26499023438,	y = 519.51328125,	z = 173.575107192994,		name = _U('opium_processing'),	sprite = 51,	color = 64},
	OpiumDealer =		{x = 2331.0881347656,	y = 2570.2250976562,	z = 46.681819915772,		name = _U('opium_dealer'),		sprite = 51,	color = 64}
}
