-- this is when you hover or clicked the "about" button inside the gamepasses frame

local Button = script.Parent

local aboutFrame = Button.Parent.Parent.About

local TweenService = game:GetService("TweenService")

local canMove
local poppedUp

local aboutPos = UDim2.new(0.083, 0, 0.646, 0)
local defaboutPos = UDim2.new(0.083, 0, 1, 0)

local function ChangePosition(frame, position)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = position})
	tween:Play()
end

local function ChangePositionOnHover(frame, position)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = position})
	tween:Play()
end

local function ChangePositionOnUnhover(frame, position)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = position})
	tween:Play()
end

poppedUp = false
canMove = true


Button.MouseButton1Click:Connect(function()
	poppedUp = true
	
	if canMove == false then
		ChangePosition(aboutFrame, defaboutPos)
		canMove = true
	else
		ChangePosition(aboutFrame, aboutPos)
		canMove = false
	end
	
	--ChangePosition(aboutFrame, aboutPos)
	--canMove = false
	
end)

Button.MouseEnter:Connect(function()
	if canMove == true then
		ChangePositionOnHover(aboutFrame, aboutPos)
	end
end)

Button.MouseLeave:Connect(function()
	if canMove == true then
		ChangePositionOnUnhover(aboutFrame, defaboutPos)
	end
end)
