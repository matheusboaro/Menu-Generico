require "menu"
function love.load()
	fonte= ("pricedow.ttf")
	ceu=love.graphics.newImage("ceu.jpg")
	facebook=love.graphics.newImage ("facebook.png")
	twitter = love.graphics.newImage ("twitter.png")
	instagram = love.graphics.newImage ("instagram.png")
	love.window.setTitle("Menu generico")
	mus=love.audio.newSource ("mus.mp3", static)
end



function love.update( ... )
	setclick ()
end


function love.draw( ... )
	menu ()
end
