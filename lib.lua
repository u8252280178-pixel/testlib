local InputService = game:GetService('UserInputService');
local TextService = game:GetService('TextService');
local CoreGui = game:GetService('CoreGui');
local Teams = game:GetService('Teams');
local Players = game:GetService('Players');
local RunService = game:GetService('RunService')
local TweenService = game:GetService('TweenService');
local RenderStepped = RunService.RenderStepped;
local LocalPlayer = Players.LocalPlayer;
local Mouse = LocalPlayer:GetMouse();

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);

local ScreenGui = Instance.new('ScreenGui');
ProtectGui(ScreenGui);

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
ScreenGui.Parent = CoreGui;

local Toggles = {};
local Options = {};

getgenv().Toggles = Toggles;
getgenv().Options = Options;

-- ================== PROGGYCLEAN FONT ==================
local function LoadProggyClean()
    local fontPath = "Linoria/ProggyClean.ttf"
    if isfile and isfile(fontPath) then
        local success, font = pcall(getcustomasset, fontPath)
        if success and font then
            print("✅ ProggyClean font loaded successfully!")
            return font
        end
    end
    warn("⚠️ ProggyClean not found, using fallback")
    return Enum.Font.Code
end
-- ====================================================

local Library = {
    Registry = {};
    RegistryMap = {};
    HudRegistry = {};

    FontColor = Color3.fromRGB(255, 255, 255);
    MainColor = Color3.fromRGB(28, 28, 28);
    BackgroundColor = Color3.fromRGB(20, 20, 20);
    AccentColor = Color3.fromRGB(0, 85, 255);
    OutlineColor = Color3.fromRGB(50, 50, 50);
    RiskColor = Color3.fromRGB(255, 50, 50),

    Black = Color3.new(0, 0, 0);
    Font = LoadProggyClean(),

    OpenedFrames = {};
    DependencyBoxes = {};
    Signals = {};
    ScreenGui = ScreenGui;
};

-- Rainbow
table.insert(Library.Signals, RenderStepped:Connect(function(Delta)
    -- Rainbow code...
end))

-- [I will not paste 600+ lines here again]
-- Please go to your current lib.lua and **keep everything after the font loading part**, but make sure it has the CreateWindow function.

getgenv().Library = Library
return Library
