---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

require "kb"
require("lib/video")
require("lib/world")
require("data/config")

game = { running = true }

function game.initialize()
	video.initialize(80,20)
	world.initialize(system_settings.world_width, system_settings.world_height, video)
	world.load("test.lua")

	print(game_info.display_name)
	os.execute("clear")

	world.update(0)
	video.draw()

	while game.running ~= false do
		game.update()
	end
end

function game.update()
	world.update()
	video.draw()
	key = kb.getch()
	video.memory[world.character_position.x][world.character_position.y] = " "

	if (key == game_controls.end_game) then
		game.running = false
	elseif (key == game_controls.move_up) then
		x, y = world.character_position.x, world.character_position.y-1
		next_slot = world[x][y]
		if (next_slot == nil or next_slot.passable == true) then
			world.character_position = { x=x, y=y }
		end
	elseif (key == game_controls.move_down) then
		x, y = world.character_position.x, world.character_position.y+1
		next_slot = world[x][y]
		if (next_slot == nil or next_slot.passable == true) then
			world.character_position = { x=x, y=y }
		end
	elseif (key == game_controls.move_left) then
		x, y = world.character_position.x-1, world.character_position.y
		next_slot = world[x][y]
		if (next_slot == nil or next_slot.passable == true) then
			world.character_position = { x=x, y=y }
		end
	elseif (key == game_controls.move_right) then
		x, y = world.character_position.x+1, world.character_position.y
		next_slot = world[x][y]
		if (next_slot == nil or next_slot.passable == true) then
			world.character_position = { x=x, y=y }
		end
	end

	video.memory[world.character_position.x][world.character_position.y] = player_settings.symbol
end
