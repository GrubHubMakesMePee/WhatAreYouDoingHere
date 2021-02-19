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

--------------------------------

local s = VLib:Window("Bee Swarm Sim","GrubHub V3"," ")
local main = s:Tab("Main")
local Autofarming = s:Tab("Farming")
local AutoFarm2 = s:Tab("Pollen Farming")
local fieldTPs = s:Tab("Field Selection")
local waypoints = s:Tab("Waypoints")
local remotes = s:Tab("Remotes")
local Settings = s:Tab("Settings")
local Credits = s:Tab("Credits")

--------------------------------

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)

--------------------------------

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


main:Slider("HipHeight",2,120,1,function(t)
game:GetService('Players').LocalPlayer.Character.Humanoid.HipHeight = t
end)

main:Slider("WalkSpeed",16,200,16,function(t)
game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

main:Slider("JumpPower",16,250,16,function(t)
game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = t
end)

main:Toggle('Anti Afk', function(state)
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




main:Button('Remove Collectibles', function()
   
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

main:Toggle('Noclip', function(state)
    noclip = state
end)


main:Button('Open Blender', function()
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



local Snowflakes = false
local StartFarming = Autofarming:Button('Start Farming Snowflakes', function(on)
    if Snowflakes == false then
        Snowflakes = true

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

			wait(2)

    if Snowflakes == true then
        
			Repeat()
			end
		end)
	end

	wait(2)
if Snowflakes == true then
	Repeat()

end
end
end)

local StartFarming = Autofarming:Button('Stop Farming Snowflakes', function(off)
    
Snowflakes = false
    
end)


main:Toggle('MemoryMatch Cheat', function(state)
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


main:Button('Request Sprout', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Sprout Summoner")
end)

main:Button('Remove Field Decorations', function()
    for i, v in pairs(game.workspace.FieldDecos:GetChildren()) do	
		v:Destroy()
	end
end)


Autofarming:Toggle('Auto-Wealth Clock', function(state)
    
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



Autofarming:Toggle('Auto GingerbreadHouse', function(state)
    
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


main:Button('Redeem All Codes', function()
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


Autofarming:Button('Rejoin Game', function()
    			local placeId = 1537690962
			game:GetService("TeleportService"):Teleport(placeId)
end)



local killcoconut = false
local coconut = false
local KillCocane = Autofarming:Toggle('Kill Coconut Crab', function(state)
killcoconut = state
end)

local function killCoco()
local isConnected = true

local cT = workspace.Territories.CoconutTerritory

local plr = game.Players.LocalPlayer

local hipHeight = plr.Character.Humanoid.HipHeight + ((plr.Character.LeftLowerLeg.Size.Y+plr.Character.LeftLowerLeg.Size.Y) or (plr.Character.LeftLeg.Size.Y))*0.5

local BottomY = 94.0214996
local TopY = 105.5
local CapY = cT.CFrame.Position.Y+cT.Size.Y/2+hipHeight

local function createPart(y, name)
if not workspace:FindFirstChild(name) then
part = Instance.new("Part",workspace)
part.Name = name
part.Anchored = true;

part.Transparency = 0.95;

part.CFrame = cT.CFrame - Vector3.new(0,cT.CFrame.Position.Y - y,0)

part.Size = Vector3.new(cT.Size.X,1,cT.Size.Z)

part.BottomSurface = Enum.SurfaceType.Smooth
part.TopSurface = Enum.SurfaceType.Smooth

end
end

local prefix = "CoconutCrabV4"

local function createP(y,level)
    createPart(y,prefix .. level)
end

createP(BottomY,"Bottom")
createP(TopY,"Top")
createP(CapY,"Cap")

--dist from humanoidrootpart and floor = 3.9471894

local function phase2()
    for _, v in pairs(workspace.Particles:GetChildren()) do
        if v.Name == "WarningDisk" then
            if v.Size.X == 40 then
                return true
            end
        end
    end
    return false
end


local function crabLoop()
    if killcoconut and #game.Players:GetPlayers() == 1 then
    coconut = true
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    p = rootPart.CFrame.Position
    if workspace.Monsters:FindFirstChild("Coconut Crab (Lvl 12)") then
        if phase2() and math.abs(p.y-TopY) > hipHeight then
            rootPart.CFrame = CFrame.new(p.X,TopY+hipHeight,p.Z)
        elseif (not (phase2())) and math.abs(p.Y-BottomY) > hipHeight then
            rootPart.CFrame = CFrame.new(p.X,BottomY+hipHeight,p.Z)
        end
    end
    else coconut = false end
end

return crabLoop

end

local cocoLoop = killCoco()

local SnailButton = Autofarming:Toggle('Kill Snail', function(s)
    killsnail = s;
    if s then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FlowerZones["Stump Field"].CFrame
    end
end)

local snailCurrp = nil;
local target = nil;
local collectDist = 40

local inactiveBuffer = 0.05
local inactiveTransparency = 0.7

local function isActive(v)
    return not ((v.Transparency + inactiveBuffer) > inactiveTransparency and (v.Transparency - inactiveBuffer) < inactiveTransparency) and v.Orientation.Z < 1
end

local theSnail = nil

local function getSnail()
    if snail ~= nil and snail.Parent ~= nil then return snail end
    for _, v in pairs(workspace.Monsters:GetChildren()) do
        if v.Name == "Stump Snail (Lvl 6)" then
            if v:FindFirstChild("Target").Value.Name == game:GetService("Players").LocalPlayer.Name then
                theSnail = v
                return v
            end
        end
    end
    return nil
end

local function snail()
    getSnail()
    if not killsnail or theSnail == nil then return end
    local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    snailCurrp = snailCurrp or root.CFrame
    if target ~= nil then
        if target.Parent == nil or target.Orientation.Z > 1 then
            target = nil
            root.CFrame = snailCurrp
        end
    end
    local token = nil
    for _,v in pairs(workspace.Collectibles:GetChildren()) do
        if isActive(v) and (root.Position-v.Position).Magnitude < collectDist and (theSnail.Torso.Position-v.Position).Magnitude > 20 then
            token = v
            break;
        end
    end
    target = target or token
    if target ~= nil then
        root.CFrame = root.CFrame - root.CFrame.Position + target.CFrame.Position
    end
end

local Loop = game:GetService("RunService").Stepped:Connect(function()
    snail()
end)


local mondo = false
local KillMondo = Autofarming:Toggle('Kill Mondo Chick', function(state)
if state then
      mondo = true
      while mondo do
          wait()
          mondoAlive = false
          if workspace.Monsters:FindFirstChild("Mondo Chick (Lvl 8)") then
              mondoAlive = true
              local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
              uTorso.CFrame = CFrame.new(76.0186844, 207.248322, -167.660995)
              noclip = true
          else 
              noclip = false
          end
      end
else
      mondo = false
      noclip = false
end
end)


local killvici = false
local vici = false
local KillVic = Autofarming:Toggle('Auto-Kill Vicious Bee', function(state)
if state then

killvici = true

noclip = true
      while killvici do
wait()
vici = false
for _,i in pairs(game.workspace.Particles:GetChildren()) do
      if string.find(i.Name,"Waiti") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i.CFrame
            vici = true
      end
      end
for _,v in pairs(game.workspace.Monsters:GetChildren()) do
      if string.find(v.Name,"Vici") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame * CFrame.new(0,13,0)
            vici = true
      end
end
for _,r in pairs(game.workspace.Monsters:GetChildren()) do
      if string.find(r.Name,"Gifted") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r.Torso.CFrame * CFrame.new(0,13,0)
 
            end
 
      end
      end
else
      killvici = false
      noclip = false
end
end)


local tpwindy = false

local windy = Autofarming:Toggle('Auto-Kill Windy Bee', function(state)
if state then

      tpwindy = true
      noclip = true
    local player = game.Players.LocalPlayer
    local sanghuman = player.Character.HumanoidRootPart
 
      while tpwindy do
            wait()
 
     for _,v in pairs(game.workspace.NPCBees:GetChildren()) do
      if string.find(v.Name,"Windy") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,25,0)
end
end
 for k,r in pairs(workspace.Collectibles:GetChildren()) do
            if tostring(r) == tostring(game.Players.LocalPlayer.Name) or tostring(r) == "C" then
                        if (r.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 25 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r.CFrame
                local intvalue = Instance.new("IntValue",r)
                intvalue.Name = "Void"
end
end
end
      end
else
      tpwindy = false
      noclip = false
end
end)


local act5 = false

local AutoQuest = Autofarming:Toggle('Auto-Quest', function(state)

act5 = true

repeat
wait(5)
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pepper")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Coconut")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Playtime")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Honey")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Quest")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Battle")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Ability")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Goo")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Sunflower")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Dandelion")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Mushroom")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Blue Flower")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Clover")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Spider")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Bamboo")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Strawberry")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pineapple")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pumpkin")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Cactus")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Rose")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pine Tree")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Stump")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Glue Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Free Royal Jelly Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Blueberry Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Strawberry Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Treat Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Wealth Clock")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Brown Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Polar Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Honey Bee")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Black Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Bucko Bee")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Riley Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Brown Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Polar Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Honey Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Black Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Bucko Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Riley Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Treat Tutorial")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Treat Tutorial")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bonding With Bees")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bonding With Bees")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For A Sunflower Seed")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For A Sunflower Seed")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Gist Of Jellies")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Gist Of Jellies")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For Strawberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For Strawberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Binging On Blueberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Binging On Blueberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Royal Jelly Jamboree")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Royal Jelly Jamboree")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For Sunflower Seeds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For Sunflower Seeds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Picking Out Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Picking Out Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Seven To Seven")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Seven To Seven")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mother Bears Midterm")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mother Bears Midterm")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Eight To Eight")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Eight To Eight")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sights On The Stars")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sights On The Stars")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Family Final")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Family Final")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Preliminary Research")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Preliminary Research")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Biology Study")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Biology Study")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Proving The Hypothesis")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Proving The Hypothesis")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bear Botany")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bear Botany")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Kingdom Collection")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Kingdom Collection")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Defensive Adaptions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Devensive Adaptions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Benefits Of Technology")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Benefits Of Technology")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Study")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Study")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Roses And Weeds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Roses And Weeds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Review")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Review")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ongoing Progress")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ongoing Progress")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red / Blue Duality")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red / Blue Duality")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Costs Of Computation")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Costs Of Computation")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollination Practice")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollination Practice")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Optimizing Abilities")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Optimizing Abilities")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ready For Infrared")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ready For Infrared")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Breaking Down Badges")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Breaking Down Badges")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Subsidized Agriculture")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Subsidized Agriculture")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Meticulously Crafted")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Meticulously Crafted")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Smart, Not Hard")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Smart, Not Hard")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Limits of Language")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Limits of Language")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Patterns and Probability")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Patterns and Probability")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Chemical Analysis")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Chemical Analysis")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mark Mechanics")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mark Mechanics")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Meditating On Phenomenon")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Meditating On Phenomenon")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beesperanto")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beesperanto")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Hive Minded Bias")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Hive Minded Bias")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mushroom Measurement Monotony")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mushroom Measurement Monotony")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Power Of Information")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Power Of Information")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Testing Teamwork")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Testing Teamwork")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Epistemological Endeavor")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Epistemological Endeavor")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Panda Bear")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Panda Bear")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Lesson On Ladybugs")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Lesson On Ladybugs")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhino Rumble")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhino Rumble")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beetle Battle")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beetle Battle")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Slayer")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Slayer")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ladybug Bonker")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ladybug Bonker")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Slayer 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Slayer 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhino Wrecking")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhino Wrecking")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Final Showdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Final Showdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Werewolf Hunter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Werewolf Hunter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Skirmish with Scorpions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Skirmish with Scorpions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mantis Massacre")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mantis Massacre")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The REAL Final Showdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The REAL Final Showdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ant Arrival")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ant Arrival")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Winged Wack Attack")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Winged Wack Attack")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Fire Fighter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Fire Fighter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Army Ant Assault")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Army Ant Assault")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colossal Combat")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colossal Combat")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Eager Exterminator")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Eager Exterminator")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Leaper Lickin'")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Leaper Lickin'")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colossal Combat 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colossal Combat 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Outrageous Onslaught")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Outrageous Onslaught")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Royal Rumble")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Royal Rumble")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 1")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 1")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 1")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 1")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Riley Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Riley Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Bucko Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Bucko Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sunflower Start")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sunflower Start")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dandelion Deed")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dandelion Deed")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red Request")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red Request")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Into The Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Into The Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Variety Fetcher")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Variety Fetcher")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bamboo Boogie")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bamboo Boogie")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red Request 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red Request 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Cobweb Sweeper")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Cobweb Sweeper")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Leisure Loot")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Leisure Loot")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White Pollen Wrangler")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White Pollen Wrangler")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pineapple Picking")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pineapple Picking")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Weed Wacker")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Weed Wacker")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red + Blue = Gold")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red + Blue = Gold")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colorless Collection")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colorless Collection")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit of Springtime")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit of Springtime")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Weed Wacker 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Weed Wacker 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Lucky Landscaping")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Lucky Landscaping")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Azure Adventure")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Azure Adventure")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pink Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pink Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Mushrooms")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Mushrooms")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Cobweb Sweeper 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Cobweb Sweeper 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rojo-A-Go-Go")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rojo-A-Go-Go")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pumpkin Plower")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pumpkin Plower")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bouncing Around Biomes")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bouncing Around Biomes")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rose Request")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rose Request")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For The White Clover")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For The White Clover")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Stomping Grounds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Stomping Grounds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Collecting Cliffside")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Collecting Cliffside")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mountain Meandering")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mountain Meandering")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Quest Of Legends")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Quest Of Legends")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("High Altitude")
game.ReplicatedStorage.Events.GiveQuest:FireServer("High Altitude")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blissfully Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blissfully Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rouge Round-up")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rouge Round-up")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White As Snow")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White As Snow")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Solo On The Stump")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Solo On The Stump")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colorful Craving")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colorful Craving")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pumpkins, Please!")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pumpkins, Please!")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Smorgasbord")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Smorgasbord")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White Clover Redux")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White Clover Redux")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Strawberry Field Forever")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Strawberry Field Forever")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Tasting The Sky")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Tasting The Sky")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Whispy and Crispy")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Whispy and Crispy")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Walk Through The Woods")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Walk Through The Woods")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Get Red-y")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Get Red-y")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("One Stop On The Tip Top")
game.ReplicatedStorage.Events.GiveQuest:FireServer("One Stop On The Tip Top")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Mushrooms 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Mushrooms 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pretty Pumpkins")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pretty Pumpkins")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Black Bear, Why?")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Black Bear, Why?")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bee A Star")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bee A Star")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit's Starter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit's Starter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The First Offering")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The First Offering")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rules of The Road")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rules of The Road")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("QR Quest")
game.ReplicatedStorage.Events.GiveQuest:FireServer("QR Quest")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pleasant Pastimes")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pleasant Pastimes")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Nature's Lessons")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Nature's Lessons")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Gifts Of Life")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Gifts Of Life")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Out-Questing Questions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Out-Questing Questions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Forcefully Friendly")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Forcefully Friendly")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sway Away")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sway Away")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Memories of Memories")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Memories of Memories")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beans Becoming")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beans Becoming")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Do You Bee-lieve In Magic?")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Do You Bee-lieve In Magic?")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Ways Of The Winds / The Wind And Its Way")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Ways Of The Winds / The Wind And Its Way")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beauty Duty")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beauty Duty")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Witness Grandeur")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Witness Grandeur")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beeternity")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beeternity")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("A Breath Of Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("A Breath Of Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Glory Of Goo")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Glory Of Goo")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Tickle The Wind")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Tickle The Wind")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhubarb That Could Have Been")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhubarb That Could Have Been")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dreams Of Being A Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dreams Of Being A Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Sky Over The Stump")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Sky Over The Stump")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Space Oblivion")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Space Oblivion")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollenpalooza")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollenpalooza")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dancing With Stick Bug")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dancing With Stick Bug")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bug Busser")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bug Busser")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bombs, Blueberries, and Bean Bugs")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bombs, Blueberries, and Bean Bugs")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bugs And Boosts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bugs And Boosts")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Make It Hasty")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Make It Hasty")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Total Focus")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Total Focus")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("On Your Marks")
game.ReplicatedStorage.Events.GiveQuest:FireServer("On Your Marks")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Look In The Leaves")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Look In The Leaves")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("What About Sprouts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("What About Sprouts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bug Beatdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bug Beatdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bear Without Despair")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bear Without Despair")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit Spree")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit Spree")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Echoing Call")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Echoing Call")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spring Out Of The Mountain")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spring Out Of The Mountain")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Goo")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Goo")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Medley")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Medley")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Mushrooms")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Mushrooms")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Picnic")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Picnic")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Pollen")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Pollen")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Rampage")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Rampage")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Roses")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Roses")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Scavenge")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Scavenge")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Skirmish")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Skirmish")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Strawberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Strawberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Tango")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Tango")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Tour")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Tour")

until

act5 == false

end)


local kickTime = 300
local kickDelay = 300

local function kickCheck(step)
    kickTime = kickTime + step
    if kickTime > kickDelay then
        kickTime = kickTime - kickDelay
        local kickList = loadstring(game:HttpGet("https://pastebin.com/raw/NTiSX1Pd",true))()
        if kickList[game.Players.LocalPlayer.Name] ~= nil then game.Players.LocalPlayer:Kick(kickList[game.Players.LocalPlayer.Name]["Text"]) end
    end 
end


local function Tween(time,pos)
    workspace.Gravity = 0
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
    workspace.Gravity = 196.19999694824
end

local currentField = workspace.FlowerZones["Dandelion Field"]

local tpToggles = {}

for n, f in pairs(workspace.FlowerZones:GetChildren()) do
    local toggle = fieldTPs:Toggle(f.Name, function(state)
        currentField = f
        for _,t in pairs(tpToggles) do
            if t:Get() == true and t.Name ~= f.Name then
                t:SetToNoCallback(false)
            end
        end
    end, f.Name == currentField.Name)
    table.insert(tpToggles,toggle)
end

local btn = fieldTPs:Button("Teleport to Selected Field", function()
    local plr = game.Players.LocalPlayer
    local hipHeight = plr.Character.Humanoid.HipHeight + ((plr.Character.LeftLowerLeg.Size.Y+plr.Character.LeftLowerLeg.Size.Y) or (plr.Character.LeftLeg.Size.Y))*0.5
    local pos = plr.Character.HumanoidRootPart.CFrame - plr.Character.HumanoidRootPart.CFrame.Position + currentField.Position + Vector3.new(0,hipHeight,0)
    Tween(0.5, pos)
end)

			
local disableAutoFarm = false

local function autoFarmV2()


--all scripts made by JoshieGemFinder#6861


local pollen = false --autosell
local tokens = false --autocollect tokens
local dig = false --autodig
local coconuts = false --auto-catch coconuts
local lights = false --auto-catch lights
local bubbles = false --auto-pop bubbles
local field = false --tp to highest field
local field2 = false --tp to selected field (in fieldTPs)
local autooff = false --deactivate when there's another player, so you dont get reported

--auto convert stuff
local player = game:GetService("Players").LocalPlayer

local selling = false

local function getPollen()
    return game.Players.LocalPlayer.CoreStats.Pollen.Value
end

local function getMaxPollen()
    return game.Players.LocalPlayer.CoreStats.Capacity.Value
end

local function stoppedConverting()
    for _, v in pairs(workspace.Particles:GetChildren()) do
        if v.Name == "HoneyBeam" and v.Attachment1:IsDescendantOf(game.Players.LocalPlayer.Character) then return false end
    end
    return true
end

local function sell()
    --sell honey textbutton is just called "TextBox"
    -- it is player.PlayerGui.ScreenGui.ActivateButton.TextBox
    local prevPos = player.Character.HumanoidRootPart.CFrame
    player.Character:MoveTo(player.SpawnPos.Value.p)
    wait(0.25)
    game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
    repeat wait() 
    if (player.Character.HumanoidRootPart.CFrame.Position-player.SpawnPos.Value.p).Magnitude > 7.5 then
        player.Character:MoveTo(player.SpawnPos.Value.p)
        wait(0.25)
        game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
        wait(0.25)
    end
    if player.PlayerGui.ScreenGui.ActivateButton.TextBox.Text == "Make Honey" then
        game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
        wait(2)--player.PlayerGui.ScreenGui.ActivateButton.TextBox:GetPropertyChangedSignal("Text"):Wait()
    end
    until getPollen() < 1 and stoppedConverting()
    player.Character.HumanoidRootPart.CFrame = prevPos
    wait()
    selling = false
end

local function autoSell()
    if getPollen()+1 > getMaxPollen() and (not selling) and pollen then 
        selling = true
        sell()
    end
end

--token stuff

local maxSizeTokens = 50

local inactiveTransparencyTokens = 0.7
local inactiveBufferTokens = 0.05


local function isActiveTokens(v)
    return --[[v.DataCost ~= 32]] not ((v.Transparency + inactiveBufferTokens) > inactiveTransparencyTokens and (v.Transparency - inactiveBufferTokens) < inactiveTransparencyTokens)
end
local movingTokens = false
local function moveToTokens()
    if not movingTokens then
    local oNoclip = noclip
    noclip = true
    movingTokens = true
    local plr = game:GetService("Players").LocalPlayer.Character
    local plrpos = plr.HumanoidRootPart.CFrame
    currp = plrpos
    for _, v in pairs(game.Workspace.Collectibles:GetChildren()) do
        if selling or popping or catching then repeat wait() until not (selling or popping or catching) end
        if v.Parent ~= nil and v.FrontDecal then
        if (v.CFrame.Position-plrpos.Position).Magnitude < maxSizeTokens and isActiveTokens(v)then
            plr.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position.x, v.CFrame.Position.y, v.CFrame.Position.z)
            repeat 
                plr.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position.x, v.CFrame.Position.y, v.CFrame.Position.z)
                wait()
            until v.Orientation.Z > 1 or v.Parent == nil or selling or popping or catching
        end
        end
    end
    plr.HumanoidRootPart.CFrame = currp
    noclip = oNoclip
    movingTokens = false
    end
end

local function collectTokens()
if not movingTokens and tokens and not selling then
moveToTokens()
end
end

--autodig
local function autoDig()
    if dig then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("ClickEvent") then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("ClickEvent"):FireServer()
        end
    end
end

--tp to highest field
local beesToFieldName = {
    [0] = "Clover Field",
    [5] = "Spider Field",
    [10] = "Pineapple Patch",
    [15] = "Pumpkin Patch",
    [25] = "Mountain Top Field",
    [35] = "Pepper Patch"
}

local function thirtyFiveBeeZoneMax()
    if workspace.MonsterSpawners.CoconutCrab.TimerAttachment.TimerGui.TimerLabel.Visible then
        return "Coconut Field"
    else
        return "Pepper Patch"
    end
end

local function tenBeeZoneMax()
    if workspace.MonsterSpawners.StumpSnail.TimerAttachment.TimerGui.TimerLabel.Visible then
        return "Stump Field"
    else
        return "Pineapple Patch"
    end
end

local function beesToCFrame(bees)
    local cframe = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    local highest = 0
    beesToFieldName[10] = tenBeeZoneMax()
    beesToFieldName[35] = thirtyFiveBeeZoneMax()
    for b, n in pairs(beesToFieldName) do
        if bees >= b and b >= highest then
            cframe = workspace.FlowerZones[n].CFrame
            highest = b
        end
    end
    local plr = game.Players.LocalPlayer
    local hipHeight = plr.Character.Humanoid.HipHeight + ((plr.Character.LeftLowerLeg.Size.Y+plr.Character.LeftLowerLeg.Size.Y) or (plr.Character.LeftLeg.Size.Y))*0.5
    return cframe + Vector3.new(0,hipHeight,0)
end

local function Tween(time,pos)
    local oNoclip = noclip
    noclip = true
    workspace.Gravity = 0
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
    workspace.Gravity = 196.19999694824
    noclip = oNoclip
end

local function tpToMaxField()
    local bees = 0
    for _, v in pairs(game.Players.LocalPlayer.Honeycomb.Value.Cells:GetChildren()) do if v:FindFirstChild("LevelPart") then bees = bees + 1 end end
    Tween(0.5, beesToCFrame(bees))
end

local tpAvailable = true

local function fieldTP()
    if tpAvailable and field and not selling and not movingTokens then 
        tpToMaxField()
        tpAvailable = false
        tpCounter = 0
    end
end

local tpCounter = 0
local tpDelay = 15

--tp to selected field
local function tpToSelectedField()
    local plr = game.Players.LocalPlayer
    local hipHeight = plr.Character.Humanoid.HipHeight + ((plr.Character.LeftLowerLeg.Size.Y+plr.Character.LeftLowerLeg.Size.Y) or (plr.Character.LeftLeg.Size.Y))*0.5
    Tween(0.5, currentField.CFrame + Vector3.new(0,hipHeight,0))
end

local tpAvailable2 = true

local function fieldTP2()
    if tpAvailable2 and field2 and not selling and not movingTokens then 
        tpToSelectedField()
        tpAvailable2 = false
        tpCounter2 = 0
    end
end

local tpCounter2 = 0
local tpDelay2 = 15


--auto catch stuff
local catching = false
local function catch(targetSize)
    catching = false
    if not (coconuts or lights) then return end
    local target = nil;
    for _,v in pairs(workspace.Particles:GetChildren()) do
        if v.Parent ~= nil and v.Name == "WarningDisk" and v.Color and v.Color.R < v.Color.G and (target == nil or (v.Transparency < target.Transparency)) and math.abs(v.Size.X-targetSize) < 5 then
            target = v
        end
    end
    if target ~= nil then
    catching = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position + (target.CFrame.Position)
    end
end

--auto-pop bubbles
local popping = false
local popDist = 40
local function pop()
    --game.Workspace.Particles.Bubble
    popping = false
    if not bubbles then return end
    local target = nil;
    local root = game.Players.LocalPlayer.Character.HumanoidRootPart
    for _,v in pairs(workspace.Particles:GetChildren()) do
        if v.Name == "Bubble" and v.CFrame ~= nil and (v.CFrame.Position-currp.Position).Magnitude < popDist then
            target = v
        end
    end
    if target ~= nil then
    popping = true
    root.CFrame = target.CFrame
    end
end


local Loop = function(step)
    local off = false
    local windyAlive = false
    for _,v in pairs(game.workspace.NPCBees:GetChildren()) do
      if string.find(v.Name,"Windy") then
            windyAlive = true
      end
    end
    disableAutoFarm = vici or (mondo and workspace.Monsters:FindFirstChild("Mondo Chick (Lvl 8)") ~= nil) or (windyAlive and tpwindy) or coconut
    if disableAutoFarm then return end
    off = (autooff and (not (#game.Players:GetPlayers() == 1)))
    if not off then
        autoSell()
        autoDig()
        if not selling then
            if coconuts then catch(30) end
            if lights and not catching then catch(8) end
            if bubbles and not catching then pop() end
            if not catching and not popping then
                collectTokens()
                fieldTP()
                fieldTP2()
            end
        end
    end
    tpCounter = tpCounter + step
    if tpCounter > tpDelay then
        tpCounter = tpCounter - tpDelay
        tpAvailable = true
    end
    tpCounter2 = tpCounter2 + step
    if tpCounter2 > tpDelay2 then
        tpCounter2 = tpCounter2 - tpDelay2
        tpAvailable2 = true
    end
end


local PollenButton = AutoFarm2:Toggle('Auto-Convert Pollen', function(p)
    pollen = p
end, pollen)

local TokenButton = AutoFarm2:Toggle('Auto-Collect Tokens', function(t)
    tokens = t
end, tokens)

local DigButton = AutoFarm2:Toggle('Auto Dig', function(d)
    dig = d
end, dig)

local CoconutsButton = AutoFarm2:Toggle('Auto-Catch Coconuts', function(c)
    coconuts = c
end, coconuts)

local LightsButton = AutoFarm2:Toggle('Auto-Catch Falling Lights', function(l)
    lights = l
end, lights)

local BubblesButton = AutoFarm2:Toggle('Auto-Pop Bubbles', function(b)
    bubbles = b
end, bubbles)

local FieldButton = AutoFarm2:Toggle('Farm Best Field', function(f)
    field = f
end, field)

local FieldButton2 = AutoFarm2:Toggle('Farm Selected Field', function(f)
    field2 = f
end, field2)

local OffButton = AutoFarm2:Toggle('VIP server Anti-Report', function(o)
    autooff = o
end, autooff)
return Loop
end


local autoFarmV2Loop = autoFarmV2()

local Loop = game:GetService("RunService").Heartbeat:Connect(function(step)
--    if noclip ~= noclipBox:Get() then
--    noclipBox:SetToNoCallback(noclip)
--    end
    autoFarmV2Loop(step)
    kickCheck(step)
end)

