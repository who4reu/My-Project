local Button = script.Parent

-- local BackgroundFrame = Button.Parent
-- This is when u clicked the "Shop" button
local TweenService = game:GetService("TweenService")

local shopFrame = Button.Parent

local mainFramePos = UDim2.new(0, 0, -1, 0)
local mainHoverPos = UDim2.new(0, 0, -0.08, 0)
local mainUnhoverPos = UDim2.new(0, 0, 0, 0)

local shopbackPos = UDim2.new(0.907, 0, 0.006, 0)

local canMove

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

canMove = true

Button.MouseButton1Click:Connect(function()
	canMove = false
	
	ChangePosition(Button.Parent, mainFramePos)
	ChangePosition(Button.Parent.Shop.ShopBack, shopbackPos)
	
	wait(1)
	Button.Text = "Shop"
end)

Button.Parent.Shop.ShopBack.MouseButton1Click:Connect(function()
	canMove = true
end)

Button.MouseEnter:Connect(function()
	if canMove == true then
		if Button.Text == "Shop" then
			ChangePositionOnHover(Button.Parent, mainHoverPos)
			Button.Text = "> Shop"
		end
	end
end)

Button.MouseLeave:Connect(function()
	if canMove == true then
		if Button.Text == "> Shop" then
			ChangePositionOnUnhover(Button.Parent, mainUnhoverPos)
			Button.Text = "Shop"
		end
	end
end)
