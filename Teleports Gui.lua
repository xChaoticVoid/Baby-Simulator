local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Baby Simulator", "DarkTheme")
local Tab = Window:NewTab("Teleports")
local Section = Tab:NewSection("Areas")

Section:NewButton("Mars", "teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1955.13232, 16023.9072, -35070.6523, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Candy Land", "teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(153.897583, 34.0635986, -59027.3438, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Section:NewButton("Area 2", "teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.171427488327, 3.2665436267853, -571.05120849609)
end)

Section:NewButton("Area 3", "teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(681.07781982422, 3.2665433883667, -6.2119193077087)
end)

Section:NewButton("Area 4", "teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.81799697876, 3.2665467262268, 612.76513671875)
end)

Section:NewButton("Area 5", "teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1535.4704589844, 1029.8822021484, 48.353931427002)
end)

local Tab = Window:NewTab("Misc.")
local Section = Tab:NewSection("Misc.")

Section:NewSlider("Walkspeed", "walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewTextBox("Tp to Player", "Type in players name", function(txt)
    local plr1 = game.Players.LocalPlayer.Character
    local plr2 = game.Workspace:FindFirstChild(txt)
    plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
end)

local Section = Tab:NewSection("Ui Toggle")

Section:NewKeybind("Toggle Ui", "Toggle Ui", Enum.KeyCode.RightAlt, function()
	Library:ToggleUI()
end)

Section:NewLabel("Credit: Chaotic_Void")