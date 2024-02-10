-- THE USERNAME/PASSWORD IS CUSTOM, NOT A PERSONAL OR ROBLOX ACCOUNT USERNAME/PASSWORD

script.Parent.Parent.Parent.Parent.Close.MouseButton1Click:Connect(function() -- Button back/close Script
	local serverpanel = script.Parent.Parent.Parent
	local mainframe = serverpanel.Frame
	
	local targetPosition = UDim2.new(0, 0, 1, 0) 

	local animationTime = 1.5

	local function moveDown()
		mainframe:TweenPosition(targetPosition, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
	end

	local function handleClick()
		moveDown()
	end
	
	moveDown()
	
	-- wait(1.5)
	
	-- serverpanel.Enabled = false	
end)

local button = script.Parent 

local textBox1 = button.Parent.UserBox 
local textBox2 = button.Parent.PwBox

local tweenService = game:GetService("TweenService")


local function checkCredentials()

	local username = textBox1.Text
	local password = textBox2.Text

	if username == "sipduel" and password == "admin" then
		print("Valid")
		
		button.Parent.Process.TextTransparency = 0
		wait(1.5)
		
		local goalColor = Color3.new(178/255, 178/255, 178/255)
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
		local animationTime = 1

		local changeInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.BackgroundTransparency = 1
		boal.TextTransparency = 1

		local tween1 = tweenService:Create(button.Parent.LoginTittle, changeInfo, boal)
		local tween7 = tweenService:Create(button.Parent.UserBox, changeInfo, boal)
		local tween8 = tweenService:Create(button.Parent.PwBox, changeInfo, boal)
		local tween9 = tweenService:Create(button, changeInfo, boal)
		local tween10 = tweenService:Create(button.Parent, changeInfo, goal)
		local tween11 = tweenService:Create(button, changeInfo, goal)
		local tween12 = tweenService:Create(button.Parent.UserBox, changeInfo, goal)
		local tween13 = tweenService:Create(button.Parent.PwBox, changeInfo, goal)
		local tween14 = tweenService:Create(button.Parent.Process, changeInfo, boal)

		tween1:Play()
		tween7:Play()
		tween8:Play()
		tween9:Play()
		tween10:Play()
		tween11:Play()
		tween13:Play()
		tween12:Play()
		tween14:Play()

		wait(0.5)

		script.Parent.Visible = false
		button.Parent.UserBox.Visible = false
		button.Parent.PwBox.Visible = false
		
		local mainframe = button.Parent.Parent
		
		mainframe.IpServerBox.Visible = true
		mainframe.PortServerBox.Visible = true
		mainframe.TokenServerBox.Visible = true
		
		local changeInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal1 = {}
		local boal1 = {}
		local imagevisible_true = {}
		local uistrokevisible_true = {}

		goal1.BackgroundTransparency = 0
		boal1.TextTransparency = 0
		imagevisible_true.ImageTransparency = 0
		uistrokevisible_true.Transparency = 0

		local tweenq = tweenService:Create(mainframe.IpServerBox, changeInfo, boal1)
		local tweenw = tweenService:Create(mainframe.PortServerBox, changeInfo, boal1)
		local tweene = tweenService:Create(mainframe.TokenServerBox, changeInfo, boal1)
		local tweenr = tweenService:Create(mainframe.IpServerBox, changeInfo, goal1)
		local tweent = tweenService:Create(mainframe.TokenServerBox, changeInfo, goal1)
		local tweeny = tweenService:Create(mainframe.PortServerBox, changeInfo, goal1)
		
		tweenq:Play()
		tweenw:Play()
		tweene:Play()
		tweenr:Play()
		tweent:Play()
		tweeny:Play()
		
		local tweenu = tweenService:Create(mainframe.dot1, changeInfo, boal1)
		local tweeni = tweenService:Create(mainframe.dot2, changeInfo, boal1)
		local tweeno = tweenService:Create(mainframe.dot3, changeInfo, boal1)
		
		tweenu:Play()
		tweeni:Play()
		tweeno:Play()
		
		local tweenp = tweenService:Create(mainframe.IpLabel, changeInfo, goal1)
		local tweena = tweenService:Create(mainframe.TokenLabel, changeInfo, goal1)
		local tweens = tweenService:Create(mainframe.PortLabel, changeInfo, goal1)
		local tweend = tweenService:Create(mainframe.IpLabel, changeInfo, boal1)
		local tweenf = tweenService:Create(mainframe.TokenLabel, changeInfo, boal1)
		local tweeng = tweenService:Create(mainframe.PortLabel, changeInfo, boal1)
		
		tweenp:Play()
		tweena:Play()
		tweens:Play()
		tweend:Play()
		tweenf:Play()
		tweeng:Play()
		
		local tweenh = tweenService:Create(mainframe.Frame1, changeInfo, goal1)
		local tweenj = tweenService:Create(mainframe.Frame2, changeInfo, goal1)
		local tweenk = tweenService:Create(mainframe.Frame3, changeInfo, goal1)
		
		tweenh:Play()
		tweenj:Play()
		tweenk:Play()
		
		local tweenl = tweenService:Create(mainframe.Profile, changeInfo, goal1)
		local tweenz = tweenService:Create(mainframe.Profile.ImageLabel, changeInfo, imagevisible_true)
		local tweenx = tweenService:Create(mainframe.Profile.UIStroke, changeInfo, uistrokevisible_true)
		local tweenc = tweenService:Create(mainframe.Profile.text, changeInfo, boal1)
		local tweenv = tweenService:Create(mainframe.Profile.text1, changeInfo, boal1)
		
		tweenl:Play()
		tweenz:Play()
		tweenx:Play()
		tweenc:Play()
		tweenv:Play()

	else
		print("Invalid")
		local textColorGoal = Color3.new(178/255, 60/255, 24/255)

		if textBox1.Text == "" or textBox2.Text == "" then
			button.Parent.Process.TextTransparency = 0
			wait(1.5)
			button.Parent.Process.Text = "username or password can't be empty!"
			wait(1)
			button.Parent.Process.TextTransparency = 1
			button.Parent.Process.Text = "processing..."
		else
			button.Parent.Process.TextTransparency = 0
			wait(1.5)
			button.Parent.Process.Text = "username or password wrong."
			wait(1)
			button.Parent.Process.TextTransparency = 1
			button.Parent.Process.Text = "processing..."
		end 
	end
end

button.MouseButton1Click:Connect(checkCredentials)
