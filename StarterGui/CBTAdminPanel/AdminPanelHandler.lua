-- BerandaButton
script.Parent.Menus.Frame.BerandaButton.MouseButton1Click:Connect(function()

	local gui = script.Parent.Beranda
	local button = script.Parent.Menus.Frame.BerandaButton 
	local pengaturan = gui.Parent.Pengaturan

	local JumSoal = {
		['Main'] = gui.JumSoal,
		['Text'] = gui.JumSoal.TextLabel,
		['Value'] = gui.JumSoal.Value
	}

	local JumMapel = {
		['Main'] = gui.JumMapel,
		['Text'] = gui.JumMapel.TextLabel,
		['Value'] = gui.JumMapel.Value
	}

	local JumNilai = {
		['Main'] = gui.JumNilai,
		['Text'] = gui.JumNilai.TextLabel,
		['Value'] = gui.JumNilai.Value
	}

	local JumRuang = {
		['Main'] = gui.JumRuang,
		['Text'] = gui.JumRuang.TextLabel,
		['Value'] = gui.JumRuang.Value
	}

	local JumSiswa = {
		['Main'] = gui.JumSiswa,
		['Text'] = gui.JumSiswa.TextLabel,
		['Value'] = gui.JumSiswa.Value
	}

	local JumKelas = {
		['Main'] = gui.Jumkelas,
		['Text'] = gui.Jumkelas.TextLabel,
		['Value'] = gui.Jumkelas.Value
	}

	local JumBankSoal = {
		['Main'] = gui.JumBankSoal,
		['Text'] = gui.JumBankSoal.TextLabel,
		['Value'] = gui.JumBankSoal.Value
	}

	local JumNilaiPindah = {
		['Main'] = gui.JumNilaiPindah,
		['Text'] = gui.JumNilaiPindah.TextLabel,
		['Value'] = gui.JumNilaiPindah.Value
	}


	local animationTime = 1

	-- Services
	local tweenService = game:GetService("TweenService")
	
	local function berandaChangeBackgroundTransparency(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.BackgroundTransparency = 0
		boal.TextTransparency = 0

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end
	
	local function pengaturanChangeBackgroundTransparency(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.BackgroundTransparency = 0
		boal.TextTransparency = 1

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end

	local function removeErrorMessage(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.ImageTransparency = 1
		boal.TextTransparency = 1

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end
	
	-- Function to handle button click
	local function handleClick()
		berandaChangeBackgroundTransparency(JumSoal.Main, JumSoal.Text, JumSoal.Value)
		berandaChangeBackgroundTransparency(JumMapel.Main, JumMapel.Value, JumMapel.Text)
		berandaChangeBackgroundTransparency(JumNilai.Main, JumNilai.Value, JumNilai.Text)
		berandaChangeBackgroundTransparency(JumRuang.Main, JumRuang.Text, JumRuang.Value)
		berandaChangeBackgroundTransparency(JumSiswa.Main, JumSiswa.Value, JumSiswa.Text)
		berandaChangeBackgroundTransparency(JumBankSoal.Main, JumBankSoal.Value, JumBankSoal.Text)
		berandaChangeBackgroundTransparency(JumNilaiPindah.Main, JumNilaiPindah.Value, JumNilaiPindah.Text)
		berandaChangeBackgroundTransparency(JumKelas.Main, JumKelas.Value, JumKelas.Text)
		
		pengaturanChangeBackgroundTransparency(JumKelas.Main, pengaturan.ServerStatusTitle, pengaturan.SchoolDesc)

		removeErrorMessage(gui.ErrorPng, gui.Error404, gui.ErrorMsg)
	end

	local targetPositionPengumuman = UDim2.new(0.034, 0, 0.56, 0) 
	local targetPositionLoginActivity = UDim2.new(0.609, 0, 0.56, 0) 
	local targetPositionWaktu = UDim2.new(0.842, 0, 0.027, 0) 
	local targetPositionTanggal = UDim2.new(0.511, 0, 0.03, 0) 
	
	-- VARIABEL ANIMATION PENGATURAN

	local targetPosition4 = UDim2.new(0.842, 0, 0.027, 0) 
	local targetPosition5 = UDim2.new(0.511, 0, 0.03, 0) 

	local targetPosition6 = UDim2.new(0.609, 0, 0.581, 0) 
	local targetPosition7 = UDim2.new(0.608, 0, 0.629, 0)
	local targetPosition8 = UDim2.new(0.61, 0, 0.711, 0) 
	local targetPosition9 = UDim2.new(0.038, 0, 0.631, 0) 
	local targetPosition10 = UDim2.new(0.038, 0, 0.762, 0) 
	local targetPosition11 = UDim2.new(0.321, 0, 0.762, 0) 
	local targetPosition12 = UDim2.new(0.038, 0, 0.581, 0) 
	local targetPosition13 = UDim2.new(0.321, 0, 0.712, 0) 
	local targetPosition14 = UDim2.new(0.038, 0, 0.712, 0) 
	local targetPosition15 = UDim2.new(0.799, 0, 0.363, 0) 
	local targetPosition16 = UDim2.new(0.608, 0, 0.365, 0) 
	local targetPosition17 = UDim2.new(0.61, 0, 0.502, 0) 
	local targetPosition18 = UDim2.new(0.802, 0, 0.501, 0) 
	local targetPosition19 = UDim2.new(0.887, 0, 0.501, 0)
	local targetPosition20 = UDim2.new(0.61, 0, 0.452, 0) 
	local targetPosition21 = UDim2.new(0.801, 0, 0.452, 0)
	local targetPosition22 = UDim2.new(0.609, 0, 0.317, 0)
	local targetPosition23 = UDim2.new(0.8, 0, 0.315, 0)

	local targetPosition24 = UDim2.new(0.321, 0, 0.502, 0) 
	local targetPosition25 = UDim2.new(0.321, 0, 0.363, 0) 
	local targetPosition26 = UDim2.new(0.039, 0, 0.365, 0)
	local targetPosition27 = UDim2.new(0.229, 0, 0.501, 0)
	local targetPosition28 = UDim2.new(0.038, 0, 0.501, 0) 
	local targetPosition29 = UDim2.new(0.133, 0, 0.501, 0)
	local targetPosition30 = UDim2.new(0.321, 0, 0.452, 0) 
	local targetPosition31 = UDim2.new(0.321, 0, 0.313, 0) 
	local targetPosition32 = UDim2.new(0.038, 0, 0.452, 0) 
	local targetPosition33 = UDim2.new(0.039, 0, 0.315, 0) 
	
	local targetPositionBerandaPengumuman = UDim2.new(0.034, 0, 1, 0) 
	local targetPositionBerandaLoginActivity = UDim2.new(0.609, 0, 1, 0) 
	local targetPositionBerandaWaktu = UDim2.new(0.842, 0, -0.057, 0) 
	local targetPositionBerandaTanggal = UDim2.new(0.511, 0, -0.057, 0) 

	local targetpengaturan1 = UDim2.new(0.609, 0, 0.998, 0)
	local targetpengaturan2 = UDim2.new(0.608, 0, 1.046, 0) 
	local targetpengaturan3 = UDim2.new(0.61, 0, 1.128, 0)
	local targetpengaturan4 = UDim2.new(0.039, 0, 1.048, 0) 
	local targetpengaturan5 = UDim2.new(0.039, 0, 1.179, 0) 
	local targetpengaturan6 = UDim2.new(0.322, 0, 1.179, 0) 
	local targetpengaturan7 = UDim2.new(0.039, 0, 0.998, 0) 
	local targetpengaturan8 = UDim2.new(0.322, 0, 1.129, 0) 
	local targetpengaturan9 = UDim2.new(0.039, 0, 1.129, 0) 
	local targetpengaturan10 = UDim2.new(1.19, 0, 0.362, 0) 
	local targetpengaturan11 = UDim2.new(0.999, 0, 0.363, 0)
	local targetpengaturan12 = UDim2.new(1.001, 0, 0.5, 0) 
	local targetpengaturan13 = UDim2.new(1.192, 0, 0.5, 0) 
	local targetpengaturan14 = UDim2.new(1.278, 0, 0.5, 0) 
	local targetpengaturan15 = UDim2.new(1.001, 0, 0.451, 0) 
	local targetpengaturan16 = UDim2.new(1,191, 0, 0.451, 0) 
	local targetpengaturan17 = UDim2.new(1.0, 0, 0.315, 0)  
	local targetpengaturan18 = UDim2.new(1.191, 0, 0.313, 0) 

	local targetpengaturan19 = UDim2.new(-0.262, 0, 0.5, 0) 
	local targetpengaturan20 = UDim2.new(-0.262, 0, 0.362, 0) 
	local targetpengaturan21 = UDim2.new(-0.544, 0, 0.363, 0)
	local targetpengaturan22 = UDim2.new(-0.355, 0, 0.5, 0) 
	local targetpengaturan23 = UDim2.new(-0.545, 0, 0.5, 0) 
	local targetpengaturan24 = UDim2.new(-0.45, 0, 0.5, 0) 
	local targetpengaturan25 = UDim2.new(-0.262, 0, 0.451, 0) 
	local targetpengaturan26 = UDim2.new(-0.262, 0, 0.312, 0) 
	local targetpengaturan27 = UDim2.new(-0.545, 0, 0.451, 0) 
	local targetpengaturan28 = UDim2.new(-0.544, 0, 0.313, 0) 


	
	local function moveLeft()
		
		local framePengaturanWaktu = pengaturan.Waktu -- {0.842, 0},{-0.057, 0}
		local framePengaturanTanggal = pengaturan.Tanggal

		local PengaturanWaktu = pengaturan.Waktu
		local PengaturanTanggal = pengaturan.Tanggal

		local Pengaturan1 = pengaturan.TokenTitle
		local Pengaturan2 = pengaturan.TokenBox
		local Pengaturan3 = pengaturan.SimpanButton
		local Pengaturan4 = pengaturan.DescButton
		local Pengaturan5 = pengaturan.LogoBox
		local Pengaturan6 = pengaturan.BackgroundBox
		local Pengaturan7 = pengaturan.DescTitle
		local Pengaturan8 = pengaturan.BackgroundTitle
		local Pengaturan9 = pengaturan.LogoTitle
		local Pengaturan10 = pengaturan.CodeBox
		local Pengaturan11 = pengaturan.IpServerBox
		local Pengaturan12 = pengaturan.AppBox
		local Pengaturan13 = pengaturan.ServerOffButton
		local Pengaturan14 = pengaturan.ServerOnButton
		local Pengaturan15 = pengaturan.AppTitle
		local Pengaturan16 = pengaturan.ServerTitle
		local Pengaturan17 = pengaturan.IpTitle
		local Pengaturan18 = pengaturan.KodeSekolahTitle
		local Pengaturan19 = pengaturan.OperatorBox
		local Pengaturan20 = pengaturan.AlamatBox
		local Pengaturan21 = pengaturan.NamaSekolahBox
		local Pengaturan22 = pengaturan.JenjangSmaButton
		local Pengaturan23 = pengaturan.JenjangSdButton
		local Pengaturan24 = pengaturan.JenjangSmpButton
		local Pengaturan25 = pengaturan.OperatorTitle
		local Pengaturan26 = pengaturan.AddressTItle
		local Pengaturan27 = pengaturan.JenjangTitle
		local Pengaturan28 = pengaturan.SchoolTitle

		Pengaturan1:TweenPosition(targetpengaturan1, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan2:TweenPosition(targetpengaturan2, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan3:TweenPosition(targetpengaturan3, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan4:TweenPosition(targetpengaturan4, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan5:TweenPosition(targetpengaturan5, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan6:TweenPosition(targetpengaturan6, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan7:TweenPosition(targetpengaturan7, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan8:TweenPosition(targetpengaturan8, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan9:TweenPosition(targetpengaturan9, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan10:TweenPosition(targetpengaturan10, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan11:TweenPosition(targetpengaturan11, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan12:TweenPosition(targetpengaturan12, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan13:TweenPosition(targetpengaturan13, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan14:TweenPosition(targetpengaturan14, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan15:TweenPosition(targetpengaturan15, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan16:TweenPosition(targetpengaturan16, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan17:TweenPosition(targetpengaturan17, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan18:TweenPosition(targetpengaturan18, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan19:TweenPosition(targetpengaturan19, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan20:TweenPosition(targetpengaturan20, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan21:TweenPosition(targetpengaturan21, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan22:TweenPosition(targetpengaturan22, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan23:TweenPosition(targetpengaturan23, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan24:TweenPosition(targetpengaturan24, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan25:TweenPosition(targetpengaturan25, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan26:TweenPosition(targetpengaturan26, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan27:TweenPosition(targetpengaturan27, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan28:TweenPosition(targetpengaturan28, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)

		framePengaturanWaktu:TweenPosition(targetPositionBerandaWaktu, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		framePengaturanTanggal:TweenPosition(targetPositionBerandaTanggal, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		
		wait(1)
		
		local framePengumuman = gui.Pengumuman
		local frameLoginActivity = gui.LoginActivity
		local frameWaktu = gui.Waktu
		local frameTanggal = gui.Tanggal

		framePengumuman:TweenPosition(targetPositionPengumuman, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frameLoginActivity:TweenPosition(targetPositionLoginActivity, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frameWaktu:TweenPosition(targetPositionWaktu, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frameTanggal:TweenPosition(targetPositionTanggal, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		
		
		
	end
	
	local function handleClick1()
		moveLeft()
	end
	
	handleClick()
	handleClick1()

end)

-- PengumumanButton
script.Parent.QuickMenu.PengumumanButton.MouseButton1Click:Connect(function()
	local gui = script.Parent.Beranda
	local button = script.Parent 
	local pengaturan = gui.Parent.Pengaturan

	local JumSoal = {
		['Main'] = gui.JumSoal,
		['Text'] = gui.JumSoal.TextLabel,
		['Value'] = gui.JumSoal.Value
	}

	local JumMapel = {
		['Main'] = gui.JumMapel,
		['Text'] = gui.JumMapel.TextLabel,
		['Value'] = gui.JumMapel.Value
	}

	local JumNilai = {
		['Main'] = gui.JumNilai,
		['Text'] = gui.JumNilai.TextLabel,
		['Value'] = gui.JumNilai.Value
	}

	local JumRuang = {
		['Main'] = gui.JumRuang,
		['Text'] = gui.JumRuang.TextLabel,
		['Value'] = gui.JumRuang.Value
	}

	local JumSiswa = {
		['Main'] = gui.JumSiswa,
		['Text'] = gui.JumSiswa.TextLabel,
		['Value'] = gui.JumSiswa.Value
	}

	local JumKelas = {
		['Main'] = gui.Jumkelas,
		['Text'] = gui.Jumkelas.TextLabel,
		['Value'] = gui.Jumkelas.Value
	}

	local JumBankSoal = {
		['Main'] = gui.JumBankSoal,
		['Text'] = gui.JumBankSoal.TextLabel,
		['Value'] = gui.JumBankSoal.Value
	}

	local JumNilaiPindah = {
		['Main'] = gui.JumNilaiPindah,
		['Text'] = gui.JumNilaiPindah.TextLabel,
		['Value'] = gui.JumNilaiPindah.Value
	}


	local animationTime = 1

	-- Services
	local tweenService = game:GetService("TweenService")

	
	local function pengumumanChangeBackgroundTransparency(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.BackgroundTransparency = 1
		boal.TextTransparency = 1

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end

	local function ErrorMessage(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.ImageTransparency = 0.5
		boal.TextTransparency = 0

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end


	local function handleClick()
		pengumumanChangeBackgroundTransparency(JumSoal.Main, JumSoal.Text, JumSoal.Value)
		pengumumanChangeBackgroundTransparency(JumMapel.Main, JumMapel.Value, JumMapel.Text)
		pengumumanChangeBackgroundTransparency(JumNilai.Main, JumNilai.Value, JumNilai.Text)
		pengumumanChangeBackgroundTransparency(JumRuang.Main, JumRuang.Text, JumRuang.Value)
		pengumumanChangeBackgroundTransparency(JumSiswa.Main, JumSiswa.Value, JumSiswa.Text)
		pengumumanChangeBackgroundTransparency(JumBankSoal.Main, JumBankSoal.Value, JumBankSoal.Text)
		pengumumanChangeBackgroundTransparency(JumNilaiPindah.Main, JumNilaiPindah.Value, JumNilaiPindah.Text)
		pengumumanChangeBackgroundTransparency(JumKelas.Main, JumKelas.Value, JumKelas.Text)
		
		pengumumanChangeBackgroundTransparency(JumKelas.Main, pengaturan.ServerStatusTitle, pengaturan.SchoolDesc)

		ErrorMessage(gui.ErrorPng, gui.Error404, gui.ErrorMsg)
	end

	local targetPositionBerandaPengumuman = UDim2.new(0.034, 0, 1, 0) 
	local targetPositionBerandaLoginActivity = UDim2.new(0.609, 0, 1, 0) 
	local targetPositionBerandaWaktu = UDim2.new(0.842, 0, -0.057, 0) 
	local targetPositionBerandaTanggal = UDim2.new(0.511, 0, -0.057, 0)
	
	local targetpengaturan1 = UDim2.new(0.609, 0, 0.998, 0)
	local targetpengaturan2 = UDim2.new(0.608, 0, 1.046, 0)
	local targetpengaturan3 = UDim2.new(0.61, 0, 1.128, 0)
	local targetpengaturan4 = UDim2.new(0.039, 0, 1.048, 0)
	local targetpengaturan5 = UDim2.new(0.039, 0, 1.179, 0)
	local targetpengaturan6 = UDim2.new(0.322, 0, 1.179, 0)
	local targetpengaturan7 = UDim2.new(0.039, 0, 0.998, 0)
	local targetpengaturan8 = UDim2.new(0.322, 0, 1.129, 0)
	local targetpengaturan9 = UDim2.new(0.039, 0, 1.129, 0)
	local targetpengaturan10 = UDim2.new(1.19, 0, 0.362, 0) 
	local targetpengaturan11 = UDim2.new(0.999, 0, 0.363, 0)
	local targetpengaturan12 = UDim2.new(1.001, 0, 0.5, 0) 
	local targetpengaturan13 = UDim2.new(1.192, 0, 0.5, 0) 
	local targetpengaturan14 = UDim2.new(1.278, 0, 0.5, 0)
	local targetpengaturan15 = UDim2.new(1.001, 0, 0.451, 0)
	local targetpengaturan16 = UDim2.new(1,191, 0, 0.451, 0) 
	local targetpengaturan17 = UDim2.new(1.0, 0, 0.315, 0)
	local targetpengaturan18 = UDim2.new(1.191, 0, 0.313, 0) 

	local targetpengaturan19 = UDim2.new(-0.262, 0, 0.5, 0) 
	local targetpengaturan20 = UDim2.new(-0.262, 0, 0.362, 0) 
	local targetpengaturan21 = UDim2.new(-0.544, 0, 0.363, 0)
	local targetpengaturan22 = UDim2.new(-0.355, 0, 0.5, 0)
	local targetpengaturan23 = UDim2.new(-0.545, 0, 0.5, 0) 
	local targetpengaturan24 = UDim2.new(-0.45, 0, 0.5, 0)
	local targetpengaturan25 = UDim2.new(-0.262, 0, 0.451, 0)
	local targetpengaturan26 = UDim2.new(-0.262, 0, 0.312, 0)
	local targetpengaturan27 = UDim2.new(-0.545, 0, 0.451, 0)
	local targetpengaturan28 = UDim2.new(-0.544, 0, 0.313, 0)

	local function moveLeft()
		local frameBerandaPengumuman = gui.Pengumuman
		local frameBerandaLoginActivity = gui.LoginActivity
		local frameBerandaWaktu = gui.Waktu -- {0.842, 0},{-0.057, 0}
		local frameBerandaTanggal = gui.Tanggal

		local framePengaturanWaktu = pengaturan.Waktu -- {0.842, 0},{-0.057, 0}
		local framePengaturanTanggal = pengaturan.Tanggal
		
		local PengaturanWaktu = pengaturan.Waktu
		local PengaturanTanggal = pengaturan.Tanggal

		local Pengaturan1 = pengaturan.TokenTitle
		local Pengaturan2 = pengaturan.TokenBox
		local Pengaturan3 = pengaturan.SimpanButton
		local Pengaturan4 = pengaturan.DescButton
		local Pengaturan5 = pengaturan.LogoBox
		local Pengaturan6 = pengaturan.BackgroundBox
		local Pengaturan7 = pengaturan.DescTitle
		local Pengaturan8 = pengaturan.BackgroundTitle
		local Pengaturan9 = pengaturan.LogoTitle
		local Pengaturan10 = pengaturan.CodeBox
		local Pengaturan11 = pengaturan.IpServerBox
		local Pengaturan12 = pengaturan.AppBox
		local Pengaturan13 = pengaturan.ServerOffButton
		local Pengaturan14 = pengaturan.ServerOnButton
		local Pengaturan15 = pengaturan.AppTitle
		local Pengaturan16 = pengaturan.ServerTitle
		local Pengaturan17 = pengaturan.IpTitle
		local Pengaturan18 = pengaturan.KodeSekolahTitle
		local Pengaturan19 = pengaturan.OperatorBox
		local Pengaturan20 = pengaturan.AlamatBox
		local Pengaturan21 = pengaturan.NamaSekolahBox
		local Pengaturan22 = pengaturan.JenjangSmaButton
		local Pengaturan23 = pengaturan.JenjangSdButton
		local Pengaturan24 = pengaturan.JenjangSmpButton
		local Pengaturan25 = pengaturan.OperatorTitle
		local Pengaturan26 = pengaturan.AddressTItle
		local Pengaturan27 = pengaturan.JenjangTitle
		local Pengaturan28 = pengaturan.SchoolTitle
		
		Pengaturan1:TweenPosition(targetpengaturan1, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan2:TweenPosition(targetpengaturan2, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan3:TweenPosition(targetpengaturan3, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan4:TweenPosition(targetpengaturan4, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan5:TweenPosition(targetpengaturan5, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan6:TweenPosition(targetpengaturan6, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan7:TweenPosition(targetpengaturan7, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan8:TweenPosition(targetpengaturan8, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan9:TweenPosition(targetpengaturan9, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan10:TweenPosition(targetpengaturan10, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan11:TweenPosition(targetpengaturan11, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan12:TweenPosition(targetpengaturan12, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan13:TweenPosition(targetpengaturan13, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan14:TweenPosition(targetpengaturan14, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan15:TweenPosition(targetpengaturan15, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan16:TweenPosition(targetpengaturan16, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan17:TweenPosition(targetpengaturan17, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan18:TweenPosition(targetpengaturan18, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan19:TweenPosition(targetpengaturan19, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan20:TweenPosition(targetpengaturan20, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan21:TweenPosition(targetpengaturan21, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan22:TweenPosition(targetpengaturan22, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan23:TweenPosition(targetpengaturan23, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan24:TweenPosition(targetpengaturan24, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan25:TweenPosition(targetpengaturan25, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan26:TweenPosition(targetpengaturan26, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan27:TweenPosition(targetpengaturan27, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		Pengaturan28:TweenPosition(targetpengaturan28, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)

		frameBerandaPengumuman:TweenPosition(targetPositionBerandaPengumuman, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frameBerandaLoginActivity:TweenPosition(targetPositionBerandaLoginActivity, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frameBerandaWaktu:TweenPosition(targetPositionBerandaWaktu, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frameBerandaTanggal:TweenPosition(targetPositionBerandaTanggal, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)

		framePengaturanWaktu:TweenPosition(targetPositionBerandaWaktu, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		framePengaturanTanggal:TweenPosition(targetPositionBerandaTanggal, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
	end
	
	local function handleClick1()
		moveLeft()
	end
	
	handleClick()
	handleClick1()
end)


-- PengaturanButton
script.Parent.QuickMenu.PengaturanButton.MouseButton1Click:Connect(function()
	local gui = script.Parent.Beranda
	local button = script.Parent 
	local pengaturan = script.Parent.Pengaturan

	local BerandaJumSoal = {
		['Main'] = gui.JumSoal,
		['Text'] = gui.JumSoal.TextLabel,
		['Value'] = gui.JumSoal.Value
	}

	local BerandaJumMapel = {
		['Main'] = gui.JumMapel,
		['Text'] = gui.JumMapel.TextLabel,
		['Value'] = gui.JumMapel.Value
	}

	local BerandaJumNilai = {
		['Main'] = gui.JumNilai,
		['Text'] = gui.JumNilai.TextLabel,
		['Value'] = gui.JumNilai.Value
	}

	local BerandaJumRuang = {
		['Main'] = gui.JumRuang,
		['Text'] = gui.JumRuang.TextLabel,
		['Value'] = gui.JumRuang.Value
	}

	local BerandaJumSiswa = {
		['Main'] = gui.JumSiswa,
		['Text'] = gui.JumSiswa.TextLabel,
		['Value'] = gui.JumSiswa.Value
	}

	local BerandaJumKelas = {
		['Main'] = gui.Jumkelas,
		['Text'] = gui.Jumkelas.TextLabel,
		['Value'] = gui.Jumkelas.Value
	}

	local BerandaJumBankSoal = {
		['Main'] = gui.JumBankSoal,
		['Text'] = gui.JumBankSoal.TextLabel,
		['Value'] = gui.JumBankSoal.Value
	}

	local BerandaJumNilaiPindah = {
		['Main'] = gui.JumNilaiPindah,
		['Text'] = gui.JumNilaiPindah.TextLabel,
		['Value'] = gui.JumNilaiPindah.Value
	}

	local BerandaWaktu = {
		['Main'] = gui.Waktu,
		['Value'] = gui.Waktu.Value
	}

	local BerandaTanggal = {
		['Main'] = gui.Tanggal,
		['Value'] = gui.Tanggal.Value
	}


	local animationTime = 1

	-- Services
	local tweenService = game:GetService("TweenService")

	
	local function pengaturanChangeBackgroundTransparency(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.BackgroundTransparency = 1
		boal.TextTransparency = 1

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end

	local function pengaturanChangeServerTransparency(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.BackgroundTransparency = 1
		boal.TextTransparency = 0

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end

	local function removeErrorMessage(frame1, frame2, frame3)
		local tweenInfo = TweenInfo.new(animationTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		local goal = {}
		local boal = {}

		goal.ImageTransparency = 1
		boal.TextTransparency = 1

		local tween1 = tweenService:Create(frame1, tweenInfo, goal)
		local tween2 = tweenService:Create(frame2, tweenInfo, boal)
		local tween3 = tweenService:Create(frame3, tweenInfo, boal)

		tween1:Play()
		tween2:Play()
		tween3:Play()
	end

	
	local function handleClick()
		pengaturanChangeBackgroundTransparency(BerandaJumSoal.Main, BerandaJumSoal.Text, BerandaJumSoal.Value)
		pengaturanChangeBackgroundTransparency(BerandaJumMapel.Main, BerandaJumMapel.Value, BerandaJumMapel.Text)
		pengaturanChangeBackgroundTransparency(BerandaJumNilai.Main, BerandaJumNilai.Value, BerandaJumNilai.Text)
		pengaturanChangeBackgroundTransparency(BerandaJumRuang.Main, BerandaJumRuang.Text, BerandaJumRuang.Value)
		pengaturanChangeBackgroundTransparency(BerandaJumSiswa.Main, BerandaJumSiswa.Value, BerandaJumSiswa.Text)
		pengaturanChangeBackgroundTransparency(BerandaJumBankSoal.Main, BerandaJumBankSoal.Value, BerandaJumBankSoal.Text)
		pengaturanChangeBackgroundTransparency(BerandaJumNilaiPindah.Main, BerandaJumNilaiPindah.Value, BerandaJumNilaiPindah.Text)
		pengaturanChangeBackgroundTransparency(BerandaJumKelas.Main, BerandaJumKelas.Value, BerandaJumKelas.Text)

		pengaturanChangeBackgroundTransparency(gui, BerandaJumSoal.Text, BerandaJumSoal.Text)

		--wait(1)
		pengaturanChangeServerTransparency(gui, pengaturan.ServerStatusTitle, pengaturan.SchoolDesc)

		removeErrorMessage(gui.ErrorPng, gui.Error404, gui.ErrorMsg)
	end

	-- VARIABEL ANIMATION BERANDA

	local targetPosition = UDim2.new(0.034, 0, 1, 0) 
	local targetPosition1 = UDim2.new(0.609, 0, 1, 0)
	local targetPosition2 = UDim2.new(0.842, 0, -0.057, 0) 
	local targetPosition3 = UDim2.new(0.511, 0, -0.057, 0)

	-- VARIABEL ANIMATION PENGATURAN

	local targetPosition4 = UDim2.new(0.842, 0, 0.027, 0) -- {0.842, 0},{0.027, 0} {0.511, 0},{0.03, 0}
	local targetPosition5 = UDim2.new(0.511, 0, 0.03, 0) 

	local targetPosition6 = UDim2.new(0.609, 0, 0.581, 0) 
	local targetPosition7 = UDim2.new(0.608, 0, 0.629, 0) 
	local targetPosition8 = UDim2.new(0.61, 0, 0.711, 0)
	local targetPosition9 = UDim2.new(0.038, 0, 0.631, 0) 
	local targetPosition10 = UDim2.new(0.038, 0, 0.762, 0)
	local targetPosition11 = UDim2.new(0.321, 0, 0.762, 0)
	local targetPosition12 = UDim2.new(0.038, 0, 0.581, 0)
	local targetPosition13 = UDim2.new(0.321, 0, 0.712, 0)
	local targetPosition14 = UDim2.new(0.038, 0, 0.712, 0) 
	local targetPosition15 = UDim2.new(0.799, 0, 0.363, 0)
	local targetPosition16 = UDim2.new(0.608, 0, 0.365, 0) 
	local targetPosition17 = UDim2.new(0.61, 0, 0.502, 0) 
	local targetPosition18 = UDim2.new(0.802, 0, 0.501, 0) 
	local targetPosition19 = UDim2.new(0.887, 0, 0.501, 0)
	local targetPosition20 = UDim2.new(0.61, 0, 0.452, 0) 
	local targetPosition21 = UDim2.new(0.801, 0, 0.452, 0) 
	local targetPosition22 = UDim2.new(0.609, 0, 0.317, 0)
	local targetPosition23 = UDim2.new(0.8, 0, 0.315, 0)

	local targetPosition24 = UDim2.new(0.321, 0, 0.502, 0)
	local targetPosition25 = UDim2.new(0.321, 0, 0.363, 0)
	local targetPosition26 = UDim2.new(0.039, 0, 0.365, 0)
	local targetPosition27 = UDim2.new(0.229, 0, 0.501, 0)
	local targetPosition28 = UDim2.new(0.038, 0, 0.501, 0)
	local targetPosition29 = UDim2.new(0.133, 0, 0.501, 0) 
	local targetPosition30 = UDim2.new(0.321, 0, 0.452, 0) 
	local targetPosition31 = UDim2.new(0.321, 0, 0.313, 0)
	local targetPosition32 = UDim2.new(0.038, 0, 0.452, 0)
	local targetPosition33 = UDim2.new(0.039, 0, 0.315, 0) 


	local function moveLeft()
		
		-- VARIABEL BERANDA
		
		local BerandaPengumuman = gui.Pengumuman
		local BerandaLoginActivity = gui.LoginActivity
		local BerandaWaktu = gui.Waktu -- {0.842, 0},{-0.057, 0}
		local BerandaTanggal = gui.Tanggal

		-- VARIABEL PENGATURAN

		local PengaturanWaktu = pengaturan.Waktu
		local PengaturanTanggal = pengaturan.Tanggal

		local frame6 = pengaturan.TokenTitle
		local frame7 = pengaturan.TokenBox
		local frame8 = pengaturan.SimpanButton
		local frame9 = pengaturan.DescButton
		local frame10 = pengaturan.LogoBox
		local frame11 = pengaturan.BackgroundBox
		local frame12 = pengaturan.DescTitle
		local frame13 = pengaturan.BackgroundTitle
		local frame14 = pengaturan.LogoTitle
		local frame15 = pengaturan.CodeBox
		local frame16 = pengaturan.IpServerBox
		local frame17 = pengaturan.AppBox
		local frame18 = pengaturan.ServerOffButton
		local frame19 = pengaturan.ServerOnButton
		local frame20 = pengaturan.AppTitle
		local frame21 = pengaturan.ServerTitle
		local frame22 = pengaturan.IpTitle
		local frame23 = pengaturan.KodeSekolahTitle
		local frame24 = pengaturan.OperatorBox
		local frame25 = pengaturan.AlamatBox
		local frame26 = pengaturan.NamaSekolahBox
		local frame27 = pengaturan.JenjangSmaButton
		local frame28 = pengaturan.JenjangSdButton
		local frame29 = pengaturan.JenjangSmpButton
		local frame30 = pengaturan.OperatorTitle
		local frame31 = pengaturan.AddressTItle
		local frame32 = pengaturan.JenjangTitle
		local frame33 = pengaturan.SchoolTitle
		
		--[[
		
	local targetpengaturan1 = UDim2.new(0.609, 0, 0.581, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan2 = UDim2.new(0.608, 0, 0.629, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan3 = UDim2.new(0.61, 0, 0.711, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan4 = UDim2.new(0.038, 0, 0.631, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan5 = UDim2.new(0.038, 0, 0.762, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan6 = UDim2.new(0.321, 0, 0.762, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan7 = UDim2.new(0.038, 0, 0.581, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan8 = UDim2.new(0.321, 0, 0.712, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan9 = UDim2.new(0.038, 0, 0.712, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan10 = UDim2.new(0.799, 0, 0.363, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan11 = UDim2.new(0.608, 0, 0.365, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan12 = UDim2.new(0.61, 0, 0.502, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan13 = UDim2.new(0.802, 0, 0.501, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan14 = UDim2.new(0.887, 0, 0.501, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan15 = UDim2.new(0.61, 0, 0.452, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan16 = UDim2.new(0.801, 0, 0.452, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan17 = UDim2.new(0.609, 0, 0.317, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan18 = UDim2.new(0.8, 0, 0.315, 0) -- Adjust the X offset (-200) as needed

	local targetpengaturan19 = UDim2.new(0.321, 0, 0.502, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan20 = UDim2.new(0.321, 0, 0.363, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan21 = UDim2.new(0.039, 0, 0.365, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan22 = UDim2.new(0.229, 0, 0.501, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan23 = UDim2.new(0.038, 0, 0.501, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan24 = UDim2.new(0.133, 0, 0.501, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan25 = UDim2.new(0.321, 0, 0.452, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan26 = UDim2.new(0.321, 0, 0.313, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan27 = UDim2.new(0.038, 0, 0.452, 0) -- Adjust the X offset (-200) as needed
	local targetpengaturan28 = UDim2.new(0.039, 0, 0.315, 0) -- Adjust the X offset (-200) as needed
		
		]]

		-- REMOVE ANIMATION BERANDA GUI

		BerandaPengumuman:TweenPosition(targetPosition, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		BerandaLoginActivity:TweenPosition(targetPosition1, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		BerandaWaktu:TweenPosition(targetPosition2, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		BerandaTanggal:TweenPosition(targetPosition3, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)

		wait(1)
		
		-- ADD ANIMATION PENGATURAN GUI

		PengaturanWaktu:TweenPosition(targetPosition4, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		PengaturanTanggal:TweenPosition(targetPosition5, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)

		frame6:TweenPosition(targetPosition6, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame7:TweenPosition(targetPosition7, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame8:TweenPosition(targetPosition8, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame9:TweenPosition(targetPosition9, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame10:TweenPosition(targetPosition10, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame11:TweenPosition(targetPosition11, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame12:TweenPosition(targetPosition12, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame13:TweenPosition(targetPosition13, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame14:TweenPosition(targetPosition14, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame15:TweenPosition(targetPosition15, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame16:TweenPosition(targetPosition16, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame17:TweenPosition(targetPosition17, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame18:TweenPosition(targetPosition18, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame19:TweenPosition(targetPosition19, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame20:TweenPosition(targetPosition20, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame21:TweenPosition(targetPosition21, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame22:TweenPosition(targetPosition22, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame23:TweenPosition(targetPosition23, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame24:TweenPosition(targetPosition24, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame25:TweenPosition(targetPosition25, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame26:TweenPosition(targetPosition26, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame27:TweenPosition(targetPosition27, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame28:TweenPosition(targetPosition28, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame29:TweenPosition(targetPosition29, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame30:TweenPosition(targetPosition30, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame31:TweenPosition(targetPosition31, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame32:TweenPosition(targetPosition32, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)
		frame33:TweenPosition(targetPosition33, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, animationTime, true)


	end

	local function handleClick1()
		moveLeft()
	end
	
	handleClick()
	handleClick1()
end)
