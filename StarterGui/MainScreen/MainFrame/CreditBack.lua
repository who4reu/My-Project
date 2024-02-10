-- This is when u clicked "Back" button on Credit's frame

local Button = script.Parent

local BackgroundFrame = Button.Parent.Parent.Credit

local TweenService = game:GetService("TweenService")

local hoverPosition = UDim2.new(0.022, 0, 0.106, 0)
local unhoverPosition = UDim2.new(-0.204, 0, 0.106, 0)
local clickedPosition = UDim2.new(0.396, 0, 0.106, 0)

local function ChangeHoverPosition(frame)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = hoverPosition})
	-- {0.022, 0},{0.106, 0} On hover
	-- {-0.204, 0},{0.106, 0} No hover
	tween:Play()
end

local function ChangeUnhoverPosition(frame)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = unhoverPosition})
	-- {0.022, 0},{0.106, 0} On hover
	-- {-0.204, 0},{0.106, 0} No hover
	-- {0.396, 0},{0.106, 0} On clicked
	tween:Play()
end

local function ChangePosition(frame)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = clickedPosition})
	-- {0.022, 0},{0.106, 0} On hover
	-- {-0.204, 0},{0.106, 0} No hover
	-- {0.396, 0},{0.106, 0} On clicked
	tween:Play()
end

-- TWEEN SERVICE
local function ChangeMainPosition(frame, position)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = position})
	tween:Play()
end

local function ChangePositionDuration(frame, position, duration)
	local tween = TweenService:Create(frame, TweenInfo.new(duration, Enum.EasingStyle.Cubic), {Position = position})
	tween:Play()
end

local function ChangeTextTrans(frame, transparency)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {TextTransparency = transparency})
	tween:Play()
end

local function ChangeImgTrans(frame, transparency)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {ImageTransparency = transparency})
	tween:Play()
end

-- TWEEN SERVICE

Button.MouseButton1Click:Connect(function()
	-- ChangePosition(BackgroundFrame)
		
	-- UI
	local CreditBtn = Button.Parent.CreditButton
	local NewBtn = Button.Parent.NewButton
	local NextBtn = Button.Parent.NextButton
	
	local Logo = Button.Parent.Logo
	local Update = Button.Parent.Update
		
	-- local TitleTxt = Button.Parent.Title
	-- local TitleImg = Button.Parent.ImageLabel
		
	-- Position
	local CreditPos = UDim2.new(0.217, 0, 0.861, 0)
	local NewPos = UDim2.new(0.41, 0, 0.859, 0)
	local NextPos = UDim2.new(0.602, 0, 0.861, 0)
	local BackPos = UDim2.new(1, 0, 0.105, 0)
	local LogoPos = UDim2.new(0.331, 0, -0.169, 0)
	local UpdatePos = UDim2.new(0.282, 0, 0.427, 0)
		
	-- Moving
	ChangeMainPosition(CreditBtn, CreditPos)
	ChangeMainPosition(NewBtn, NewPos)
	ChangeMainPosition(NextBtn, NextPos)
	ChangeMainPosition(Button, BackPos)
	
	ChangeUnhoverPosition(BackgroundFrame, unhoverPosition)
	
	ChangePositionDuration(Logo, LogoPos, 1.5)
	ChangeMainPosition(Update, UpdatePos)
	
		
	--ChangeTextTrans(TitleTxt, 0)
	--ChangeImgTrans(TitleImg, 0)
end)
