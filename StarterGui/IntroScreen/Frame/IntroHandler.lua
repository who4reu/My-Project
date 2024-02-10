local TweenService = game:GetService("TweenService")
--[[
local frame = script.Parent.Frame
local logo1 = frame.Logo1
local logo2 = frame.Logo2
local logo3 = frame.Logo3]]

-- This all made by me (fahimshiva)
-- I Hope u understand
local logoImg = script.Parent.Logo
local l1 = script.Parent.l1
local l2 = script.Parent.l2

local canMove

local Button = script.Parent.playButton
local mainFrame = script.Parent

function OpenIntro(object, position)
	local tween = TweenService:Create(object, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = position})
	tween:Play()
end

function ChangeTextTransparency(object, value)
	local tween = TweenService:Create(object, TweenInfo.new(1, Enum.EasingStyle.Cubic), {TextTransparency = value})
	tween:Play()
end

function ChangeTextTransparency_2(object, value, duration)
	local tween = TweenService:Create(object, TweenInfo.new(duration, Enum.EasingStyle.Cubic), {TextTransparency = value})
	tween:Play()
end

function ChangeFrameTransparency(object, value)
	local tween = TweenService:Create(object, TweenInfo.new(1, Enum.EasingStyle.Cubic), {BackgroundTransparency = value})
	tween:Play()
end

function ChangeImageTransparency_2(object, value, duration)
	local tween = TweenService:Create(object, TweenInfo.new(duration, Enum.EasingStyle.Cubic), {ImageTransparency = value})
	tween:Play()
end

--[[
l1 = {0.572, 0},{0.437, 0}
l2 = {0.572, 0},{0.49, 0}

]]

local framePos = UDim2.new(0.284, 0 , 0.432, 0)
local l1Pos = UDim2.new(0.572, 0, 0.437, 0)
local l2Pos = UDim2.new(0.572, 0, 0.49, 0)
-- {0.449, 0},{0.648, 0}
local buttonPos = UDim2.new(0.449, 0, 0.68, 0)
local buttonPosdef = UDim2.new(0.449, 0, 1, 0)

local frameHover = UDim2.new(0.389, 0, 0.438, 0)
local l1Hover = UDim2.new(0.427, 0, 0.439, 0)
local l2Hover = UDim2.new(0.4227, 0, 0.492, 0)

-- THe new one
local logoPos = UDim2.new(0.322, 0, 0.098, 0)
local logoDefPos = UDim2.new(0.321, 0, 0.15, 0)
local c1Pos = UDim2.new(0.332, 0, 0.6, 0)
local c2Pos = UDim2.new(0.48, 0, 0.599, 0)

--[[
ChangeTextTransparency_2(logo1, 0, 2.5)
ChangeTextTransparency_2(logo2, 0, 2.5)
ChangeTextTransparency_2(logo3, 0, 2.5)
]]

ChangeImageTransparency_2(logoImg, 0, 2.5)

wait(2.5)

OpenIntro(logoImg, logoPos)
ChangeTextTransparency(l1, 0)
ChangeTextTransparency(l2, 0)

wait(1.5)

OpenIntro(Button, buttonPos)

canMove = true

Button.MouseButton1Click:Connect(function()
	canMove = false
	
	OpenIntro(Button, buttonPosdef)

	l1.Visible = false
	l2.Visible = false

	--ChangeTextTransparency(logo1, 1)
	--ChangeTextTransparency(logo2, 1)
	--ChangeTextTransparency(logo3, 1)
	ChangeTextTransparency(l1, 1)
	ChangeTextTransparency(l2, 1)
	
	ChangeImageTransparency_2(logoImg, 1, 1)
	--ChangeFrameTransparency(frame, 1)

	wait(1)
	ChangeFrameTransparency(mainFrame, 1)
end)



Button.MouseEnter:Connect(function()
	if canMove == true then
		--OpenIntro(frame, frameHover)
		OpenIntro(logoImg, logoDefPos)
		
		ChangeTextTransparency(l1, 1)
		ChangeTextTransparency(l2, 1)
	end
end)

Button.MouseLeave:Connect(function()
	if canMove == true then
		--OpenIntro(frame, framePos)
		OpenIntro(logoImg, logoPos)
		
		ChangeTextTransparency(l1, 0)
		ChangeTextTransparency(l2, 0)
	end
end)
