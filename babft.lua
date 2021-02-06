local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/YummySource",true))()
 
local main = library:CreateWindow('Main')
local Items = library:CreateWindow('Items')
local Teams = library:CreateWindow('Teams')
 
local Feature = main:Button('Infinite Blocks', function()
    
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.BuildGui.InventoryFrame.ScrollingFrame.BlocksFrame:GetChildren()) do
    if v:FindFirstChild("AmountText") then
        v.AmountText.Text = 999
        v.AmountText.Changed:Connect(function()
            v.AmountText.Text = 999
        end)
    end
end
    
end)

local Feature = main:Button('Clear All Blocks', function()
    

workspace.ClearAllPlayersBoatParts:FireServer()

    
end)

local Feature = Items:Button('Open Common Chest', function()
    
local args = {
    [1] = "Common Chest",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)

local Feature = Items:Button('Open Uncommon Chest', function()
    
local args = {
    [1] = "Uncommon Chest",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)

local Feature = Items:Button('Open Rare Chest', function()
    
local args = {
    [1] = "Rare Chest",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

end)



local Feature = Items:Button('Open Epic Chest', function()
    
local args = {
    [1] = "Epic Chest",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)



local Feature = Items:Button('Open Legendary Chest', function()
    
local args = {
    [1] = "Legendary Chest",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
end)


local Feature = Items:Button('Buy Locked Door', function()
    
local args = {
    [1] = "Locked Doors",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

end)


local Feature = Items:Button('Buy ObsidianBlock', function()
    
local args = {
    [1] = "ObsidianBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy TitaniumBlock', function()
    
local args = {
    [1] = "TitaniumBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy WoodenBlock', function()
    
local args = {
    [1] = "WoodBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy MarbleBlock', function()
    
local args = {
    [1] = "MarbleBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy MarbleBlock', function()
    
local args = {
    [1] = "MarbleBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy BrickBlock', function()
    
local args = {
    [1] = "BrickBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy CoalBlock', function()
    
local args = {
    [1] = "CoalBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)



local Feature = Items:Button('Buy IceBlock', function()
    
local args = {
    [1] = "IceBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy ConcreteBlock', function()
    
local args = {
    [1] = "ConcreteBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)



local Feature = Items:Button('Buy MetalBlock', function()
    
local args = {
    [1] = "MetalBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)



local Feature = Items:Button('Buy RustedBlock', function()
    
local args = {
    [1] = "RustedBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy SandBlock', function()
    
local args = {
    [1] = "SandBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy GrassBlock', function()
    
local args = {
    [1] = "GrassBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy PlasticBlock', function()
    
local args = {
    [1] = "PlasticBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy FabricBlock', function()
    
local args = {
    [1] = "FabricBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy StoneBlock', function()
    
local args = {
    [1] = "StoneBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy GlassBlock', function()
    
local args = {
    [1] = "GlassBlock",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy DomeCamera', function()
    
local args = {
    [1] = "CameraDome",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy Camera', function()
    
local args = {
    [1] = "Camera",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = Items:Button('Buy Balloons', function()
    
local args = {
    [1] = "Balloons",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)



local Feature = Items:Button('Buy Sign', function()
    
local args = {
    [1] = "Sign",
    [2] = 1
}

workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    
end)


local Feature = main:Button('Destroy Trees', function()
    
    game:GetService("Workspace").Trees:Destroy()
    
end)



local Feature = main:Toggle('Enable PVP', function(state)
    
    if state then
    
    game:GetService("Players").LocalPlayer.Settings.PVP.Value = true
    
    else
        
     game:GetService("Players").LocalPlayer.Settings.PVP.Value = false   
end    
end)


local Feature = Teams:Button('Launch Green Team', function()

workspace.CamoZone.RE:FireServer()
    
end)


local Feature = Teams:Button('Launch Black Team', function()

workspace.BlackZone.RE:FireServer()
    
end)


local Feature = Teams:Button('Launch Purple Team', function()

workspace.MagentaZone.RE:FireServer()
    
end)

local Feature = Teams:Button('Launch Red Team', function()

workspace["Really redZone"].RE:FireServer()
    
end)

local Feature = Teams:Button('Launch Yellow Team', function()

workspace["New YellerZone"].RE:FireServer()
    
end)


local Feature = Teams:Button('Launch Blue Team', function()

workspace["Really blueZone"].RE:FireServer()
    
end)


local Feature = Teams:Button('Launch White Team', function()

workspace.WhiteZone.RE:FireServer()
    
end)


local Feature = Teams:Button('Request Green Team', function()

local args = {
    [1] = game:GetService("Teams").green
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)


local Feature = Teams:Button('Request Black Team', function()

local args = {
    [1] = game:GetService("Teams").black
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)


local Feature = Teams:Button('Request Purple Team', function()

local args = {
    [1] = game:GetService("Teams").magenta
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)

local Feature = Teams:Button('Request Red Team', function()

local args = {
    [1] = game:GetService("Teams").red
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)

local Feature = Teams:Button('Request Yellow Team', function()

local args = {
    [1] = game:GetService("Teams").yellow
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)


local Feature = Teams:Button('Request Yellow Team', function()

local args = {
    [1] = game:GetService("Teams").yellow
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)


local Feature = Teams:Button('Request Blue Team', function()

local args = {
    [1] = game:GetService("Teams").blue
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)


local Feature = Teams:Button('Request White Team', function()

local args = {
    [1] = game:GetService("Teams").white
}

workspace.ChangeTeam:FireServer(unpack(args))

    
end)


local Feature = main:Button('Morph Fox', function()
    local A_1 = "FoxCharacter"
local Event = game:GetService("Workspace").ChangeCharacter
Event:FireServer(A_1)
end)


local Feature = main:Button('Morph Chicken', function()
local A_1 = "ChickenCharacter"
local Event = game:GetService("Workspace").ChangeCharacter
Event:FireServer(A_1)
end)

local Feature = main:Button('Morph Penguin', function()
local A_1 = "PenguinCharacter"
local Event = game:GetService("Workspace").ChangeCharacter
Event:FireServer(A_1)
end)
