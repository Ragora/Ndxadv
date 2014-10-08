---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

-- Item table
local items = 
{
	---------------------------------------------------------
	--	Character Specific Items
	--	Certain characters have special items
	---------------------------------------------------------

	-- Stuffed Komodo Dragon
	komodo =
	{
		-- Name
		name = "Stuffed Komodo Dragon",
		-- Description
		description = "A stuffed komodo dragon.",
		-- Weapon Status
		weapon_type = "MELEE", -- For the giggles
		-- Minimum Damage
		damage_min = 0,
		-- Maximum Damage
		damage_max = 0,
		-- Draw Messages
		draw_messages = 
		{
			"You wield a stuffed animal and look like a bafoon.",
			"In your attempt to look badass drawing a stuffed animal, you humiliate yourself.",
			"You hold the stuffed komodo dragon by the tail as if it were a deadly blade."
		},
		 -- Use Messages
		use_messages = 
		{
			"You bonk your target in the head with the stuffed animal.",
			"In your attempt to knock your target out, you humiliate yourself. Good job."
		}
	},

	-- Nyoka's Short sword
	nyoka_short_sword = 
	{
		-- Name
		name = "Nyoka's Short Sword",
		-- Description
		description = "Made from seraded steel, this blade can cut you easily.",
		-- Draw Messages
		draw_messages =
		{
			"You wield the sword of fallen Nyoka.",
			"You pull the sword from its holster, admiring the dangerous blade as you remember that perilous fight .."
		},
		-- Use Messages
		use_messages = 
		{
			"You swing the sword, it moves with ease at your target."
		},

		-- Weapon Status
		weapon_type = "MELEE",
		-- Minimum Damage
		damage_min = 10,
		-- Maximum Damage
		damage_max = 30
	},

	-- Nyoka's Revolver
	nyoka_revolver =
	{
		-- Name
		name = "Nyoka's .44 Magnum",
		-- Description
		description = "A large revolver that fires .44 calibre bullets.",
		-- Draw Messages
		draw_messages = 
		{
			"You wield the magnum at hand.",
			"You remove Nyoka's .44 magnum from its holster."
		},
		-- Use Messages
		use_messages = 
		{
			"You fire the .44 magnum, it has a massive recoil that nearly hits you in the face.",
			"The unexpected recoil scares the living shit out of you, but not more so than its intended target."
		},
		-- Weapon Status
		weapon_type = "RANGED",
		-- Minimum Damage
		damage_min = 50,
		-- Maximum Damage
		damage_max = 70,
		-- Range 
		range = 5 -- Characters
	},
		
	---------------------------------------------------------
	--	Generic Items begin here, they don't belong
	--	to any character in specific.
	---------------------------------------------------------

	-- Generic Short Sword
	short_sword = 
	{
		-- Name
		name = "Short Sword",
		-- Description
		description = "A small sword. Once wielded by a Draakan knight.",
		-- Draw Messages
		draw_messages = 
		{
				"You wield the short sword."
		},
		-- Use Messages
		use_messages = 
		{
				"You swing the short sword."
		},
		-- Weapon Status
		weapon_type = "MELEE",
		-- Minimum Damage
		damage_min = 10,
		-- Maximum Damage
		damage_max = 20
	}
} -- End Group Items

return Items
