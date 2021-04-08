
ACF.RegisterMissileClass("ATGM", {
	Name		= "Anti-Tank Guided Missiles",
	Description	= "Missiles specialized on destroying heavily armored vehicles.",
	Sound		= "acf_missiles/missiles/missile_rocket.mp3",
	Effect		= "Rocket Motor ATGM",
	Spread		= 1,
	Blacklist	= { "AP", "APHE", "HP", "FL", "SM" }
})

ACF.RegisterMissile("AT-3 ASM", "ATGM", {
	Name		= "9M14 Malyutka",
	Description	= "The 9M14 Malyutka (AT-3 Sagger) is a short-range wire-guided anti-tank missile.",
	Model		= "models/missiles/at3.mdl",
	Length		= 86,
	Caliber		= 125,
	Mass		= 11,
	Diameter	= 4.2 * 25.4,
	Year		= 1969,
	ReloadTime	= 10,
	Racks		= { ["1xAT3RKS"] = true, ["1xAT3RK"] = true, ["1xRK_small"] = true, ["4xRK"] = true },
	Navigation  = "Chase",
	Guidance	= { Dumb = true, ["Wire (MCLOS)"] = true, ["Wire (SACLOS)"] = true },
	Fuzes		= { Contact = true, Optical = true },
	SkinIndex	= { HEAT = 0, HE = 1 },
	Agility		= 0.00022,
	ArmDelay	= 0.1,
	Round = {
		Model			= "models/missiles/at3.mdl",
		MaxLength		= 86,
		Armor			= 5,
		ProjLength		= 30,
		PropLength		= 45,
		Thrust			= 4000,     -- in kg*in/s^2
		FuelConsumption = 0.05,     -- in g/s/f
		StarterPercent	= 0.45,
		MaxAgilitySpeed = 70,       -- in m/s
		DragCoef		= 0.01,
		FinMul			= 0.1,
		GLimit          = 10,
		TailFinMul		= 0.01,
		PenMul			= 2.64,
		ActualLength 	= 86,
		ActualWidth		= 12.5
	},
	Preview = {
		FOV = 100,
	},
})

ACF.RegisterMissile("BGM-71E ASM", "ATGM", {
	Name		= "BGM-71E TOW",
	Description	= "The BGM-71E TOW is a medium-range wire guided anti-tank missile.",
	Model		= "models/missiles/bgm_71e.mdl",
	Length		= 117,	-- Length not counting the probe
	Caliber		= 152,
	Mass		= 23,
	Year		= 1970,
	ReloadTime	= 20,
	Offset		= Vector(-17.5, 0, 0),
	Racks		= { ["1x BGM-71E"] = true, ["2x BGM-71E"] = true, ["4x BGM-71E"] = true },
	Guidance	= { Dumb = true, ["Wire (SACLOS)"] = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true, Optical = true },
	Agility		= 0.00018,
	ArmDelay	= 0.1,
	Round = {
		Model			= "models/missiles/bgm_71e.mdl",
		MaxLength		= 117,
		Armor			= 5,
		ProjLength		= 35,
		PropLength		= 35,
		Thrust			= 200000,	-- in kg*in/s^2
		FuelConsumption = 0.027,	-- in g/s/f
		StarterPercent	= 0.2,
		MaxAgilitySpeed = 150,      -- in m/s
		DragCoef		= 0.005,
		FinMul			= 0.1,
		GLimit          = 10,
		TailFinMul		= 0.01,
		PenMul			= 3.86,
		ActualLength 	= 117,
		ActualWidth		= 15.2
	},
	Preview = {
		FOV = 60,
	},
})

ACF.RegisterMissile("AGM-114 ASM", "ATGM", {
	Name		= "AGM-114 Hellfire",
	Description	= "The AGM-114 Hellfire is a heavy air-to-surface missile, used often by American aircraft.",
	Model		= "models/missiles/agm_114.mdl",
	Length		= 160,
	Caliber		= 180,
	Mass		= 49,
	Diameter	= 6.5 * 25.4, -- in mm
	Year		= 1984,
	ReloadTime	= 25,
	Racks		= { ["1xRK"] = true, ["2x AGM-114"] = true, ["4x AGM-114"] = true },
	Guidance	= { Dumb = true, Laser = true, ["Active Radar"] = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true, Optical = true },
	ViewCone	= 40,
	SeekCone	= 10,
	Agility		= 0.0005,
	ArmDelay	= 0.5,
	Bodygroups = {
		guidance = {
			DataSource = function(Entity)
				return Entity.GuidanceData and Entity.GuidanceData.Name
			end,
			Laser = {
				OnRack = "laser.smd",
			},
			["Active Radar"] = {
				OnRack = "radar.smd",
			}
		}
	},
	Round = {
		Model			= "models/missiles/agm_114.mdl",
		MaxLength		= 160,
		Armor			= 5,
		ProjLength		= 50,
		PropLength		= 50,
		Thrust			= 400000,   -- in kg*in/s^2
		FuelConsumption = 0.018,     -- in g/s/f
		StarterPercent	= 0.01,
		MaxAgilitySpeed = 100,      -- in m/s
		DragCoef		= 0.005,
		FinMul			= 0.1,
		GLimit          = 10,
		TailFinMul		= 0.01,
		PenMul			= 3.22,
		ActualLength 	= 160,
		ActualWidth		= 18
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})

ACF.RegisterMissile("Ataka ASM", "ATGM", {
	Name		= "9M120 Ataka",
	Description	= "The 9M120 Ataka (AT-9 Spiral-2) is a heavy air-to-surface missile, used often by soviet helicopters and ground vehicles.",
	Model		= "models/missiles/9m120.mdl",
	Length		= 183,
	Caliber		= 130,
	Mass		= 50,
	Diameter	= 10.9 * 25.4, -- in mm
	Year		= 1984,
	ReloadTime	= 20,
	Racks		= { ["1x Ataka"] = true, ["1xRK"] = true, ["2xRK"] = true, ["4xRK"] = true },
	Guidance	= { Dumb = true, ["Radio (SACLOS)"] = true },
	Navigation  = "Chase",
	Fuzes		= { Contact = true, Optical = true },
	ViewCone	= 45,
	Agility		= 0.0003,
	ArmDelay	= 0.1,
	NoDamage    = true,
	Round = {
		Model			= "models/missiles/9m120.mdl",
		RackModel		= "models/missiles/9m120_rk1.mdl",
		MaxLength		= 183,
		Armor			= 5,
		ProjLength		= 50,
		PropLength		= 100,
		Thrust			= 800000,   -- in kg*in/s^2
		FuelConsumption = 0.03,    -- in g/s/f
		StarterPercent	= 0.02,
		MaxAgilitySpeed = 200,      -- in m/s
		DragCoef		= 0.002,
		FinMul			= 0.1,
		GLimit          = 10,
		TailFinMul		= 0.01,
		PenMul			= 3.09,
		ActualLength 	= 183,
		ActualWidth		= 13
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})

ACF.RegisterMissile("9M113 ASM", "ATGM", {
	Name		= "9M133 Kornet",
	Description	= "The 9M133 Kornet (AT-14 Spriggan) is an extremely powerful antitank missile.",
	Model		= "models/kali/weapons/kornet/parts/9m133 kornet missile.mdl",
	Length		= 120,
	Caliber		= 152,
	Mass		= 27,
	Year		= 1994,
	ReloadTime	= 25,
	ExhaustOffset = Vector(-29.1, 0, 0),
	Racks		= { ["1x Kornet"] = true },
	Guidance	= { Dumb = true, Laser = true },
	Navigation  = "Chase",
	Fuzes		= { Contact = true, Optical = true },
	ViewCone	= 20,
	Agility		= 0.0002,
	ArmDelay	= 0.1,
	Bodygroups = {
		fins = {
			DataSource = function()
				return "Fins"
			end,
			Fins = {
				OnRack = "Fins_Stowed",
				OnLaunch = "Fins_Deployed",
			},
		}
	},
	Round = {
		Model			= "models/kali/weapons/kornet/parts/9m133 kornet missile.mdl",
		MaxLength		= 120,
		Armor			= 5,
		ProjLength		= 40,
		PropLength		= 50,
		Thrust			= 430000,   -- in kg*in/s^2
		FuelConsumption = 0.030,    -- in g/s/f
		StarterPercent	= 0.1,
		MaxAgilitySpeed = 200,      -- in m/s
		DragCoef		= 0.005,
		FinMul			= 0.1,
		GLimit          = 8,
		TailFinMul		= 0.01,
		PenMul			= 3.88,
		ActualLength 	= 120,
		ActualWidth		= 15.2
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})

ACF.RegisterMissile("AT-2 ASM", "ATGM", {
	Name		= "9M17 Fleyta",
	Description	= "The 9M17 Fleyta (AT-2 Sagger) is a powerful radio command medium-range antitank missile, intended for use on helicopters and anti tank vehicles. It has a more powerful warhead and longer range than the AT-3 at the cost of weight and agility.",
	Model		= "models/missiles/at2.mdl",
	Length		= 116,
	Caliber		= 148,
	Mass		= 27,
	Year		= 1969,
	Diameter	= 5.5 * 25.4,
	ReloadTime	= 15,
	Racks		= { ["1xRK"] = true, ["2xRK"] = true },
	Guidance	= { Dumb = true, ["Radio (MCLOS)"] = true, ["Radio (SACLOS)"] = true },
	Navigation  = "Chase",
	Fuzes		= { Contact = true, Optical = true },
	ViewCone	= 90,
	Agility		= 0.0006,
	ArmDelay	= 0.1,
	Round = {
		Model			= "models/missiles/at2.mdl",
		MaxLength		= 116,
		Armor			= 5,
		ProjLength		= 35,
		PropLength		= 35,
		Thrust			= 10000,    -- in kg*in/s^2
		FuelConsumption = 0.035,    -- in g/s/f
		StarterPercent	= 0.50,
		MaxAgilitySpeed = 100,      -- in m/s
		DragCoef		= 0.015,
		FinMul			= 0.1,
		GLimit          = 10,
		TailFinMul		= 0.01,
		PenMul			= math.sqrt(2),
		ActualLength 	= 116,
		ActualWidth		= 14.8
	},
	Preview = {
		FOV = 80,
	},
})
