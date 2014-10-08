---------------------------------------------------------
--	ndxadv
--	Copyright (c) 2012 Robert MacGregor
---------------------------------------------------------

timer = { }
timer.database = { }

-- Timer update function (call it every frame!)
function timer.update()
	-- Check if it's a timer event
	if  event == "timer" then
		-- Iterate our database
		for i,v in ipairs(Timer.database) do
			v.Function(unpack(v.Arguments))
			table.remove(Timer.database, i) -- Remove the entry from the database
			return -- Apparently Lua has no continue so we must wait until the next pass (as far as I know)
		end
	end
end

-- Timer schedule function
function timer.schedule(timeSeconds, functionName, ...)
	local Args = { }
	-- Iterate through all of our arguments and slap into a table
	for i,v in ipairs(arg) do
		table.insert(Args, v)
	end

	-- Do an iterative search for a free ID
	local Id = 0 -- Start at Zero
	local foundID = false
	while foundID ~= true do -- Run the actual loop until freeID is true
		foundID = true -- Used to signal that we found a free ID
		for i,v in ipairs(Timer.database) do
			-- If we found an Id in use, set foundID to false until the next iteration
			if v.ID == Id then foundID = false break end
		end -- end For loop
		-- The ID was not free, increment the ID to try 
		if foundID == false then Id = Id + 1 
		else break end -- Break the loop
	end -- End while loop

	-- Construct our entry
	local Entry = { Function = functionName, Timer = os.startTimer(timeSeconds), Arguments = Args, ID = Id }
	-- Add our entry to the database
	table.insert(Timer.database, Entry)
	-- Return the count as our ID
	return Id
end

-- Timer Cancel function
function timer.cancel(ID)
	if (ID > table.getn(Timer.database) or ID < 1) then return false end
	table.remove(Timer.database, ID)
	return true
end
