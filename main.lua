-------------------------------------------------------------------------------------
-- Title: PhysicsAndCollisions
-- Name: John Ngundeng
-- Course: ICS2O/3C
-------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- creating background image 
local backgroundImage = display.newImageRect("Images/bkg.png", 2048, 1536)

-- load physics
local physics = require("physics")

-- start physics 
physics.start()
-------------------------------------------------------------------------------------
-- Objects
-------------------------------------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)

	-- set the x and the y pos 
	ground.x = display.contentCenterX 
	ground.y = display.contentHeight

	-- Change the width to be the same as the screen
	ground.width = display.contentWidth

	-- add to physics 
	physics.addBody(ground, "static",{friction= 0.5, bounce = 0.3})

-------------------------------------------------------------------------------------


-- create a verticle beam 
local beam2 = display.newImage("Images/beam.png", 0, 0)

	-- set the x and y pos 
	beam2.x = display.contentCenterX*1.75
	beam2.y = display.contentCenterY*1.75

	-- set the beam size 
	beam2.width = display.contentWidth/2
	beam2.height = display.contentHeight/10	

	-- rotate the bame -60 degrees so its on an angle 
	beam2:rotate(145)

	-- send it to the back layer
	beam2:toBack()
	

	-- add to physics 
	physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})


----------------------------------------------------------------------------------
-- create a verticle beam 
local beam = display.newImage("Images/beam.png", 0, 0)

	-- set the x and y pos 
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	-- set the beam size 
	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10	

	-- rotate the bame -60 degrees so its on an angle 
	beam:rotate(45)

	-- send it to the back layer
	beam:toBack()
	backgroundImage:toBack()

	-- add to physics 
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------------------------
-- Functions 
------------------------------------------------------------------------------------

-- create the first ball 
local function firstBall()

	local ball1 = display.newImage("Images/DragonBall.png", 0, 0)

	-- adding to physics 
	physics.addBody(ball1, {density=1.0, friction= 0.5, bounce= 0.3, radius=76.5}) 

	-- makes the ball smaller 
	ball1:scale(0.5,0.5)
end 

-----------------------------------------------------------------------------------

local function secondBall()
	-- creating the second ball 
	local ball2 = display.newImage("Images/spaceball.png", 0, 0)

	-- adding to physics 
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius= 149})

	-- make it smaller than the original ball
	ball2:scale(0.4, 0.4)
end 

-----------------------------------------------------------------------------------
-- create the third ball 
local function thirdBall()

	local ball3 = display.newImage("Images/super_ball.png",1000, 0)
	-- adding to physics 
	physics.addBody(ball3, {density=1.0, friction= 0.5, bounce= 0.3, radius=75}) 

	-- makes the ball smaller 
	ball3:scale(3,3)
end 
-----------------------------------------------------------------------------------
-- Timer delays - call each function after the given millisecond 
-----------------------------------------------------------------------------------
timer.performWithDelay(0, firstBall)
timer.performWithDelay(1000,secondBall)
timer.performWithDelay(2000,thirdBall)
