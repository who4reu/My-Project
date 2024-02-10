-- This is when u clicked "Back" button in Shop frame

local Button = script.Parent

local mainFrame = Button.Parent.Parent

local TweenService = game:GetService("TweenService")

local hoverPosition = UDim2.new(0.022, 0, 0.106, 0)
local unhoverPosition = UDim2.new(-0.204, 0, 0.106, 0)
local clickedPosition = UDim2.new(0, 0, 0, 0)

local shopPos = UDim2.new(0, 0, 0, 0)
local backPos = UDim2.new(1, 0, 0.006, 0)

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

local function ChangePosition(frame, position)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = position})
	-- {0.022, 0},{0.106, 0} On hover
	-- {-0.204, 0},{0.106, 0} No hover
	-- {0.396, 0},{0.106, 0} On clicked
	tween:Play()
end

-- TWEEN SERVICE
local function ChangeButtonPosition(frame, position)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = position})
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
	ChangePosition(mainFrame, shopPos)
	ChangePosition(Button, backPos)
end)
