-- This is when u clicked "Credit" Button

local Button = script.Parent

local BackgroundFrame = Button.Parent.Parent.Credit

local TweenService = game:GetService("TweenService")

local hoverPosition = UDim2.new(0.022, 0, 0.106, 0)
local unhoverPosition = UDim2.new(-0.204, 0, 0.106, 0)
local clickedPosition = UDim2.new(0.396, 0, 0.106, 0)

local canMove

local function ChangeHoverPosition(frame)
	local tween = TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Cubic), {Position = hoverPosition})
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
	local backButton = Button.Parent.CreditBack
	local backPos = UDim2.new(0.907, 0, 0.105, 0)
	
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = clickedPosition})
	local tween0 = TweenService:Create(backButton, TweenInfo.new(1, Enum.EasingStyle.Cubic), {Position = backPos})
	-- {0.022, 0},{0.106, 0} On hover
	-- {-0.204, 0},{0.106, 0} No hover
	-- {0.396, 0},{0.106, 0} On clicked
	-- {0.396, 0},{0.106, 0} On unclicked
	-- {0.907, 0},{0.105, 0} back button on clicked
	-- {1, 0},{0.105, 0} back button on unclicked
	tween:Play()
	tween0:Play()
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

local function ChangeBackgroundTrans(frame, transparency)
	local tween = TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Cubic), {BackgroundTransparency = transparency})
	tween:Play()
end

canMove = true

-- TWEEN SERVICE

Button.MouseButton1Click:Connect(function()
	if Button.Text == "> Credit" then
		ChangePosition(BackgroundFrame)
		canMove = false
		
		-- UI
		local CreditBtn = Button.Parent.CreditButton
		local NewBtn = Button.Parent.NewButton
		local NextBtn = Button.Parent.NextButton
		
		local logo = Button.Parent.Logo
		local updateLog = Button.Parent.Update
		
		-- local TitleTxt = Button.Parent.Title
		-- local TitleImg = Button.Parent.ImageLabel
		
		-- Position
		local CreditPos = UDim2.new(0.217, 0, 1, 0)
		local NewPos = UDim2.new(0.41, 0, 1, 0)
		local NextPos = UDim2.new(0.602, 0, 1, 0)
		local logoPos = UDim2.new(0.331, 0, -0.503, 0)
		local updatePos = UDim2.new(-0.451, 0, 0.427, 0)
		
		-- Moving
		ChangeMainPosition(CreditBtn, CreditPos)
		ChangeMainPosition(NewBtn, NewPos)
		ChangeMainPosition(NextBtn, NextPos)
		ChangePositionDuration(logo, logoPos, 0.4)
		ChangeMainPosition(updateLog, updatePos)
		
		-- ChangeTextTrans(TitleTxt, 1)
		-- ChangeImgTrans(TitleImg, 1)
		
		wait(1)
		
		CreditBtn.Text = "Credit"
	end
end)

Button.Parent.CreditButton.MouseButton1Click:Connect(function()
	canMove = true
end)

Button.MouseEnter:Connect(function()
	if Button.Text == "Credit" then
		ChangeHoverPosition(BackgroundFrame)
		Button.Text = "> Credit"
		canMove = true
	end
end)

Button.MouseLeave:Connect(function()
	--[[
	if Button.Text == "> Credit" then
		ChangeUnhoverPosition(BackgroundFrame)
		Button.Text = "Credit"
	end
	]]
	
	if canMove == true then
		ChangeUnhoverPosition(BackgroundFrame)
		Button.Text = "Credit"
	end
end)
