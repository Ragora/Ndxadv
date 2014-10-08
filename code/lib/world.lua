---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

require("data/characters")
require("data/entities")
require("data/items")
require("data/people")

world = { }

function world.initialize(width, height)
	print("Initialising World Memory ...")
	for x=0,width do
		world[x] = {}
		for y=0,height do
			world[x][y] = nil
		end
	end
	world.character_position = { x=0, y=0 }
end

function world.load(file)
	dofile("./data/world/" .. file)
	info = get_map_information()
	world.character_position = info.entry
	for index, entity in pairs(info.data) do
		video.memory[entity.position.x][entity.position.y] = entity.type.symbol
		world[entity.position.x][entity.position.y] = entity.type
	end
end

function world.update()

end
