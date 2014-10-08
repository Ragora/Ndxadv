---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

video = { }
function video.initialize(width, height)
	print("Initializing Video Memory ...")
	video.memory = {}
	for x=0,width do
		video.memory[x] = { }
		for y=0,height do
			video.memory[x][y] = " "
		end
	end
	video.width = width
	video.height = height
end

function video.draw()
	os.execute("clear")
	for y=0, video.height do
		line_string = ""
		for x=0, video.width do
			line_string = line_string .. video.memory[x][y]
		end
		io.write(line_string .. "\r")
	end
end
