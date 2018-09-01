-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- Mazo de cartas

local json = require( "json" )  -- Include the Corona JSON library

local cartas = {
  {palo="O", valor=1, img="1o.png"},
  {palo="O", valor=2, img="2o.png"},
  {palo="O", valor=3, img="3o.png"},
  {palo="O", valor=4, img="4o.png"},
  {palo="O", valor=5, img="5o.png"},
  {palo="O", valor=6, img="6o.png"},
  {palo="O", valor=7, img="7o.png"},
  {palo="O", valor=10, img="10o.png"},
  {palo="O", valor=11, img="11o.png"},
  {palo="O", valor=12, img="12o.png"},
  {palo="C", valor=1, img="1c.png"},
  {palo="C", valor=2, img="2c.png"},
  {palo="C", valor=3, img="3c.png"},
  {palo="C", valor=4, img="4c.png"},
  {palo="C", valor=5, img="5c.png"},
  {palo="C", valor=6, img="6c.png"},
  {palo="C", valor=7, img="7c.png"},
  {palo="C", valor=10, img="10c.png"},
  {palo="C", valor=11, img="11c.png"},
  {palo="C", valor=12, img="12c.png"},
  {palo="E", valor=1, img="1e.png"},
  {palo="E", valor=2, img="2e.png"},
  {palo="E", valor=3, img="3e.png"},
  {palo="E", valor=4, img="4e.png"},
  {palo="E", valor=5, img="5e.png"},
  {palo="E", valor=6, img="6e.png"},
  {palo="E", valor=7, img="7e.png"},
  {palo="E", valor=10, img="10e.png"},
  {palo="E", valor=11, img="11e.png"},
  {palo="E", valor=12, img="12e.png"},
  {palo="B", valor=1, img="1b.png"},
  {palo="B", valor=2, img="2b.png"},
  {palo="B", valor=3, img="3b.png"},
  {palo="B", valor=4, img="4b.png"},
  {palo="B", valor=5, img="5b.png"},
  {palo="B", valor=6, img="6b.png"},
  {palo="B", valor=7, img="7b.png"},
  {palo="B", valor=10, img="10b.png"},
  {palo="B", valor=11, img="11b.png"},
  {palo="B", valor=12, img="12b.png"}
}

print( cartas[0], cartas[1] )

--[[
-- Barajar cartas
local function barajar(cartas)
  size = #cartas
    for i = size, 1, -1 do
      local rand = math.random(size)
      cartas[i], cartas[rand] = cartas[rand], cartas[i]
    end
  return cartas
end
]]--
math.randomseed(os.time())

function onObjectTap( event )
  print( "Tap event on: ", event )
  local randomCard = math.random(1, table.getn(cartas))

  local card = table.remove(cartas, randomCard)

  print(card.img)
	local new_pic = display.newImageRect( "Images.xcassets/Cartas/" .. card.img, 128, 128 )
  new_pic.x = display.contentCenterX
  new_pic.y = display.contentCenterY
  return true
end

local pic = display.newImageRect("Images.xcassets/Cartas/mazo.png", 128, 128)
pic.x = display.contentCenterX
pic.y = display.contentCenterY

pic:addEventListener( "tap", onObjectTap )
