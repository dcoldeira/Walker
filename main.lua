
local sti = require 'libs/sti'
local anim8 = require 'libs/anim8' -- https://github.com/kikito/anim8
local cam = require "libs/camera"

function love.load()

  
  map = sti("map.lua")
  
  require('player')

  player.img = love.graphics.newImage('assets/peasant.png')

 
  local g = anim8.newGrid(64,64, player.img:getWidth(), player.img:getHeight(),15, 15)
  local idleFrames = g('1-1',3)
  local rightFrames = g('1-9', 4)
  local leftFrames = g('1-9', 2)
  local upFrames = g('1-9', 1)
  local downFrames = g('1-9', 3)

  idleAnimation = anim8.newAnimation(idleFrames, 0.01)
  rightAnimation = anim8.newAnimation(rightFrames, 0.07)
  leftAnimation = anim8.newAnimation(leftFrames, 0.07)
  upAnimation = anim8.newAnimation(upFrames, 0.07)
  downAnimation = anim8.newAnimation(downFrames, 0.07)

  currentAnimation = idleAnimation

  --music = love.audio.newSource('assets/snow.ogg', 'static')
  --music:setLooping(true)
  --music:play()

  cameraFile = require("libs/camera")
  cam = cameraFile(player.x, player.y)

end

function love.update(dt)

  map:update(dt)



end

function love.draw()
  cam:attach()
  
  
  love.graphics.setColor(1, 1, 1)

  local tx = cam.x - player.x
  local ty = cam.y - player.y

  	if tx < 0 then
  		tx = 0
  	end

  	if tx > map.width  * map.tilewidth  - love.graphics.getWidth() then
  		tx = map.width  * map.tilewidth  - love.graphics.getWidth()
  	end

  	if ty > map.height * map.tileheight - love.graphics.getHeight() then
  		ty = map.height * map.tileheight - love.graphics.getHeight()
  	end

  	tx = math.floor(tx) - player.x
  	ty = math.floor(ty) - player.y

  	map:draw(tx, ty, cam.scale, cam.scale)
    cam:lookAt(player.x, player.y)

--https://love2d.org/forums/viewtopic.php?t=84544


  currentAnimation:draw(player.img, player.x, player.y, 0, 1, 1)
  --                    image, x, y, r, sx, sy, ox, oy, kx, ky

  cam:detach()
end
