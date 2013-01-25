require("entity")

function love.load()
    love.mouse.setVisible(false)
end

function love.update(dt)
end

function love.keypressed(key, unicode)
end

function love.keyreleased( key, unicode )
end

function love.draw()
    love.graphics.setColor(0, 0, 0, 255)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight() )
end

