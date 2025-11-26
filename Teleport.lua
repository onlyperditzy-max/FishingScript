-- 🔵 PerdiTzy Hub — Teleport Module (Raw Version)
-- Script ini otomatis membuat TAB teleport di dalam Orion Window

-- pastikan OrionLib & Window sudah ada!

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ========================= DATA TELEPORT ========================= --

local TeleportLocations = {
    ["Fisherman Island"]       = CFrame.new(-3720.11, -131.22, -1480.24),
    ["Kohana"]                 = CFrame.new(-516.919983, 24.0000591, 191.007462),
    ["Kohana Volcano"]         = CFrame.new(-516.919983, 24.0000591, 191.007462),
    ["Ancient Jungle"]         = CFrame.new(1268.92957, 7.83907604, -183.377777),
    ["Ancient Inside Temple"]  = CFrame.new(1489.46289, -21.9847698, -637.516846),
    ["Esoteric Depths"]        = CFrame.new(3230.67432, -1302.85486, 1401.7002),
    ["Enchant Altar"]          = CFrame.new(3209.06812, -1302.85486, 1411.84814),
    ["Treasure Room"]          = CFrame.new(-3596.64355, -280.03598, -1633.95508),
    ["Tropical Grove"]         = CFrame.new(-2051.41309, 6.26901674, 3662),

    -- EXTRA PULAU
    ["Sisyphus Island"]        = CFrame.new(-3667.55615, -135.574417, -900.992554),
    ["Crater Island"]          = CFrame.new(1014.896, 20.9201031, 5071.43115),
}

local TeleportList = {}
for name,_ in pairs(TeleportLocations) do
    table.insert(TeleportList, name)
end

-- ========================= CREATE TAB ========================= --

local TeleTab = Window:MakeTab({
    Name = "🗺 TELEPORT",
    Icon = "rbxassetid://6026568198"
})

TeleTab:AddDropdown({
    Name = "🌍 Teleport to Location",
    Default = "Fisherman Island",
    Options = TeleportList,
    Callback = function(selected)
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root then
            root.CFrame = TeleportLocations[selected]
        end
    end
})

return true
