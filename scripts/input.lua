---------------------------------------------------------
--	ndxadv
--	An experiment of the Dark Dragon DX
--	Copyright (c) 2012 The Dark Dragon DX
---------------------------------------------------------

if (loadingLibs == nil or loadingLibs == false) then term.clear() term.setCursorPos(1,2) term.write("Just a library file!") return end

Input = { }
Input.KeyPressed = { }
for i = 1, 127 do Input.KeyPressed[i] = false end

function Input.update()
	-- Pull an event
	local event, p1, p2, p3, p4, p5 = os.pullEvent()		
	-- Check key Press events
	if event == "key" then
		if p1 ~= nil then Input.KeyPressed[p1] = true end
		if p2 ~= nil then Input.KeyPressed[p2] = true end
		if p3 ~= nil then Input.KeyPressed[p3] = true end
		if p4 ~= nil then Input.KeyPressed[p4] = true end
		if p5 ~= nil then Input.KeyPressed[p5] = true end
	end

	-- Flip off other keys that were not "toggled" this time around
	for i = 1, 127 do
		-- A large WTF if that works ;D
		if (p1 ~= nil and i ~= p1) or (p2 ~= nil and i ~= p2) or (p3 ~= nil and i ~= p3) or (p4 ~= nil and i ~= p4) or (p5 ~= nil and i ~= p5) then
			Input.KeyPressed[i] = false -- Flip to off after all this checking
		end
	end
end

function Input.keyPressed(id)
	return Input.KeyPressed[id]
end
