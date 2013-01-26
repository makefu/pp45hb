Background = {}
Background.__index = Background

function Background.create(image)
    local background = {}
    setmetatable(background, Background)

    background.image = image
    background.x = 0
    background.y = 0
    return background
end

function Background:update(dt)
    self.x = self.x - 1
end

function Background:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, 1, 1)
end
