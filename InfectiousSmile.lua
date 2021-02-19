for _,v in pairs(game.CoreGui:GetDescendants()) do

if string.find(v.Name,"Library") then
v:Destroy()

end
end

wait()

local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/Test"))()


local Open = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")



Open.Name = "Open"
Open.Parent = game.CoreGui.Library
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BackgroundTransparency = 1.000
Open.Position = UDim2.new(-0.000535428524, 0, 0.804139316, 0)
Open.Size = UDim2.new(0, 99, 0, 40)
Open.Image = "rbxassetid://3570695787"
Open.ImageColor3 = Color3.fromRGB(40, 40, 40)
Open.ScaleType = Enum.ScaleType.Slice
Open.SliceCenter = Rect.new(100, 100, 100, 100)
Open.SliceScale = 0.100
Open.Visible = false

TextButton.Parent = Open
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(0, 99, 0, 40)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Open UI"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000
TextButton.MouseButton1Down:connect(function()
    
game:GetService("CoreGui").Library.MainFrame.Visible = true
wait(0.1)

Open.Visible = false
    
end)


local s = VLib:Window("Infectious Smile","GrubHub V3"," ")
local Main = s:Tab("Main")
local Settings = s:Tab("Settings")
local Credits = s:Tab("Credits")

local part = Instance.new("Part")
local part2 = Instance.new("Part")
local part3 = Instance.new("Part")

part.Name = "JurrasicPart1"
part.Anchored = true
part.Parent = game.Workspace
part.Shape = Enum.PartType.Ball
part.Color = Color3.new(1, 1, 1)
part.CFrame = CFrame.new(-69.522522, 55, -3.22888899)
part.Transparency = 1
part.CanCollide = false


part2.Name = "JurrasicPart2"
part2.Anchored = true
part2.Parent = game.Workspace
part2.Shape = Enum.PartType.Ball
part2.Color = Color3.new(1, 1, 1)
part2.CFrame = CFrame.new(-350.522522, 55, -3.22888899)
part2.Transparency = 1
part2.CanCollide = false


part3.Name = "JurrasicPart3"
part3.Anchored = true
part3.Parent = game.Workspace
part3.Shape = Enum.PartType.Ball
part3.Color = Color3.new(1, 1, 1)
part3.CFrame = CFrame.new(-347.206757, 3, 23.9502506)
part3.Transparency = 1
part3.CanCollide = false




Main:Slider("HipHeight",0,100,1,function(t)
game:GetService('Players').LocalPlayer.Character.Humanoid.HipHeight = t
end)

Main:Slider("WalkSpeed",16,100,16,function(t)
game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

Main:Slider("JumpPower",16,250,16,function(t)
game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = t
end)


Main:Button("Remove Kill Bricks", function()

for _,v in pairs(game.workspace:GetDescendants()) do

if string.find(v.Name,"Infector") then
v:Destroy()
end
end

wait(2)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Deleted";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)


Main:Textbox('Play Music', function(value)

game.workspace.Sounds.Earthquake.SoundId = "rbxassetid://"..value

wait(2)

game.workspace.Sounds.Earthquake.Playing = true

wait(2)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Now Playing";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)


Main:Toggle("Destroy Anti-Cheat",function(t)

if t then

game:GetService("Workspace").Map.AntiHack:Destroy()
game.Players.LocalPlayer.AntiFly:Destroy()

wait(0.1)

game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Destroyed";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
end       
end)


Main:Button('Buff Bat', function()

game.Players.LocalPlayer.Character.Bat.MaxUses:Destroy()
game.Players.LocalPlayer.Character.Bat.Cooldown.Value = 0.01

game.StarterGui:SetCore("SendNotification", {
Title = "Buffed Bat";
Text = "You must have a Bat in your hand.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
    
end)


Main:Button('Buff Bottle', function()


game.Players.LocalPlayer.Character.Bottle.MaxUses:Destroy()
game.Players.LocalPlayer.Character.Bottle.Cooldown.Value = 0

game.StarterGui:SetCore("SendNotification", {
Title = "Buffed Bottle";
Text = "you must have bottle in your hand.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)



Main:Button('TP Weapons', function()
    workspace.Map.HumanBase.Vendor.BottleCollection.Bottle.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
workspace.Map.HumanBase.Vendor.BatCollection.Bat.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Teleported Weapons to your position.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)


Main:Toggle('Neutral Mode', function(state)
    if state then

game.Players.LocalPlayer.Team = Human

game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Switched to Neutral";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
        
    end
end)


Main:Textbox('Change Sign Text', function(value)
    game:GetService("Workspace").Map.ConstantTerrain.CustomizeSign.SurfaceGui.TextLabel.Text = value
    
    game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Changed Sign Text to".. value;
Icon = "rbxassetid://1299491401";
Duration = 5;
})
end)


Main:Button('Go To End', function()
    function Tween(time,pos)
		pcall(function()
			workspace.Gravity = 0
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
			workspace.Gravity = 196.19999694824
		end)
    end

game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Started Tweening";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

	wait(0.1)


		Tween(5.5,game:GetService("Workspace").JurrasicPart1.CFrame) pcall(function()
wait(0.1)
        Tween(5.5,game:GetService("Workspace").JurrasicPart2.CFrame)
wait(0.1)
        Tween(5.5,game:GetService("Workspace").JurrasicPart3.CFrame)

		end)
		
		game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Teleported";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)


Main:Button('Delete Final Base Door', function()

game:GetService("Workspace").Map.ConstantTerrain.KillGateSwitcher.Gate:Destroy()

		game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Removed";
Icon = "rbxassetid://1299491401";
Duration = 3;
})

end)

Main:Toggle('Destroy Orange Doors', function(state)
    if state then

for _,v in pairs(game.workspace:GetDescendants()) do

if string.find(v.Name,"AntiSmiler") then
v:Destroy()
end
end

		game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Destroyed. There must be an orange door inside a stage for this to work.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

else      
end
end)

Settings:Colorpicker("Full UI Color",Color3.fromRGB(),function(ass)
    
game:GetService("CoreGui").Library.MainFrame.LeftFrame.BackgroundColor3 = ass
wait()
game:GetService("CoreGui").Library.MainFrame.BackgroundColor3 = ass
end)

Settings:Colorpicker("Main UI Color",Color3.fromRGB(22, 23, 29),function(t)
    
game:GetService("CoreGui").Library.MainFrame.BackgroundColor3 = t

end)

Settings:Colorpicker("Secondary UI Color",Color3.fromRGB(32, 33, 37),function(ass)
    
game:GetService("CoreGui").Library.MainFrame.LeftFrame.BackgroundColor3 = ass

end)


Settings:Button('Revert to Default Colors', function()
game:GetService("CoreGui").Library.MainFrame.BackgroundColor3 =  Color3.fromRGB(22, 23, 29)
wait()
game:GetService("CoreGui").Library.MainFrame.LeftFrame.BackgroundColor3 = Color3.fromRGB(32, 33, 37)
end)



Settings:Textbox("UI Transparency", true,function(trans)
game:GetService("CoreGui").Library.MainFrame.Transparency = trans
wait()
game:GetService("CoreGui").Library.MainFrame.LeftFrame.Transparency = trans
end)


Settings:Button('Minimise UI', function()
    
game:GetService("CoreGui").Library.MainFrame.Visible = false
wait(0.1)
Open.Visible = true
    
end)


Settings:Button('Destroy UI', function()
    
game:GetService("CoreGui").Library:Destroy()
    
end)


Credits:Header('Credits:', function()
end)

Credits:Label('Boxking776#0001 - Head Developer - Support', function()
end)

Credits:Label('- Contribution to All GUIs & Discord Server -', function()
end)

Credits:Label(' ', function()
end)

Credits:Label('liloskiller#4269 - Developer - Support', function()
end)

Credits:Label('- Contribution to Prison Life & Small Scripts -', function()
end)

Credits:Label(' ', function()
end)

Credits:Label('JoshieGemFinder#6861 - Developer - Scripter', function()
end)

Credits:Label('- Big Contribution to Bee Swarm Simulator & Small Scripts -', function()
end)

Credits:Label(' ', function()
end)

Credits:Label('Vep#1003 - Contributor - Support', function()
end)

Credits:Label('- UI Library Help & Personal Support -', function()
end)

Credits:Label(' ', function()
end)

Credits:Label('dotexe#6677 - Head Administrator - Advertising', function()
end)

Credits:Label('- Server Contribution & Advertiser -', function()
end)

Credits:Label(' ', function()
end)

Credits:Label('Sakpot#5008 - Content Creator - Advertising', function()
end)

Credits:Label('- Youtuber & Showcaser -', function()
end)

Credits:Label(' ', function()
end)
