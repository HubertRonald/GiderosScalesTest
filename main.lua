
---------------------------------------------
-- COLOR: RGB TO HEX
---------------------------------------------
function rgb(r, g, b)
	return ((r*256)+g)*256+b
end


---------------------------------------------
-- SET BACKGROUND
---------------------------------------------
application:setBackgroundColor(rgb(0, 0, 0))


---------------------------------------------
-- FIX DIMENSION DEVICE
---------------------------------------------
baseDim = 1 -- select value of 1 or 2



application:setLogicalDimensions(320*baseDim, 480*baseDim)
application:setOrientation(Application.PORTRAIT)
application:setScaleMode("letterbox")

_W, _H = application:getContentWidth(), application:getContentHeight()
Wdx = application:getLogicalTranslateX() / application:getLogicalScaleX()
Hdy = application:getLogicalTranslateY() / application:getLogicalScaleY()

---------------------------------------------
-- TARGET
---------------------------------------------
local sh=100*application:getLogicalScaleX()
local sw=100*application:getLogicalScaleY()
myText = TextField.new(nil, "Device Dimension: Width="..tostring(320*baseDim)..", Hight="..tostring(480*baseDim))
myText:setTextColor(rgb(255,255,255))
myText:setPosition(5*baseDim-Wdx,15*baseDim-Hdy)
myText:setScale(1.25*baseDim)
stage:addChild(myText)

---------------------------------------------
-- DIMENSION W=320, H=480, BLUE
---------------------------------------------
square_BaseDimOne = Bitmap.new(Texture.new("w320_h480/square.png",true))
square_BaseDimOne:setAnchorPoint(.5,.5)
square_BaseDimOne:setPosition(_W*.5,-Hdy+_H*.5-square_BaseDimOne:getHeight()*.5)
TextOne = TextField.new(nil, "Device: Width=320, Hight=480 square "..sw.."x"..sh)
TextOne:setTextColor(rgb(255,255,255))
TextOne:setPosition(5*baseDim-Wdx,square_BaseDimOne:getY()-square_BaseDimOne:getHeight()/1.5)
TextOne:setScale(1.25*baseDim)
stage:addChild(TextOne)

---------------------------------------------
-- DIMENSION W=640, H=960, PURPLE
---------------------------------------------
square_BaseDimTwo = Bitmap.new(Texture.new("w640_h960/square.png",true))
square_BaseDimTwo:setAnchorPoint(.5,.5)
square_BaseDimTwo:setPosition(_W*.5,-Hdy+_H*.5+square_BaseDimTwo:getHeight()*.5)
sw, sh=2*sw, 2*sh
TextTwo = TextField.new(nil, "Device: Width=640, Hight=960 square "..sw.."x"..sh)
TextTwo:setTextColor(rgb(255,255,255))
TextTwo:setPosition(5*baseDim-Wdx,square_BaseDimTwo:getY()+square_BaseDimTwo:getHeight()/1.5)
TextTwo:setScale(1.25*baseDim)
stage:addChild(TextTwo)

stage:addChild(square_BaseDimOne)
stage:addChild(square_BaseDimTwo)
