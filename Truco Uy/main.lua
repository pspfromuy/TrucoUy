-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

print ("que tal")
math.randomseed(os.time())
local picWidth = 64
local pic = display.newImageRect( "Icon.png", picWidth, 64 )

pic.x = display.contentCenterX
pic.y = display.contentCenterY

pic.name = "icon"
 
local function onObjectTap( event )
    print( "Tap event on: " .. event.target.name )
	
	local new_pic = display.newImageRect( "Icon-xxxhdpi.png", 128, 128 )
	new_pic.x = math.random(0,1080)
	new_pic.y = math.random(0,1920)
    return true
end

pic:addEventListener( "tap", onObjectTap )