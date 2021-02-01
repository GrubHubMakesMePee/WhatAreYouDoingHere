local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/YummySource",true))()

local main = library:CreateWindow('Main')
local waypoints = library:CreateWindow('Waypoints')
local remotes = library:CreateWindow('Remotes')
local Autofarming = library:CreateWindow('Autofarming')


local WalkingSlider = main:Slider('Walk Speed Adjuster', {min = 16, max = 150, default = 16}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
end)



local JumpingSlider = main:Slider('Jump Power Adjuster', {min = 50, max = 300, default = 50}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
end)





local NoCollectibles = main:Button('Remove Collectibles', function()
   
        	local part = game.Workspace.Collectibles

	part:ClearAllChildren()
	
	wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Removed Collectibles";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)


local AntiAfk = main:Toggle('Anti Afk', function(state)
    if state then
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Anti-Afk On";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
	
else
    
    wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Anti-Afk Off";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
    end
    end)

local WaitBox = Autofarming:Box('Wait Time', '2', function(value)
end)


local StartFarming = Autofarming:Button('Start Farming', function()
local WaitValue = WaitBox.Text

wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Loading...";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(WaitValue)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Started Farming";
Icon = "rbxassetid://1299491401";
Duration = 5;
})


    function Tween(time,pos)
		pcall(function()
			workspace.Gravity = 0
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
			workspace.Gravity = 196.19999694824
		end)
	end

	wait(0.1)


	function Repeat()
		Tween(2.5,game:GetService("Workspace").Particles.Snowflakes.SnowflakePart.CFrame) pcall(function()

			wait(WaitValue)

    
			Repeat()
		end)
	end

	wait(WaitValue)
	
	Repeat()
	
end)


local WealthClock = Autofarming:Toggle('Auto-Wealth Clock', function(state)
    
    if state then
        
               wait(1)
        
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Enabled Auto-Wealth Clock";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)
        
        while true do
            
            wait(0.1)
					
game.ReplicatedStorage.Events.ToyEvent:FireServer("Wealth Clock")

end
end        
end)



local GingerbreadHouse = Autofarming:Toggle('Auto GingerbreadHouse', function(state)
    
    if state then
        
               wait(1)
        
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Enabled Auto-Gingerbread House";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)
        
        while true do
            
            wait(0.1)
					
game.ReplicatedStorage.Events.ToyEvent:FireServer("Gingerbread House")

end
end        
end)


local FallingLights = main:Button('TP to Falling Lights', function()
local CPart = game.Workspace.Particles.WarningDisk

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position)
		
end)

local FallingCoconuts = main:Button('Catch Falling Coconuts', function()
local CPart = game.Workspace.Particles.WarningDisk

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position)
		
end)

local RCodes = main:Button('Redeem All Codes', function()
    promo = game.ReplicatedStorage.Events.PromoCodeEvent
	promo:FireServer("38217")
	promo:FireServer("Bopmaster")
	promo:FireServer("Buzz")
	promo:FireServer("Cog")
	promo:FireServer("Connoisseur")
	promo:FireServer("Crawlers")
	promo:FireServer("Nectar")
	promo:FireServer("Roof")
	promo:FireServer("Wax")
	promo:FireServer("Wink")
	promo:FireServer("ClubBean")
	promo:FireServer("SecretProfileCode")
	promo:FireServer("WikiHonor")
	promo:FireServer("WikiAwardClock")
	promo:FireServer("GumdropsForScience")
	promo:FireServer("Sure")
	promo:FireServer("BloxyCelebration")
	promo:FireServer("ClubConverters")
	promo:FireServer("ClubBasket")
	promo:FireServer("Marshmallow")
	promo:FireServer("500Mil")
	promo:FireServer("Discord100k")
	promo:FireServer("BeeDay2019")
	promo:FireServer("TornadoGlitch")
	promo:FireServer("RebootCloud")
	promo:FireServer("Tornado")
	promo:FireServer("ClubCloud")
	promo:FireServer("Gumaden10T")
	promo:FireServer("Beesmasbegins")
	promo:FireServer("BeesBuzz123")
	promo:FireServer("JollyJelly")
	promo:FireServer("FestiveFrogs")
	promo:FireServer("BANNED")
	promo:FireServer("Mocito100T")
	promo:FireServer("RedMarket")
	promo:FireServer("5mMembers")
	promo:FireServer("Cubly")
	promo:FireServer("Buoyant")
	promo:FireServer("BigBag")
	promo:FireServer("Teespring")
	promo:FireServer("BeesBuzz123")
	promo:FireServer("Discord100k")
	promo:FireServer("ClubConverters")
	promo:FireServer("500mil")
	promo:FireServer("Marshmallow")
wait(0.5)
end)


local TP = waypoints:Button('TP to Storage', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.4011364, 3.10927987, 280.845856, -0.000101685524, -0.288733631, 0.957409501, -1, 0.000101685524, -7.55488873e-05, -7.55488873e-05, -0.957409501, -0.288733721)
end)

local TP = waypoints:Button('Tp to Beesmas Tree', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19.7836571, 14.5350056, 366.429535, -2.81333923e-05, 0.56608367, -0.824347854, -1, -2.81333923e-05, 1.47819519e-05, -1.47819519e-05, 0.824347854, 0.56608361)
end)

local TP = waypoints:Button('TP to Candles', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-374.069397, 46.0520935, 280.252197, -1.1920929e-06, -0.999997973, 0.00207532127, -1.00000012, 1.01327896e-06, -1.16415322e-09, -1.16415322e-09, -0.00207532127, -0.999998093)
end)

local TP = waypoints:Button('TP to BBM', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.6343994, 310.092285, -276.434509, 2.75373459e-05, 0.650255442, -0.759715676, -1, 2.75373459e-05, -1.26957893e-05, 1.26957893e-05, 0.759715676, 0.650255382)
end)

local TP = waypoints:Button('TP Snow Machine', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(277.956085, 92.2006073, 103.317726, 0, -1, -0, -1, 0, -0, 0, 0, -1)
end)

local TP = waypoints:Button('TP to Wreath', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-281.724487, 17.5120964, 344.882782, -3.23057175e-05, -0.707060337, -0.707153201, -1, 3.23057175e-05, 1.33812428e-05, 1.33812428e-05, 0.707153201, -0.707060337)
end)

local TP = waypoints:Button('TP to Stockings', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235.246811, 33.9151669, 232.883942, 0, 0, -1, -1, 0, 0, 0, 1, 0)
end)

local TP = waypoints:Button('TP to Feast', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-106.041, 127.202003, -113.750999, 0, 0, 1, -1, 0, 0, 0, -1, 0)
end)

local TP = waypoints:Button('TP to Gingerbread House', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.300598, 4.44209599, 93.6090851, 0, 0, 1, -1, 0, 0, 0, -1, 0)
end)

local TP = waypoints:Button('TP to Lid Art', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(34.1292305, 234.35878, -512.368103, -4.17232513e-06, 0.00216221809, 0.999997616, -1, -4.17232513e-06, -4.17232513e-06, 4.17232513e-06, -0.999997616, 0.00216221809)
end)

local TP = waypoints:Button('TP to Lid Snowbear Spawner', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(43.179821, 20.9920959, 35.2696381, 0, 0, -1, -1, 0, 0, 0, 1, 0)
end)


local Remote = remotes:Button('Use Blue Field Booster', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Blue Field Booster")
end)

local Remote = remotes:Button('Use red Field Booster', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Red Field Booster")
end)

local Remote = remotes:Button('Use Glue Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Glue Dispenser")
end)

local Remote = remotes:Button('Use Coconut Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Coconut Dispenser")
end)

local Remote = remotes:Button('Use gingerbread House', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Gingerbread House")
end)

local Remote = remotes:Button('Use Strawberry Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Strawberry Dispenser")
end)

local Remote = remotes:Button('Use Blueberry Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Blueberry Dispenser")
end)

local Remote = remotes:Button('Use Treat Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Treat Dispenser")
end)

local Remote = remotes:Button('Use Honey Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Honey Dispenser")
end)

local Remote = remotes:Button('Equip Bubble Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Bubble Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Diamond Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Diamond Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Fire Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Fire Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Demon Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Demon Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Honey Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Honey Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Gummy Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Gummy Mask",["Category"]  = "Accessory"})
end)

local ClrDeco = main:Button('Remove Field Decorations', function()
    for i, v in pairs(game.workspace.FieldDecos:GetChildren()) do	
		v:Destroy()
	end
end)

local ClrDeco = main:Button('Open Blender', function()
    		player = game:GetService("Players").LocalPlayer
		root = player.Character.HumanoidRootPart
		origPOS = root.CFrame
		player.Character.HumanoidRootPart.CFrame = CFrame.new(-426, 69, 38)
		game.ReplicatedStorage.Events.ToyEvent:FireServer("Blender")
		game.Players.LocalPlayer.PlayerGui.ScreenGui.Blender.Visible = true
		game.Players.LocalPlayer.PlayerGui.ScreenGui.Blender.RecipeProgress.Visible = true
		wait(1)
		root.CFrame = origPOS
		print("Blender GUI opened successfully")
    end)

local PopBBL = main:Button('TP to Bubble', function()
   local CPart = game.Workspace.Particles.Bubble

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position) 
end)

local BlenderCheat = main:Toggle('MemoryMatch Cheat', function(state)
    if state then
        
        spawn (function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("MinigameLayer"):GetChildren()) do
				for k,q in pairs(v:WaitForChild("GuiGrid"):GetDescendants()) do
					if q.Name == "ObjContent" or q.Name == "ObjImage" then
						q.Visible = true
					end
				end
			end
		end
end)
 else  
     end
end)
    
    
local PopBBL = Autofarming:Button('Rejoin Game', function()
    			local placeId = 1537690962
			game:GetService("TeleportService"):Teleport(placeId)
end)

local Rew = main:Button('Request Sprout', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Sprout Summoner")
end)

local GL = waypoints:Button('TP to Gummy Lair', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270.561157, 25271.3359, -789.771545)
    end)
