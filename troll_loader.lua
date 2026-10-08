
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera


local Config = {
    ESPEnabled = false,
    AimbotEnabled = false,
    FlyEnabled = false,
    FlySpeed = 50
}


local function createESP(player)
    if player == LocalPlayer then return end
    local highlight = Instance.new("Highlight")
    highlight.Name = "SentinelESP"
    highlight.Adornee = player.Character
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.Parent = player.Character
end

for _, p in ipairs(Players:GetPlayers()) do
    createESP(p)
end

-- En Sona Yazılacak Kod (Arayüz Paneli):
if CoreGui:FindFirstChild("SentinelGUI") then
    CoreGui.SentinelGUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SentinelGUI"
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 320, 0, 380)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -190)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- Başlık
local TitleBar = Instance.new("TextLabel")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TitleBar.Text = "  S E N T I N E L  //  Troll Suite"
TitleBar.TextColor3 = Color3.fromRGB(0, 255, 128)
TitleBar.Parent = MainFrame