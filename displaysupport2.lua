local VirtualInputManager = game:GetService("VirtualInputManager")
--// CLICK FUNCTION
local function click(x, y)

	VirtualInputManager:SendMouseButtonEvent(
		x,
		y,
		0,
		true,
		game,
		0
	)

	task.wait(0.05)

	VirtualInputManager:SendMouseButtonEvent(
		x,
		y,
		0,
		false,
		game,
		0
	)
end


--  (WANTED AUTOFARM EXIT MENU CLICKS FOR DIFFERENT SCREEN SIZES)
-- click(100,100) // click(X,Y)
click(133,1213)
click(147,1310)
