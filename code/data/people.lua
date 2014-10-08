---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

-- People table, generic interactive characters/objects
people = 
{
	-- Generic Draakan
	draakan = 
	{
		-- Name
		name = "Some Draakan",
		-- Species
		species = "Draakan",
		-- Health
		health = 100,
		-- Description
		description = "A Draakan, whom of which you do not recognise.",
		-- Inventory
		inventory = { },
		-- Symbol
		symbol = "D",
		-- Hostile Status
		hostile = false
	},

	-- Draakan Knight
	draakan_knight =
	{
		-- Name
		name = "Draakan Knight",
		-- Species
		species = "Draakan",
		-- Health
		health = 200, -- Armor
		-- Description
		description = "A heavily armored Draakan.",
		-- Inventory
		inventory = { ShortSword },
		-- Symbol
		symbol = "K",
		-- Hostile Status
		hostile = false
	}
} -- End Group People

---------------------------------------------------------
--	Scripting for Generic Draakan
---------------------------------------------------------

-- Called every frame
function people.draakan.update()
end

-- Called when something decides to pass through
function people.draakan.on_passed(other)
end

-- Called when the person dies
function people.draakan.on_death()
end

-- Called when this character has to draw itself
function people.draakan.draw()
end

-- Not necessarily required.
function people.draakan.on_create()
end

---------------------------------------------------------
--	Scripting for Draakan Knight
---------------------------------------------------------

-- Called every frame
function people.draakan_knight.update()
end

-- Called when something decides to pass through
function people.draakan_knight.on_passed(other)
end

-- Called when the person dies
function people.draakan_knight.on_death()
end

-- Called when this character has to draw itself
function people.draakan_knight.draw()
end

-- Not necessarily required.
function people.draakan_knight.on_create()
end

---------------------------------------------------------
--	Scriplet function for creating people
--	Instances. IE: Do not touch :)
---------------------------------------------------------
function createPerson(Name)
	-- Return false showing something is wrong
	if People[Name] == nil then return false end
	-- Create the new character
	local nChar = 
	{
		-- Set the name
		Name = People[Name].Name,
		-- Set the species
		Species = People[Name].Species,
		-- Set the Health
		Health = People[Name].Health,
		-- Set the Description
		Description = People[Name].Description,
		-- Set the inventory
		Inventory = People[Name].Inventory,
		-- Set the symbol
		Symbol = People[Name].Symbol,
		-- Set the hostility status
		Hostile = People[Name].Hostile,
		-- Set the position
		Position = { X = 0, Y = 0 },

		-- Copy over functions
		update = People[Name].update,
		onPassed = People[Name].onPassed,
		onDeath = People[Name].onDeath,
		draw = People[Name].draw,
		onCreate = People[Name].onCreate
	}

	if nChar.onCreate ~= nil then nChar.onCreate() end
	return nChar
end
	
