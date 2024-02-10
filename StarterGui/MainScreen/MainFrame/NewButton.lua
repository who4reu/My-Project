--[[
local TweenService = game:GetService("TweenService")

local Frame = script.Parent.Parent.Parent:WaitForChild("MainFrame")

script.Parent.MouseEnter:Connect(function()
	script.Parent.Text = "> New Game"
	local tween = TweenService:Create(Frame, TweenInfo.new(1 ,Enum.EasingStyle.Linear), {Frame.BackgroundTransparency == 0.5 })
	tween:Play()
end)

script.Parent.MouseLeave:Connect(function()
	script.Parent.Text = "New Game"
end)
]]

-- This is when you click "Continue" button

local Button = script.Parent

local BackgroundFrame = Button.Parent

local TweenService = game:GetService("TweenService")

local canMove

local function ChangeTransparency(frame, transparency)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quad), {BackgroundTransparency = transparency})
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

local function ChangeBackgroundTrans(frame, transparency)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {BackgroundTransparency = transparency})
	tween:Play()
end

local function ChangeBlur(object, value)
	local tween = TweenService:Create(object, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Size = value})
	tween:Play()
end

local Blur = game.Lighting:WaitForChild("Blur")
local StarterGui = game:GetService("StarterGui")

Button.MouseButton1Click:Connect(function()
	if Button.Text == "> Continue" then
		canMove = false
		local logo = Button.Parent.Logo
		
		-- Menu Button UI Element
		local CreditBtn = Button.Parent.CreditButton
		local NewBtn = Button.Parent.NewButton
		local NextBtn = Button.Parent.NextButton
		

		-- Menu Button Position
		local CreditPos = UDim2.new(0.217, 0, 1, 0)
		local NewPos = UDim2.new(0.41, 0, 1, 0)
		local NextPos = UDim2.new(0.602, 0, 1, 0)
		
		-- Update UI Element
		local UpdateFrame = Button.Parent.Update
		local UpdateStroke = UpdateFrame.UIStroke
		local UpdateScrollImg = UpdateFrame.ScrollingFrame
		
		local UpdateTitle = UpdateFrame.updateTitle
		local Alpha1A = UpdateFrame.ScrollingFrame["0_1_0A"]
		local Alpha1B = UpdateFrame.ScrollingFrame["0_1_0B"]
		local Alpha1C = UpdateFrame.ScrollingFrame["0_1_0C"]
		local Alpha1D = UpdateFrame.ScrollingFrame["0_1_0D"]
		local Alpha1E = UpdateFrame.ScrollingFrame["0_1_0E"]
		local Alpha1F = UpdateFrame.ScrollingFrame["0_1_0F"]
		
		-- Update local function's
		
		local function ChangeScrollTrans(frame, value)
			local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {ScrollBarImageTransparency = value})
			tween:Play()
		end
		
		local function ChangeUIStrokeTrans(frame, value)
			local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Transparency = value})
			tween:Play()
		end
		
		-- Update UI Event's
		ChangeBackgroundTrans(UpdateFrame, 1)
		
		ChangeScrollTrans(UpdateScrollImg, 1)
		ChangeUIStrokeTrans(UpdateStroke, 1)
		
		ChangeTextTrans(UpdateTitle, 1)
		ChangeTextTrans(Alpha1A, 1)
		ChangeTextTrans(Alpha1B, 1)
		ChangeTextTrans(Alpha1C, 1)
		ChangeTextTrans(Alpha1D, 1)
		ChangeTextTrans(Alpha1E, 1)
		ChangeTextTrans(Alpha1F, 1)

		-- Moving
		ChangeButtonPosition(CreditBtn, CreditPos)
		ChangeButtonPosition(NewBtn, NewPos)
		ChangeButtonPosition(NextBtn, NextPos)
		
		ChangeImgTrans(logo, 1)
		-- ChangeImgTrans(TitleImg, 1)
		
		ChangeBackgroundTrans(Button.Parent, 1)
		ChangeBlur(Blur, 0)
		
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
		
		wait(2)
		
		script.Parent.Parent.Parent.Enabled = false
	end
end)

canMove = true

Button.MouseEnter:Connect(function()
	if Button.Text == "Continue" then
		-- ChangeTransparency(BackgroundFrame, 0.2)
		ChangeBlur(Blur, 10)
		Button.Text = "> Continue"
	end
end)

Button.MouseLeave:Connect(function()
	if canMove == true then
		if Button.Text == "> Continue" then
			ChangeBlur(Blur, 25)
			Button.Text = "Continue"
		end
	end
end)
