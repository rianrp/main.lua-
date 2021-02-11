function love.load()
  circle = {}
  mouse = {}
  circle.speed = 250
  mouse.x, mouse.y = love.mouse.getPosition()
  circle.x, circle.y = mouse.x, mouse.y
 end
 
function love.mousepressed(x, y, button)
  if button == 1 then
     mouse.x, mouse.y = x, y
   end
end

function love.update(dt)
  if circle.x < mouse.x then
    circle.x = circle.x + (circle.speed * 2.5 * dt)
    end
    if circle.x > mouse.x then
    circle.x = circle.x - (circle.speed * 2.5 * dt)
    end
    if circle.y < mouse.y then
    circle.y = circle.y + (circle.speed * 2.5 * dt)
    end
    if circle.y > mouse.y then
    circle.y = circle.y - (circle.speed * 2.5 * dt)
    end

end

function love.draw()
   love.graphics.setColor(1,0,0)
   love.graphics.circle("fill", circle.x, circle.y, 50)
end

#coresparaserusadas

--- roxo 1,0,1 
--- branco 1,1,1 
--- ciano 0,1,1 
--- azul 0,0,1 
--- verde 0,1,0 
--- amarelo 1,1,0 
--- vermelho 1,0,0 


