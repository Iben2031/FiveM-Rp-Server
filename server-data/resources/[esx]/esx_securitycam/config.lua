Config                            = {}
Config.DrawDistance               = 100.0

-- Hide HUD
Config.HideRadar       		  = true

-- Animation for the hacking in seconds. 60 = 1 minute / 60 seconds!
Config.AnimTime = 60

-- Language (sv/en)
Config.Locale 			  = 'en'

-- Only enable this if you have pNotify (https://github.com/Nick78111/pNotify)
Config.pNotify = false

-- Only enable if you have mhacking (https://github.com/GHMatti/FiveM-Scripts/tree/master/mhacking)
Config.Hacking = false

-- Connect to the cameras
-- Place: In the polices armory room
Config.Zones = {
	Cameras = {
		Pos   = {x = 454.38, y = -979.35, z = 29.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}

-- Keep these the same
-- Place: Behind the polices desk in the policestation
-- Screenshot: https://i.imgur.com/f5WNrRj.jpg
Config.HackingPolice = {
	HackingPolice = {
		Pos   = {x = 440.17, y = -975.74, z = 29.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}

Config.UnHackPolice = {
	UnHackPolice = {
		Pos   = {x = 440.17, y = -975.74, z = 29.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}
--

-- Keep these the same
-- Place: Down at the bank vault
-- Screenshot: https://i.imgur.com/nvcFUhu.jpg
Config.HackingBank = {
	HackingBank = {
		Pos   = {x = 264.87, y = 219.93, z = 100.68},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}

Config.UnHackBank = {
	UnHackBank = {
		Pos   = {x = 264.87, y = 219.93, z = 100.68},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}
--

-- Cameras. You could add more cameras for other banks, apartments, houses, buildings etc. (Remember the "," after each row, but not on the last row)
Config.Locations = {
    {
	bankCamLabel = {label = "Pacific Standard Bank"},
        bankCameras = {
			{label = "(Main Entrance)", x = 232.86, y = 221.46, z = 107.83, r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = true},
            {label = "(Lobby)", x = 257.45, y = 210.07, z = 109.08, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = true},
            {label = "(Second Entrance)", x = 261.50, y = 218.08, z = 107.95, r = {x = -25.0, y = 0.0, z = -149.49}, canRotate = true},
			{label = "(Staircase To Second Floor)", x = 241.64, y = 233.83, z = 111.48, r = {x = -35.0, y = 0.0, z = 120.46}, canRotate = true},
			{label = "(Staircase Above Bankvault)", x = 269.66, y = 223.67, z = 113.23, r = {x = -30.0, y = 0.0, z = 111.29}, canRotate = true},
            {label = "(Offices Corridor #1)", x = 261.98, y = 217.92, z = 113.25, r = {x = -40.0, y = 0.0, z = -159.49}, canRotate = true},
            {label = "(Offices Corridor #2)", x = 258.44, y = 204.97, z = 113.25, r = {x = -30.0, y = 0.0, z = 10.50}, canRotate = true},
            {label = "(Second Floor #1)", x = 235.53, y = 227.37, z = 113.23, r = {x = -35.0, y = 0.0, z = -160.29}, canRotate = true},
            {label = "(Second Floor #2)", x = 254.72, y = 206.06, z = 113.28, r = {x = -35.0, y = 0.0, z = 44.70}, canRotate = true},
            {label = "(Staircase To Bankvault)", x = 269.89, y = 223.76, z = 106.48, r = {x = -35.0, y = 0.0, z = 112.62}, canRotate = true},
            {label = "(Outside The Bankvault)", x = 252.27, y = 225.52, z = 103.99, r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = true}
        },

	policeCamLabel = {label = "Police Station"},
        policeCameras = {
			{label = "(Parking Lot)", x = 416.744, y = -1009.270, z = 34.08, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = true},
            {label = "(Cell #1)", x = 465.151, y = -994.266, z = 27.23, r = {x = -30.0, y = 0.0, z = 100.29}, canRotate = true},
            {label = "(Cell #2)", x = 465.631, y = -997.777, z = 27.48, r = {x = -35.0, y = 0.0, z = 90.46}, canRotate = true},
            {label = "(Cell #3)", x = 465.544, y = -1001.583, z = 27.1, r = {x = -25.0, y = 0.0, z = 90.01}, canRotate = true},
            {label = "(Polices Parking Lot & Garage)", x = 420.241, y = -1009.010, z = 34.95, r = {x = -25.0, y = 0.0, z = 230.95}, canRotate = true},
            {label = "(Outside Entrance)", x = 433.249, y = -977.786, z = 33.456, r = {x = -40.0, y = 0.0, z = 100.49}, canRotate = true},
            {label = "(Lobby)", x = 449.440, y = -987.639, z = 33.25, r = {x = -30.0, y = 0.0, z = 50.50}, canRotate = true}
        },
		
	bankCamLabel2 = {label = "Fleeca Bank"},
        bankCameras2 = {
			{label = "(Front Entrance)", x = 153.12, y = -1042.16, z = 31.37, r = {x = -25.0, y = 0.0, z = 53.46}, canRotate = true},
            {label = "(Front Entrance 2)", x = 143.93, y = -1040.56, z = 31.37, r = {x = -25.0, y = 0.0, z = 330.8}, canRotate = true},
            {label = "(Bank Vault)", x = 143.33, y = -1042.5, z = 31.37, r = {x = -25.0, y = 0.0, z = 220.36}, canRotate = true},
            {label = "(Bank Vault 2)", x = 144.95, y = -1043.17, z = 31.37, r = {x = -35.0, y = 0.0, z = -160.29}, canRotate = true} 
        },
		
	bankCamLabel3 = {label = "Fleeca Bank (Highway)"},
        bankCameras3 = {
			{label = "(Front Entrance)", x = -2962.29, y = 486.5, z = 17.7, r = {x = -25.0, y = 0.0, z = 166.98}, canRotate = true},
            {label = "(Front Entrance 2)", x = -2960.61, y = 477.29, z = 17.7, r = {x = -25.0, y = 0.0, z = 78.66}, canRotate = true},
            {label = "(Bank Vault)", x = -2959.25, y = 477.27, z = 17.7, r = {x = -25.0, y = 0.0, z = 329.05}, canRotate = true},
            {label = "(Bank Vault 2)", x = -2958.73, y = 478.95, z = 17.7, r = {x = -35.0, y = 0.0, z = 322.71}, canRotate = true}
        },
		
	bankCamLabel4 = {label = "Blaine County Savings"},
        bankCameras4 = {
			{label = "(Front Entrance)", x = -107.9, y = 6462.71, z = 33.63, r = {x = -25.0, y = 0.0, z = 2.48}, canRotate = true},
            {label = "(Front Entrance 2)", x = -115.13, y = 6472.32, z = 33.63, r = {x = -25.0, y = 0.0, z = 219.82}, canRotate = true},
            {label = "(Front Entrance 3)", x = -103.95, y = 6467.66, z = 33.63, r = {x = -25.0, y = 0.0, z = 118.11}, canRotate = true},
            {label = "(Bank Vault)", x = -103.63, y = 6467.98, z = 33.63, r = {x = -25.0, y = 0.0, z = 17.38}, canRotate = true},
            {label = "(Bank Vault 2)", x = -107.14, y = 6476.21, z = 33.63, r = {x = -35.0, y = 0.0, z = 202.47}, canRotate = true},
            {label = "(Bank Vault 3)", x = -104.53, y = 6479.56, z = 33.63, r = {x = -35.0, y = 0.0, z = 170.28}, canRotate = true}  
        },
	}
}
