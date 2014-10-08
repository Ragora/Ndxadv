---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

require("data/characters")
require("data/items")
require("data/people")
require("data/entities")

function get_map_information()
	map = {
		entry = { x=5, y=5 },
		data = {
			-- Top Wall Set
			{
				type = entities.wall,
				position = { x=0, y=0 }
			},
			{
				type = entities.wall,
				position = { x=1, y=0 }
			},
			{
				type = entities.wall,
				position = { x=2, y=0 }
			},
			{
				type = entities.wall,
				position = { x=3, y=0 }
			},
			{
				type = entities.wall,
				position = { x=4, y=0 }
			},
			{
				type = entities.wall,
				position = { x=5, y=0 }
			},
			{
				type = entities.wall,
				position = { x=6, y=0 }
			},
			{
				type = entities.wall,
				position = { x=7, y=0 }
			},
			{
				type = entities.wall,
				position = { x=8, y=0 }
			},
			{
				type = entities.wall,
				position = { x=9, y=0 }
			},
			{
				type = entities.wall,
				position = { x=10, y=0 }
			},
			{
				type = entities.wall,
				position = { x=11, y=0 }
			},
			{
				type = entities.wall,
				position = { x=12, y=0 }
			},
			{
				type = entities.wall,
				position = { x=13, y=0 }
			},
			{
				type = entities.wall,
				position = { x=14, y=0 }
			},
			{
				type = entities.wall,
				position = { x=15, y=0 }
			},
			{
				type = entities.wall,
				position = { x=16, y=0 }
			},
			{
				type = entities.wall,
				position = { x=17, y=0 }
			},
			{
				type = entities.wall,
				position = { x=18, y=0 }
			},
			{
				type = entities.wall,
				position = { x=19, y=0 }
			},
			-- Leftwards Wall Set
			{
				type = entities.wall,
				position = { x=0, y=1 }
			},
			{
				type = entities.wall,
				position = { x=0, y=2 }
			},
			{
				type = entities.wall,
				position = { x=0, y=3 }
			},
			{
				type = entities.wall,
				position = { x=0, y=4 }
			},
			{
				type = entities.wall,
				position = { x=0, y=5 }
			},
			{
				type = entities.wall,
				position = { x=0, y=6 }
			},
			{
				type = entities.wall,
				position = { x=0, y=7 }
			},
			{
				type = entities.wall,
				position = { x=0, y=8 }
			},
			{
				type = entities.wall,
				position = { x=0, y=9 }
			},
			{
				type = entities.wall,
				position = { x=0, y=10 }
			},
			{
				type = entities.wall,
				position = { x=0, y=11 }
			},
			{
				type = entities.wall,
				position = { x=0, y=12 }
			},
			{
				type = entities.wall,
				position = { x=0, y=13 }
			},
			{
				type = entities.wall,
				position = { x=0, y=14 }
			},
			{
				type = entities.wall,
				position = { x=0, y=15 }
			},
			{
				type = entities.wall,
				position = { x=0, y=16 }
			},
			-- Bottom Wall Set
			{
				type = entities.wall,
				position = { x=0, y=17 }
			},
			{
				type = entities.wall,
				position = { x=1, y=17 }
			},
			{
				type = entities.wall,
				position = { x=2, y=17 }
			},
			{
				type = entities.wall,
				position = { x=3, y=17 }
			},
			{
				type = entities.wall,
				position = { x=4, y=17 }
			},
			{
				type = entities.wall,
				position = { x=5, y=17 }
			},
			{
				type = entities.wall,
				position = { x=6, y=17 }
			},
			{
				type = entities.wall,
				position = { x=7, y=17 }
			},
			{
				type = entities.wall,
				position = { x=8, y=17 }
			},
			{
				type = entities.wall,
				position = { x=9, y=17 }
			},
			{
				type = entities.wall,
				position = { x=10, y=17 }
			},
			{
				type = entities.wall,
				position = { x=11, y=17 }
			},
			{
				type = entities.wall,
				position = { x=12, y=17 }
			},
			{
				type = entities.wall,
				position = { x=13, y=17 }
			},
			{
				type = entities.wall,
				position = { x=14, y=17 }
			},
			{
				type = entities.wall,
				position = { x=15, y=17 }
			},
			{
				type = entities.wall,
				position = { x=16, y=17 }
			},
			{
				type = entities.wall,
				position = { x=17, y=17 }
			},
			{
				type = entities.wall,
				position = { x=18, y=17 }
			},
			{
				type = entities.wall,
				position = { x=19, y=17 }
			},
			-- Right Wall Set
			{
				type = entities.wall,
				position = { x=19, y=0 }
			},
			{
				type = entities.wall,
				position = { x=19, y=1 }
			},
			{
				type = entities.wall,
				position = { x=19, y=2 }
			},
			{
				type = entities.wall,
				position = { x=19, y=3 }
			},
			{
				type = entities.wall,
				position = { x=19, y=4 }
			},
			{
				type = entities.wall,
				position = { x=19, y=5 }
			},
			{
				type = entities.wall,
				position = { x=19, y=6 }
			},
			{
				type = entities.wall,
				position = { x=19, y=7 }
			},
			{
				type = entities.wall,
				position = { x=19, y=8 }
			},
			{
				type = entities.wall,
				position = { x=19, y=9 }
			},
			{
				type = entities.wall,
				position = { x=19, y=10 }
			},
			{
				type = entities.wall,
				position = { x=19, y=11 }
			},
			{
				type = entities.wall,
				position = { x=19, y=12 }
			},
			{
				type = entities.wall,
				position = { x=19, y=13 }
			},
			{
				type = entities.wall,
				position = { x=19, y=14 }
			},
			{
				type = entities.wall,
				position = { x=19, y=15 }
			},
			-- Try that small tunnel shit (top)
			{
				type = entities.wall,
				position = { x=20, y=15 }
			},
			{
				type = entities.wall,
				position = { x=21, y=15 }
			},
			{
				type = entities.wall,
				position = { x=22, y=15 }
			},
			{
				type = entities.wall,
				position = { x=23, y=15 }
			},
			{
				type = entities.wall,
				position = { x=24, y=15 }
			},
			-- Bottom of tunnel
			{
				type = entities.wall,
				position = { x=20, y=17 }
			},
			{
				type = entities.wall,
				position = { x=21, y=17 }
			},
			{
				type = entities.wall,
				position = { x=22, y=17 }
			},
			{
				type = entities.wall,
				position = { x=23, y=17 }
			},
			{
				type = entities.wall,
				position = { x=24, y=17 }
			},
			-- Cap it off
			{
				type = entities.wall,
				position = { x=24, y=16 }
			},
		}
	}
	return map
end
