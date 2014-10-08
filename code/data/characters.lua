---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

require("data/items")

-- Character table, this only ever have one instance
characters = 
{
	-- Ragora <3
	ragora = 
	{
		-- Name
		name = "Ragora",
		-- Species
		species = "Red Dragon",
		-- Things happen if you try to kill him :o
		health = -1,
		-- Description
		description = "A harmless red dragon.",
		-- Inventory
		inventory = { Komodo },
		-- Symbol
		symbol = "R",
		-- Hostile Status
		hostile = false, -- If you set this to true, you're a huge idiot.
	},

	-- Nyoka
	Nyoka =
	{
		-- Name
		name = "Nyoka",
		-- Species
		species = "Blue Draakan",
		-- Health
		health = 100,
		-- Description
		description = "A rather dangerous looking Draakan stares back at you.",
		-- Inventory
		inventory = { NyokaShortSword, NyokaRevolver },
		-- Symbol
		symbol = "N",
		-- Hostile Status
		hostile = false, -- You better not piss her off o-o
	}
} -- End Group Characters
