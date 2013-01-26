require("entity")
require("background")

ASSETS_PATH = "assets/"
bkg = nil

function love.load()
    print("Loading assets")
    local bkgImage = love.graphics.newImage(ASSETS_PATH .. "level_up-16-0.png")
    love.mouse.setVisible(false)
    bkg = Background.create(bkgImage)
    print("Loaded")
end

function love.update(dt)
    bkg:update(dt)
end

function love.keypressed(key, unicode)
end

function love.keyreleased(key, unicode)
end

function love.draw()
    love.graphics.setColor(255, 255, 255, 255)
    -- love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight() )
    bkg:draw()
    love.graphics.print("Hello Party People", 400, 500)
end

