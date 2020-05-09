
local img, playerAnimation

player = {}
player.x = 600
player.y = 344
player.img = 0
player.speed = 100

function love.update(dt)
  if (love.keyboard.isDown('d')) then
    currentAnimation = rightAnimation
    player.x = player.x + player.speed * dt
  end

  if (love.keyboard.isDown('w')) then
    currentAnimation = upAnimation
    player.y = player.y - player.speed * dt
  end

  if (love.keyboard.isDown('s')) then
    currentAnimation = downAnimation
    player.y = player.y + player.speed * dt
  end


  if (love.keyboard.isDown('a')) then
    currentAnimation = leftAnimation
    player.x = player.x - player.speed * dt
  end
  if ((love.keyboard.isDown('a')) and (love.keyboard.isDown('d')) and (love.keyboard.isDown('w') and (love.keyboard.isDown('s')))) then
    currentAnimation = idleAnimation
  end
  currentAnimation:update(dt)
end

function love.keyreleased(key)
  if key == ('d') or key == 'a' or key == 'w' or key == 's' then
    currentAnimation = idleAnimation
    idleAnimation:gotoFrame(1)
  end
end
