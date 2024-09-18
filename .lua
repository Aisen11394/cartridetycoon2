local M7Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/M7ilan/M7-UI-Library/main/Source.lua')))()

local Window = M7Lib:CreateWindow("Main", "Version", "Logo ID", Color3.fromRGB(50, 200, 100))

local Tab = Window:CreateTab("Tab Name")

local Section = Tab:CreateSection("Section Name")

Section:Label("Label")

Section:Button("FARM 300K", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Aisen11394/Autofarm/main/.lua"))()
end)

Section:Toggle("Toggle me", false, function(value)
    print(value)
end)

Section:Dropdown("Difficulty", {"Easy", "Medium", "Hard"}, function(Difficulty)
    print(Difficulty)
end)

Section:KeyBind("Print KeyBind", Enum.KeyCode.M, function(input)
    print("Keybind Pressed.")
end)

Section:Slider("Speed", 100, 16, function(value)
    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = value
end)
