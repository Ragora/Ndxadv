---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

---------------------------------------------------------
--	Game information Settings
---------------------------------------------------------
game_info = 
{
	-- Game Name
	Name = "ndxadv",
	-- Display name
	display_name = "ndxadv Copyright (c) 2012 The DarkDragonDX",
	-- Author
	author = "DarkDragonDX"
}
		
---------------------------------------------------------
--	Control Configuration Settings
--	Change these settings for your needs
--	Though I don't necessarily see why you'd need to
---------------------------------------------------------
game_controls = 
{
	-- The button for moving up once
	move_up = 119,
	-- The button for moving down once
	move_down = 115,
	-- The button for moving left once
	move_left = 97,
	-- The button for moving right once
	move_right = 100,
	-- The button for ending the game
	end_game = 113
}

---------------------------------------------------------
--	Character Configuration Settings
--	Change these settings for your needs!
---------------------------------------------------------
player_settings = 
{
	-- Name
	name = "Character",
	-- Species
	species = "Draakan",
	-- Starting Health
	health = 100,
	-- Starting Inventory
	inventory = { },
	-- Staring Money
	money = 100, -- Some gold
	-- Symbol
	symbol = "C"
}

---------------------------------------------------------
--	Game Configuration Settings
--	Change these settings for your needs
--	Note: Any map data that attempts to write
--	out of the world width and height will
--	cause the game to halt from a Lua exception.
---------------------------------------------------------
system_settings =
{
	-- The Size of the notification area at the bottom
	-- of the screen (in lines)
	notification_area_size = 3,
	-- The World Width (in characters)
	world_width = 500,
	-- The world height (in characters)
	world_height = 500
}

