


repeat
    wait()
until game:IsLoaded()
local vu1 = {}
local vu2 = game:GetService("UserInputService")
local vu3 = game:GetService("TweenService")
local vu4 = game:GetService("RunService")
local vu5 = game:GetService("Players").LocalPlayer:GetMouse()
local vu6 = game:GetService("HttpService")
local vu7 = {}
_G.Key = ""
_G.Discord = ""
if game.CoreGui:FindFirstChild(_G.Key .. "," .. _G.Discord) then
    game.CoreGui:FindFirstChild(_G.Key .. "," .. _G.Discord):Destroy()
end
local vu8 = {}
local vu12 = setmetatable({}, {
    __newindex = function(p9, p10, p11)
        rawset(p9, p10, p11)
    end
})
local vu13 = {
    FileName = game.Players.LocalPlayer.Name .. "_HazePiece",
    Folder = "Hyper",
    AutoSave = true
}
function vu8.Create(_)
    local vu14 = vu13.FileName
    local vu15 = vu13.Folder
    if not isfolder(vu15) then
        makefolder(vu15)
    end
    if isfile(vu15 .. "/" .. vu14 .. ".json") then
        return {
            true,
            "Folder Created."
        }
    end
    xpcall(function()
        writefile(vu15 .. "/" .. vu14 .. ".json", "{}")
    end, function(p16)
        return {
            false,
            p16
        }
    end)
end
function vu8.Loadfile(_)
    local vu17 = vu13.FileName
    local vu18 = vu13.Folder
    if not isfolder(vu18) then
        vu8:Create()
    end
    if not isfile(vu18 .. "/" .. vu17 .. ".json") then
        vu8:Create()
        return {
            false,
            "Somethings error in Line :" .. debug.traceback()
        }
    end
    xpcall(function()
        local v19 = game:GetService("HttpService"):JSONDecode(readfile(vu18 .. "/" .. vu17 .. ".json"))
        vu12 = v19
        return {
            true,
            v19
        }
    end, function(p20)
        return {
            false,
            p20
        }
    end)
end
function vu8.SaveFile(_)
    local v21 = vu13.FileName
    local v22 = vu13.Folder
    if not isfolder(v22) then
        vu8:Create()
    end
    if not isfile(v22 .. "/" .. v21 .. ".json") then
        vu8:Create()
        return {
            false,
            "Somethings error in Line :" .. debug.traceback()
        }
    end
    local v23, v24 = pcall(game.HttpService.JSONEncode, game.HttpService, vu12)
    if not v23 then
        return {
            false,
            "Somethings error pls try again." .. debug.traceback()
        }
    end
    writefile(v22 .. "/" .. v21 .. ".json", v24)
    return {
        true,
        "Success to readfile"
    }
end
pcall(function()
    vu7 = vu6:JSONDecode(readfile("Ex.txt"))
end)
local vu25 = vu7.pfp or "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
local vu26 = vu7.user or game.Players.LocalPlayer.Name
local vu27 = vu7.tag or tostring(math.random(1, 10))
local function vu29()
    vu7.pfp = vu25
    vu7.user = vu26
    vu7.tag = vu27
    local v28 = vu6
    writefile("Ex.txt", v28:JSONEncode(vu7))
end
local function vu44(p30, pu31)
    local vu32 = nil
    local vu33 = nil
    local vu34 = nil
    local vu35 = nil
    local function vu40(p36)
        local v37 = p36.Position - vu32
        local v38 = vu3
        local v39 = {
            Position = UDim2.new(vu33.X.Scale, vu33.X.Offset + v37.X, vu33.Y.Scale, vu33.Y.Offset + v37.Y)
        }
        v38:Create(pu31, TweenInfo.new(0.2), v39):Play()
    end
    p30.InputBegan:Connect(function(pu41)
        if pu41.UserInputType == Enum.UserInputType.MouseButton1 or pu41.UserInputType == Enum.UserInputType.Touch then
            vu34 = true
            vu32 = pu41.Position
            vu33 = pu31.Position
            pu41.Changed:Connect(function()
                if pu41.UserInputState == Enum.UserInputState.End then
                    vu34 = false
                end
            end)
        end
    end)
    p30.InputChanged:Connect(function(p42)
        if p42.UserInputType == Enum.UserInputType.MouseMovement or p42.UserInputType == Enum.UserInputType.Touch then
            vu35 = p42
        end
    end)
    vu2.InputChanged:Connect(function(p43)
        if p43 == vu35 and vu34 then
            vu40(p43)
        end
    end)
end
local vu45 = Instance.new("ScreenGui")
vu45.Name = _G.Key .. "," .. _G.Discord
vu45.Parent = game.CoreGui
vu45.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game:GetService("UserInputService").InputBegan:connect(function(p46, _)
    if p46.KeyCode == Enum.KeyCode.L then
        wait()
        vu45.Enabled = not vu45.Enabled
    end
end)
function vu1.Window(_, p47, _)
    local vu48 = ""
    local vu49 = false
    local vu50 = false
    local vu51 = false
    local vu52 = Instance.new("Frame")
    local v53 = Instance.new("Frame")
    local v54 = Instance.new("TextLabel")
    local vu55 = Instance.new("TextButton")
    local v56 = Instance.new("ImageLabel")
    local vu57 = Instance.new("TextButton")
    local v58 = Instance.new("ImageLabel")
    local vu59 = Instance.new("Folder")
    local v60 = Instance.new("Frame")
    local v61 = Instance.new("Frame")
    local v62 = Instance.new("UICorner")
    local v63 = Instance.new("UICorner")
    local vu64 = Instance.new("ImageLabel")
    local v65 = Instance.new("ImageLabel")
    local vu66 = Instance.new("TextLabel")
    local vu67 = Instance.new("TextLabel")
    local vu68 = Instance.new("Frame")
    local vu69 = Instance.new("ScrollingFrame")
    local vu70 = Instance.new("UIListLayout")
    local v71 = Instance.new("UIPadding")
    local vu72 = Instance.new("Frame")
    local v73 = Instance.new("Frame")
    vu52.Name = "MainFrame"
    vu52.Parent = vu45
    vu52.AnchorPoint = Vector2.new(0.5, 0.5)
    vu52.BackgroundColor3 = Color3.fromRGB(28, 28, 33)
    vu52.BackgroundTransparency = 1
    vu52.BorderSizePixel = 0
    vu52.ClipsDescendants = true
    vu52.Position = UDim2.new(0.5, 0, 0.5, 0)
    vu52.Size = UDim2.new(0, 611, 0, 396)
    v63.CornerRadius = UDim.new(0, 7)
    v63.Name = "UserIconCorner"
    v63.Parent = vu52
    v53.Name = "TopFrame"
    v53.Parent = vu52
    v53.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v53.BackgroundTransparency = 1
    v53.BorderSizePixel = 0
    v53.Position = UDim2.new(- 0.000658480625, 0, 0, 0)
    v53.Size = UDim2.new(0, 681, 0, 22)
    v73.Name = "TopFramess"
    v73.Parent = v53
    v73.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v73.BackgroundTransparency = 1
    v73.BorderSizePixel = 0
    v73.ZIndex = 99
    v73.Position = UDim2.new(- 0.2, 0, 1.3, 0)
    v73.Size = UDim2.new(0, 681, 0, 22)
    vu72.Name = "TopFrameHolder"
    vu72.Parent = v53
    vu72.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    vu72.BackgroundTransparency = 1
    vu72.BorderSizePixel = 0
    vu72.Position = UDim2.new(- 0.000658480625, 0, 0, 0)
    vu72.Size = UDim2.new(0, 20, 0, 22)
    v54.Name = "Title"
    v54.Parent = v53
    v54.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v54.BackgroundTransparency = 1
    v54.Position = UDim2.new(0.0102790017, 0, 0, 0)
    v54.Size = UDim2.new(0, 192, 0, 23)
    v54.Font = Enum.Font.GothamBold
    v54.Text = p47
    v54.TextTransparency = 0
    v54.TextColor3 = Color3.fromRGB(255, 255, 255)
    v54.TextSize = 13
    v54.TextXAlignment = Enum.TextXAlignment.Left
    vu55.Name = "CloseBtn"
    vu55.Parent = v53
    vu55.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    vu55.BackgroundTransparency = 1
    vu55.Position = UDim2.new(0.85, 0, 1.3, 0)
    vu55.Size = UDim2.new(0, 28, 0, 22)
    vu55.Font = Enum.Font.Gotham
    vu55.Text = ""
    vu55.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu55.TextSize = 14
    vu55.BorderSizePixel = 0
    vu55.AutoButtonColor = false
    v56.Name = "CloseIcon"
    v56.Parent = vu55
    v56.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v56.BackgroundTransparency = 1
    v56.Position = UDim2.new(0.2, 0, 0.128935531, 0)
    v56.Size = UDim2.new(0, 17, 0, 17)
    v56.Image = "http://www.roblox.com/asset/?id=6035047409"
    v56.ImageColor3 = Color3.fromRGB(220, 221, 222)
    vu57.Name = "MinimizeButton"
    vu57.Parent = v53
    vu57.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    vu57.BackgroundTransparency = 1
    vu57.Position = UDim2.new(0.8, 0, 1.3, 0)
    vu57.Size = UDim2.new(0, 28, 0, 22)
    vu57.Font = Enum.Font.Gotham
    vu57.Text = ""
    vu57.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu57.TextSize = 14
    vu57.BorderSizePixel = 0
    vu57.AutoButtonColor = false
    v58.Name = "MinimizeLabel"
    v58.Parent = vu57
    v58.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v58.BackgroundTransparency = 1
    v58.Position = UDim2.new(0.2, 0, 0.128935531, 0)
    v58.Size = UDim2.new(0, 17, 0, 17)
    v58.Image = "http://www.roblox.com/asset/?id=6035067836"
    v58.ImageColor3 = Color3.fromRGB(220, 221, 222)
    vu59.Name = "ServersHolder"
    vu59.Parent = vu72
    v60.Name = "Userpad"
    v60.Parent = vu72
    v60.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    v60.BorderSizePixel = 0
    v60.Position = UDim2.new(0.106243297, 0, 15.9807148, 0)
    v60.Size = UDim2.new(0, 179, 0, 43)
    v61.Name = "UserIcon"
    v61.Parent = v60
    v61.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    v61.BorderSizePixel = 0
    v61.Position = UDim2.new(0.0340000018, 0, 0.123999998, 0)
    v61.Size = UDim2.new(0, 32, 0, 32)
    v62.CornerRadius = UDim.new(1, 8)
    v62.Name = "UserIconCorner"
    v62.Parent = v61
    vu64.Name = "UserImage"
    vu64.Parent = v61
    vu64.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu64.BackgroundTransparency = 1
    vu64.Size = UDim2.new(0, 32, 0, 32)
    vu64.Image = ""
    v65.Name = "UserImage"
    v65.Parent = vu64
    v65.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v65.BackgroundTransparency = 1
    v65.Size = UDim2.new(0, 32, 0, 32)
    v65.Image = "rbxassetid://4031889928"
    v65.ImageColor3 = Color3.fromRGB(20, 20, 20)
    vu66.Name = "UserName"
    vu66.Parent = v60
    vu66.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu66.BackgroundTransparency = 1
    vu66.BorderSizePixel = 0
    vu66.Position = UDim2.new(0.230000004, 0, 0.115999997, 0)
    vu66.Size = UDim2.new(0, 98, 0, 17)
    vu66.Font = Enum.Font.GothamSemibold
    vu66.TextSize = 13
    vu66.TextTransparency = 1
    vu66.TextXAlignment = Enum.TextXAlignment.Left
    vu66.ClipsDescendants = true
    vu67.Name = "UserTag"
    vu67.Parent = v60
    vu67.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu67.BackgroundTransparency = 1
    vu67.BorderSizePixel = 0
    vu67.Position = UDim2.new(0.230000004, 0, 0.275000013, 0)
    vu67.Size = UDim2.new(0, 95, 0, 17)
    vu67.Font = Enum.Font.GothamBold
    vu67.TextColor3 = Color3.fromRGB(231, 23, 55)
    vu67.TextSize = 13
    vu67.TextTransparency = 0
    vu67.TextXAlignment = Enum.TextXAlignment.Left
    vu66.Text = "Hyper"
    vu67.Text = ""
    vu68.Name = "ServersHoldFrame"
    vu68.Parent = vu52
    vu68.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu68.BackgroundTransparency = 1
    vu68.BorderColor3 = Color3.fromRGB(20, 20, 20)
    vu68.Size = UDim2.new(0, 71, 0, 396)
    vu69.Name = "ServersHold"
    vu69.Parent = vu68
    vu69.Active = true
    vu69.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu69.BackgroundTransparency = 1
    vu69.BorderSizePixel = 0
    vu69.Position = UDim2.new(- 0.000359333731, 0, 0.0580808073, 0)
    vu69.Size = UDim2.new(0, 71, 0, 373)
    vu69.ScrollBarThickness = 1
    vu69.ScrollBarImageTransparency = 1
    vu69.CanvasSize = UDim2.new(0, 0, 0, 0)
    vu70.Name = "ServersHoldLayout"
    vu70.Parent = vu69
    vu70.SortOrder = Enum.SortOrder.LayoutOrder
    vu70.Padding = UDim.new(0, 7)
    v71.Name = "ServersHoldPadding"
    v71.Parent = vu69
    vu55.MouseButton1Click:Connect(function()
        vu52:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)
    end)
    vu55.MouseEnter:Connect(function()
        vu55.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    end)
    vu55.MouseLeave:Connect(function()
        vu55.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    end)
    vu57.MouseEnter:Connect(function()
        vu57.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    end)
    vu57.MouseLeave:Connect(function()
        vu57.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    end)
    vu57.MouseButton1Click:Connect(function()
        if vu49 ~= false then
            vu52:TweenSize(UDim2.new(0, 611, 0, 396), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
        else
            vu52:TweenSize(UDim2.new(0, 611, 0, 64), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
        end
        vu49 = not vu49
    end)
    local v74 = Instance.new("TextButton")
    local v75 = Instance.new("ImageLabel")
    v74.Name = "SettingsOpenBtn"
    v74.Parent = v60
    v74.BackgroundColor3 = Color3.fromRGB(53, 56, 62)
    v74.BackgroundTransparency = 1
    v74.Position = UDim2.new(0.849161983, 0, 0.279069781, 0)
    v74.Size = UDim2.new(0, 0, 0, 0)
    v74.Font = Enum.Font.SourceSans
    v74.Text = ""
    v74.TextColor3 = Color3.fromRGB(0, 0, 0)
    v74.TextSize = 14
    v75.Name = "SettingsOpenBtnIco"
    v75.Parent = v74
    v75.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    v75.BackgroundTransparency = 1
    v75.Size = UDim2.new(0, 0, 0, 0)
    v75.ImageTransparency = 1
    v75.Image = "http://www.roblox.com/asset/?id=6031280882"
    v75.ImageColor3 = Color3.fromRGB(220, 220, 220)
    local vu76 = Instance.new("Frame")
    local vu77 = Instance.new("Frame")
    local vu78 = Instance.new("Frame")
    local v79 = Instance.new("TextButton")
    local v80 = Instance.new("UICorner")
    local vu81 = Instance.new("Frame")
    local v82 = Instance.new("UICorner")
    local v83 = Instance.new("ImageLabel")
    local v84 = Instance.new("TextLabel")
    local v85 = Instance.new("Frame")
    local v86 = Instance.new("Frame")
    local v87 = Instance.new("UICorner")
    local v88 = Instance.new("TextLabel")
    local v89 = Instance.new("Frame")
    local vu90 = Instance.new("TextLabel")
    local v91 = Instance.new("UIListLayout")
    local vu92 = Instance.new("TextLabel")
    local vu93 = Instance.new("TextButton")
    local v94 = Instance.new("UICorner")
    local v95 = Instance.new("TextButton")
    local vu96 = Instance.new("ImageLabel")
    local v97 = Instance.new("ImageLabel")
    local vu98 = Instance.new("Frame")
    local v99 = Instance.new("UICorner")
    local v100 = Instance.new("TextLabel")
    local v101 = Instance.new("Frame")
    local v102 = Instance.new("UICorner")
    local v103 = Instance.new("ImageLabel")
    local v104 = Instance.new("Frame")
    local vu105 = Instance.new("TextLabel")
    local v106 = Instance.new("UIListLayout")
    local vu107 = Instance.new("TextLabel")
    local v108 = Instance.new("UICorner")
    local v109 = Instance.new("Frame")
    local v110 = Instance.new("TextButton")
    local v111 = Instance.new("UICorner")
    local v112 = Instance.new("TextLabel")
    local v113 = Instance.new("TextLabel")
    local v114 = Instance.new("TextLabel")
    local v115 = Instance.new("TextLabel")
    vu76.Name = "SettingsFrame"
    vu76.Parent = vu52
    vu76.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    vu76.BackgroundTransparency = 1
    vu76.Size = UDim2.new(0, 681, 0, 396)
    vu76.Visible = false
    vu77.Name = "Settings"
    vu77.Parent = vu76
    vu77.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
    vu77.BorderSizePixel = 0
    vu77.Position = UDim2.new(0, 0, 0.0530303046, 0)
    vu77.Size = UDim2.new(0, 681, 0, 375)
    vu78.Name = "SettingsHolder"
    vu78.Parent = vu77
    vu78.AnchorPoint = Vector2.new(0.5, 0.5)
    vu78.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu78.BackgroundTransparency = 1
    vu78.ClipsDescendants = true
    vu78.Position = UDim2.new(0.49926579, 0, 0.498666674, 0)
    vu78.Size = UDim2.new(0, 0, 0, 0)
    v79.Name = "CloseSettingsBtn"
    v79.Parent = vu78
    v79.AnchorPoint = Vector2.new(0.5, 0.5)
    v79.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    v79.Position = UDim2.new(0.952967286, 0, 0.0853333324, 0)
    v79.Selectable = false
    v79.Size = UDim2.new(0, 30, 0, 30)
    v79.AutoButtonColor = false
    v79.Font = Enum.Font.SourceSans
    v79.Text = ""
    v79.TextColor3 = Color3.fromRGB(0, 0, 0)
    v79.TextSize = 14
    v80.CornerRadius = UDim.new(1, 0)
    v80.Name = "CloseSettingsBtnCorner"
    v80.Parent = v79
    vu81.Name = "CloseSettingsBtnCircle"
    vu81.Parent = v79
    vu81.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
    vu81.Position = UDim2.new(0.0879999995, 0, 0.118000001, 0)
    vu81.Size = UDim2.new(0, 24, 0, 24)
    v82.CornerRadius = UDim.new(1, 0)
    v82.Name = "CloseSettingsBtnCircleCorner"
    v82.Parent = vu81
    v83.Name = "CloseSettingsBtnIcon"
    v83.Parent = vu81
    v83.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v83.BackgroundTransparency = 1
    v83.Position = UDim2.new(0, 2, 0, 2)
    v83.Size = UDim2.new(0, 19, 0, 19)
    v83.Image = "http://www.roblox.com/asset/?id=6035047409"
    v83.ImageColor3 = Color3.fromRGB(222, 222, 222)
    v79.MouseButton1Click:Connect(function()
        vu51 = false
        vu72.Visible = true
        vu68.Visible = true
        vu78:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
        vu3:Create(vu77, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 1
        }):Play()
        local v116 = next
        local v117, v118 = vu78:GetChildren()
        while true do
            local v119
            v118, v119 = v116(v117, v118)
            if v118 == nil then
                break
            end
            vu3:Create(v119, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
        end
        wait(0.3)
        vu76.Visible = false
    end)
    v79.MouseEnter:Connect(function()
        vu81.BackgroundColor3 = Color3.fromRGB(72, 76, 82)
    end)
    v79.MouseLeave:Connect(function()
        vu81.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
    end)
    vu2.InputBegan:Connect(function(p120, _)
        if p120.KeyCode == Enum.KeyCode.RightControl and vu51 == true then
            vu51 = false
            vu72.Visible = true
            vu68.Visible = true
            vu78:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
            vu3:Create(vu77, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            local v121 = next
            local v122, v123 = vu78:GetChildren()
            while true do
                local v124
                v123, v124 = v121(v122, v123)
                if v123 == nil then
                    break
                end
                vu3:Create(v124, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    BackgroundTransparency = 1
                }):Play()
            end
            wait(0.3)
            vu76.Visible = false
        end
    end)
    v84.Parent = v79
    v84.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v84.BackgroundTransparency = 1
    v84.Position = UDim2.new(- 0.0666666701, 0, 1.06666672, 0)
    v84.Size = UDim2.new(0, 34, 0, 22)
    v84.Font = Enum.Font.GothamSemibold
    v84.Text = "rightctrl"
    v84.TextColor3 = Color3.fromRGB(113, 117, 123)
    v84.TextSize = 11
    v85.Name = "UserPanel"
    v85.Parent = vu78
    v85.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
    v85.Position = UDim2.new(0.365638763, 0, 0.130666673, 0)
    v85.Size = UDim2.new(0, 362, 0, 164)
    v86.Name = "UserSettingsPad"
    v86.Parent = v85
    v86.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
    v86.Position = UDim2.new(0.0331491716, 0, 0.568140388, 0)
    v86.Size = UDim2.new(0, 337, 0, 56)
    v87.Name = "UserSettingsPadCorner"
    v87.Parent = v86
    v88.Name = "UsernameText"
    v88.Parent = v86
    v88.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v88.BackgroundTransparency = 1
    v88.Position = UDim2.new(0.0419999994, 0, 0.154714286, 0)
    v88.Size = UDim2.new(0, 65, 0, 19)
    v88.Font = Enum.Font.GothamBold
    v88.Text = "USERNAME"
    v88.TextColor3 = Color3.fromRGB(126, 130, 136)
    v88.TextSize = 11
    v88.TextXAlignment = Enum.TextXAlignment.Left
    v89.Name = "UserSettingsPadUserTag"
    v89.Parent = v86
    v89.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v89.BackgroundTransparency = 1
    v89.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
    v89.Size = UDim2.new(0, 65, 0, 19)
    vu90.Name = "UserSettingsPadUser"
    vu90.Parent = v89
    vu90.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu90.BackgroundTransparency = 1
    vu90.Font = Enum.Font.Gotham
    vu90.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu90.TextSize = 13
    vu90.TextXAlignment = Enum.TextXAlignment.Left
    vu90.Text = vu26
    vu90.Size = UDim2.new(0, vu90.TextBounds.X + 2, 0, 19)
    v91.Name = "UserSettingsPadUserTagLayout"
    v91.Parent = v89
    v91.FillDirection = Enum.FillDirection.Horizontal
    v91.SortOrder = Enum.SortOrder.LayoutOrder
    vu92.Name = "UserSettingsPadTag"
    vu92.Parent = v89
    vu92.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu92.BackgroundTransparency = 1
    vu92.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
    vu92.Size = UDim2.new(0, 65, 0, 19)
    vu92.Font = Enum.Font.Gotham
    vu92.Text = "#" .. vu27
    vu92.TextColor3 = Color3.fromRGB(184, 186, 189)
    vu92.TextSize = 13
    vu92.TextXAlignment = Enum.TextXAlignment.Left
    vu93.Name = "EditBtn"
    vu93.Parent = v86
    vu93.BackgroundColor3 = Color3.fromRGB(116, 127, 141)
    vu93.Position = UDim2.new(0.797671914, 0, 0.232142866, 0)
    vu93.Size = UDim2.new(0, 55, 0, 30)
    vu93.Font = Enum.Font.Gotham
    vu93.Text = "Edit"
    vu93.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu93.TextSize = 14
    vu93.AutoButtonColor = false
    vu93.MouseEnter:Connect(function()
        vu3:Create(vu93, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(104, 114, 127)
        }):Play()
    end)
    vu93.MouseLeave:Connect(function()
        vu3:Create(vu93, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(116, 127, 141)
        }):Play()
    end)
    v94.CornerRadius = UDim.new(0, 3)
    v94.Name = "EditBtnCorner"
    v94.Parent = vu93
    v95.Name = "UserPanelUserIcon"
    v95.Parent = v85
    v95.BackgroundColor3 = Color3.fromRGB(31, 33, 36)
    v95.BorderSizePixel = 0
    v95.Position = UDim2.new(0.0340000018, 0, 0.074000001, 0)
    v95.Size = UDim2.new(0, 71, 0, 71)
    v95.AutoButtonColor = false
    v95.Text = ""
    vu96.Name = "UserPanelUserImage"
    vu96.Parent = v95
    vu96.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu96.BackgroundTransparency = 1
    vu96.Size = UDim2.new(0, 71, 0, 71)
    vu96.Image = vu25
    v97.Name = "UserPanelUserCircle"
    v97.Parent = vu96
    v97.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v97.BackgroundTransparency = 1
    v97.Size = UDim2.new(0, 71, 0, 71)
    v97.Image = "rbxassetid://4031889928"
    v97.ImageColor3 = Color3.fromRGB(47, 49, 54)
    vu98.Name = "BlackFrame"
    vu98.Parent = v95
    vu98.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    vu98.BackgroundTransparency = 0.4
    vu98.BorderSizePixel = 0
    vu98.Size = UDim2.new(0, 71, 0, 71)
    vu98.Visible = false
    v99.CornerRadius = UDim.new(1, 8)
    v99.Name = "BlackFrameCorner"
    v99.Parent = vu98
    v100.Name = "ChangeAvatarText"
    v100.Parent = vu98
    v100.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v100.BackgroundTransparency = 1
    v100.Size = UDim2.new(0, 71, 0, 71)
    v100.Font = Enum.Font.GothamBold
    v100.Text = "CHAGNE    AVATAR"
    v100.TextColor3 = Color3.fromRGB(255, 255, 255)
    v100.TextSize = 11
    v100.TextWrapped = true
    v101.Name = "SearchIcoFrame"
    v101.Parent = v95
    v101.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
    v101.Position = UDim2.new(0.657999992, 0, 0, 0)
    v101.Size = UDim2.new(0, 20, 0, 20)
    v102.CornerRadius = UDim.new(1, 8)
    v102.Name = "SearchIcoFrameCorner"
    v102.Parent = v101
    v103.Name = "SearchIco"
    v103.Parent = v101
    v103.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v103.BackgroundTransparency = 1
    v103.Position = UDim2.new(0.150000006, 0, 0.100000001, 0)
    v103.Size = UDim2.new(0, 15, 0, 15)
    v103.Image = "http://www.roblox.com/asset/?id=6034407084"
    v103.ImageColor3 = Color3.fromRGB(114, 118, 125)
    v95.MouseEnter:Connect(function()
        vu98.Visible = true
    end)
    v95.MouseLeave:Connect(function()
        vu98.Visible = false
    end)
    v95.MouseButton1Click:Connect(function()
        local vu125 = Instance.new("TextButton")
        vu125.Name = "NotificationHolder"
        vu125.Parent = vu78
        vu125.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
        vu125.Position = UDim2.new(- 0.00881057233, 0, - 0.00266666664, 0)
        vu125.Size = UDim2.new(0, 687, 0, 375)
        vu125.AutoButtonColor = false
        vu125.Font = Enum.Font.SourceSans
        vu125.Text = ""
        vu125.TextColor3 = Color3.fromRGB(0, 0, 0)
        vu125.TextSize = 14
        vu125.BackgroundTransparency = 1
        vu125.Visible = true
        vu3:Create(vu125, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0.2
        }):Play()
        local vu126 = Instance.new("Frame")
        local v127 = Instance.new("UICorner")
        local v128 = Instance.new("Frame")
        local v129 = Instance.new("UICorner")
        local v130 = Instance.new("Frame")
        local v131 = Instance.new("TextLabel")
        local v132 = Instance.new("TextLabel")
        local vu133 = Instance.new("Frame")
        local v134 = Instance.new("UICorner")
        local v135 = Instance.new("Frame")
        local v136 = Instance.new("UICorner")
        local vu137 = Instance.new("TextBox")
        local vu138 = Instance.new("TextButton")
        local v139 = Instance.new("UICorner")
        local v140 = Instance.new("TextButton")
        local vu141 = Instance.new("ImageLabel")
        local v142 = Instance.new("TextButton")
        local v143 = Instance.new("UICorner")
        local v144 = Instance.new("TextButton")
        local v145 = Instance.new("UICorner")
        vu126.Name = "AvatarChange"
        vu126.Parent = vu125
        vu126.AnchorPoint = Vector2.new(0.5, 0.5)
        vu126.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        vu126.ClipsDescendants = true
        vu126.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
        vu126.Size = UDim2.new(0, 0, 0, 0)
        vu126.BackgroundTransparency = 1
        local v146 = vu126
        vu126.TweenSize(v146, UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
        vu3:Create(vu126, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0
        }):Play()
        v127.CornerRadius = UDim.new(0, 5)
        v127.Name = "UserChangeCorner"
        v127.Parent = vu126
        v128.Name = "UnderBar"
        v128.Parent = vu126
        v128.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        v128.Position = UDim2.new(- 0.000297061284, 0, 0.945048928, 0)
        v128.Size = UDim2.new(0, 346, 0, 13)
        v129.CornerRadius = UDim.new(0, 5)
        v129.Name = "UnderBarCorner"
        v129.Parent = v128
        v130.Name = "UnderBarFrame"
        v130.Parent = v128
        v130.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        v130.BorderSizePixel = 0
        v130.Position = UDim2.new(- 0.000297061284, 0, - 2.53846145, 0)
        v130.Size = UDim2.new(0, 346, 0, 39)
        v131.Name = "Text1"
        v131.Parent = vu126
        v131.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v131.BackgroundTransparency = 1
        v131.Position = UDim2.new(- 0.000594122568, 0, 0.0202020202, 0)
        v131.Size = UDim2.new(0, 346, 0, 68)
        v131.Font = Enum.Font.GothamSemibold
        v131.Text = "Change your avatar"
        v131.TextColor3 = Color3.fromRGB(255, 255, 255)
        v131.TextSize = 20
        v132.Name = "Text2"
        v132.Parent = vu126
        v132.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v132.BackgroundTransparency = 1
        v132.Position = UDim2.new(- 0.000594122568, 0, 0.141587839, 0)
        v132.Size = UDim2.new(0, 346, 0, 63)
        v132.Font = Enum.Font.Gotham
        v132.Text = "Enter your new profile in a Roblox decal link."
        v132.TextColor3 = Color3.fromRGB(171, 172, 176)
        v132.TextSize = 14
        vu133.Name = "TextBoxFrame"
        vu133.Parent = vu126
        vu133.AnchorPoint = Vector2.new(0.5, 0.5)
        vu133.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        vu133.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
        vu133.Size = UDim2.new(0, 319, 0, 38)
        v134.CornerRadius = UDim.new(0, 3)
        v134.Name = "TextBoxFrameCorner"
        v134.Parent = vu133
        v135.Name = "TextBoxFrame1"
        v135.Parent = vu133
        v135.AnchorPoint = Vector2.new(0.5, 0.5)
        v135.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
        v135.ClipsDescendants = true
        v135.Position = UDim2.new(0.5, 0, 0.5, 0)
        v135.Size = UDim2.new(0, 317, 0, 36)
        v136.CornerRadius = UDim.new(0, 3)
        v136.Name = "TextBoxFrame1Corner"
        v136.Parent = v135
        vu137.Name = "AvatarTextbox"
        vu137.Parent = v135
        vu137.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        vu137.BackgroundTransparency = 1
        vu137.Position = UDim2.new(0.0378548913, 0, 0, 0)
        vu137.Size = UDim2.new(0, 293, 0, 37)
        vu137.Font = Enum.Font.Gotham
        vu137.Text = ""
        vu137.TextColor3 = Color3.fromRGB(193, 195, 197)
        vu137.TextSize = 14
        vu137.TextXAlignment = Enum.TextXAlignment.Left
        vu138.Name = "ChangeBtn"
        vu138.Parent = vu126
        vu138.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
        vu138.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
        vu138.Size = UDim2.new(0, 76, 0, 27)
        vu138.Font = Enum.Font.Gotham
        vu138.Text = "Change"
        vu138.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu138.TextSize = 13
        vu138.AutoButtonColor = false
        vu138.MouseEnter:Connect(function()
            vu3:Create(vu138, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(103, 123, 196)
            }):Play()
        end)
        vu138.MouseLeave:Connect(function()
            vu3:Create(vu138, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(114, 137, 228)
            }):Play()
        end)
        vu138.MouseButton1Click:Connect(function()
            vu25 = tostring(vu137.Text)
            vu64.Image = vu25
            vu96.Image = vu25
            vu29()
            vu126:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu126, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu3:Create(vu125, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.2)
            vu125:Destroy()
        end)
        v139.CornerRadius = UDim.new(0, 4)
        v139.Name = "ChangeCorner"
        v139.Parent = vu138
        v140.Name = "CloseBtn2"
        v140.Parent = vu126
        v140.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v140.BackgroundTransparency = 1
        v140.Position = UDim2.new(0.898000002, 0, 0, 0)
        v140.Size = UDim2.new(0, 26, 0, 26)
        v140.Font = Enum.Font.Gotham
        v140.Text = ""
        v140.TextColor3 = Color3.fromRGB(255, 255, 255)
        v140.TextSize = 14
        vu141.Name = "Close2Icon"
        vu141.Parent = v140
        vu141.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        vu141.BackgroundTransparency = 1
        vu141.Position = UDim2.new(- 0.0384615399, 0, 0.312910825, 0)
        vu141.Size = UDim2.new(0, 25, 0, 25)
        vu141.Image = "http://www.roblox.com/asset/?id=6035047409"
        vu141.ImageColor3 = Color3.fromRGB(119, 122, 127)
        v142.Name = "CloseBtn1"
        v142.Parent = vu126
        v142.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
        v142.BackgroundTransparency = 1
        v142.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
        v142.Size = UDim2.new(0, 76, 0, 27)
        v142.Font = Enum.Font.Gotham
        v142.Text = "Close"
        v142.TextColor3 = Color3.fromRGB(255, 255, 255)
        v142.TextSize = 13
        v143.CornerRadius = UDim.new(0, 4)
        v143.Name = "CloseBtn1Corner"
        v143.Parent = v142
        v144.Name = "ResetBtn"
        v144.Parent = vu126
        v144.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
        v144.BackgroundTransparency = 1
        v144.Position = UDim2.new(0.260895967, 0, 0.823000014, 0)
        v144.Size = UDim2.new(0, 76, 0, 27)
        v144.Font = Enum.Font.Gotham
        v144.Text = "Reset"
        v144.TextColor3 = Color3.fromRGB(255, 255, 255)
        v144.TextSize = 13
        v144.MouseButton1Click:Connect(function()
            vu25 = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
            vu64.Image = vu25
            vu96.Image = vu25
            vu29()
            vu126:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu126, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu3:Create(vu125, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.2)
            vu125:Destroy()
        end)
        v145.CornerRadius = UDim.new(0, 4)
        v145.Name = "ResetCorner"
        v145.Parent = v144
        v142.MouseButton1Click:Connect(function()
            vu126:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu126, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu3:Create(vu125, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.2)
            vu125:Destroy()
        end)
        v140.MouseButton1Click:Connect(function()
            vu126:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu126, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu3:Create(vu125, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.2)
            vu125:Destroy()
        end)
        v140.MouseEnter:Connect(function()
            vu3:Create(vu141, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ImageColor3 = Color3.fromRGB(210, 210, 210)
            }):Play()
        end)
        v140.MouseLeave:Connect(function()
            vu3:Create(vu141, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ImageColor3 = Color3.fromRGB(119, 122, 127)
            }):Play()
        end)
        vu137.Focused:Connect(function()
            vu3:Create(vu133, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(114, 137, 228)
            }):Play()
        end)
        vu137.FocusLost:Connect(function()
            vu3:Create(vu133, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(37, 40, 43)
            }):Play()
        end)
    end)
    v104.Name = "UserPanelUserTag"
    v104.Parent = v85
    v104.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v104.BackgroundTransparency = 1
    v104.Position = UDim2.new(0.271143615, 0, 0.231804818, 0)
    v104.Size = UDim2.new(0, 113, 0, 19)
    vu105.Name = "UserPanelUser"
    vu105.Parent = v104
    vu105.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu105.BackgroundTransparency = 1
    vu105.Font = Enum.Font.GothamSemibold
    vu105.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu105.TextSize = 17
    vu105.TextXAlignment = Enum.TextXAlignment.Left
    vu105.Text = vu26
    vu105.Size = UDim2.new(0, vu105.TextBounds.X + 2, 0, 19)
    v106.Name = "UserPanelUserTagLayout"
    v106.Parent = v104
    v106.FillDirection = Enum.FillDirection.Horizontal
    v106.SortOrder = Enum.SortOrder.LayoutOrder
    vu107.Name = "UserPanelTag"
    vu107.Parent = v104
    vu107.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu107.BackgroundTransparency = 1
    vu107.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
    vu107.Size = UDim2.new(0, 65, 0, 19)
    vu107.Font = Enum.Font.Gotham
    vu107.Text = "#" .. vu27
    vu107.TextColor3 = Color3.fromRGB(184, 186, 189)
    vu107.TextSize = 17
    vu107.TextXAlignment = Enum.TextXAlignment.Left
    v108.Name = "UserPanelCorner"
    v108.Parent = v85
    v109.Name = "LeftFrame"
    v109.Parent = vu78
    v109.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    v109.BorderSizePixel = 0
    v109.Position = UDim2.new(0, 0, - 0.000303059904, 0)
    v109.Size = UDim2.new(0, 233, 0, 375)
    v110.Name = "MyAccountBtn"
    v110.Parent = v109
    v110.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    v110.BorderSizePixel = 0
    v110.Position = UDim2.new(0.271232396, 0, 0.101614028, 0)
    v110.Size = UDim2.new(0, 160, 0, 30)
    v110.AutoButtonColor = false
    v110.Font = Enum.Font.SourceSans
    v110.Text = ""
    v110.TextColor3 = Color3.fromRGB(0, 0, 0)
    v110.TextSize = 14
    v111.CornerRadius = UDim.new(0, 6)
    v111.Name = "MyAccountBtnCorner"
    v111.Parent = v110
    v112.Name = "MyAccountBtnTitle"
    v112.Parent = v110
    v112.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v112.BackgroundTransparency = 1
    v112.BorderSizePixel = 0
    v112.Position = UDim2.new(0.0759999976, 0, - 0.166999996, 0)
    v112.Size = UDim2.new(0, 95, 0, 39)
    v112.Font = Enum.Font.GothamSemibold
    v112.Text = "My Account"
    v112.TextColor3 = Color3.fromRGB(255, 255, 255)
    v112.TextSize = 14
    v112.TextXAlignment = Enum.TextXAlignment.Left
    v113.Name = "SettingsTitle"
    v113.Parent = v109
    v113.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v113.BackgroundTransparency = 1
    v113.Position = UDim2.new(0.308999985, 0, 0.0450000018, 0)
    v113.Size = UDim2.new(0, 65, 0, 19)
    v113.Font = Enum.Font.GothamBlack
    v113.Text = "SETTINGS"
    v113.TextColor3 = Color3.fromRGB(142, 146, 152)
    v113.TextSize = 11
    v113.TextXAlignment = Enum.TextXAlignment.Left
    v114.Name = "DiscordInfo"
    v114.Parent = v109
    v114.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v114.BackgroundTransparency = 1
    v114.Position = UDim2.new(0.304721028, 0, 0.821333349, 0)
    v114.Size = UDim2.new(0, 133, 0, 44)
    v114.Font = Enum.Font.Gotham
    v114.Text = "Stable 1.0.0 (00001)  Host 0.0.0.1                Roblox Lua Engine    "
    v114.TextColor3 = Color3.fromRGB(101, 108, 116)
    v114.TextSize = 13
    v114.TextWrapped = true
    v114.TextXAlignment = Enum.TextXAlignment.Left
    v114.TextYAlignment = Enum.TextYAlignment.Top
    v115.Name = "CurrentSettingOpen"
    v115.Parent = v109
    v115.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v115.BackgroundTransparency = 1
    v115.Position = UDim2.new(1.07294846, 0, 0.0450000018, 0)
    v115.Size = UDim2.new(0, 65, 0, 19)
    v115.Font = Enum.Font.GothamBlack
    v115.Text = "MY ACCOUNT"
    v115.TextColor3 = Color3.fromRGB(255, 255, 255)
    v115.TextSize = 14
    v115.TextXAlignment = Enum.TextXAlignment.Left
    v74.MouseButton1Click:Connect(function()
        vu51 = true
        vu72.Visible = false
        vu68.Visible = false
        vu76.Visible = true
        vu78:TweenSize(UDim2.new(0, 681, 0, 375), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
        vu77.BackgroundTransparency = 1
        vu3:Create(vu77, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0
        }):Play()
        local v147 = next
        local v148, v149 = vu78:GetChildren()
        while true do
            local v150
            v149, v150 = v147(v148, v149)
            if v149 == nil then
                break
            end
            v150.BackgroundTransparency = 1
            vu3:Create(v150, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 0
            }):Play()
        end
    end)
    vu93.MouseButton1Click:Connect(function()
        local vu151 = Instance.new("TextButton")
        vu151.Name = "NotificationHolder"
        vu151.Parent = vu78
        vu151.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
        vu151.Position = UDim2.new(- 0.00881057233, 0, - 0.00266666664, 0)
        vu151.Size = UDim2.new(0, 687, 0, 375)
        vu151.AutoButtonColor = false
        vu151.Font = Enum.Font.SourceSans
        vu151.Text = ""
        vu151.TextColor3 = Color3.fromRGB(0, 0, 0)
        vu151.TextSize = 14
        vu151.BackgroundTransparency = 1
        vu151.Visible = true
        vu3:Create(vu151, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0.2
        }):Play()
        local vu152 = Instance.new("Frame")
        local v153 = Instance.new("UICorner")
        local v154 = Instance.new("Frame")
        local v155 = Instance.new("UICorner")
        local v156 = Instance.new("Frame")
        local v157 = Instance.new("TextLabel")
        local v158 = Instance.new("TextLabel")
        local vu159 = Instance.new("Frame")
        local v160 = Instance.new("UICorner")
        local v161 = Instance.new("Frame")
        local v162 = Instance.new("UICorner")
        local vu163 = Instance.new("TextBox")
        local v164 = Instance.new("Frame")
        local v165 = Instance.new("TextLabel")
        local vu166 = Instance.new("TextBox")
        local vu167 = Instance.new("TextButton")
        local v168 = Instance.new("UICorner")
        local v169 = Instance.new("TextButton")
        local vu170 = Instance.new("ImageLabel")
        local v171 = Instance.new("TextButton")
        local v172 = Instance.new("UICorner")
        vu152.Name = "UserChange"
        vu152.Parent = vu151
        vu152.AnchorPoint = Vector2.new(0.5, 0.5)
        vu152.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        vu152.ClipsDescendants = true
        vu152.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
        vu152.Size = UDim2.new(0, 0, 0, 0)
        vu152.BackgroundTransparency = 1
        local v173 = vu152
        vu152.TweenSize(v173, UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
        vu3:Create(vu152, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0
        }):Play()
        v153.CornerRadius = UDim.new(0, 5)
        v153.Name = "UserChangeCorner"
        v153.Parent = vu152
        v154.Name = "UnderBar"
        v154.Parent = vu152
        v154.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        v154.Position = UDim2.new(- 0.000297061284, 0, 0.945048928, 0)
        v154.Size = UDim2.new(0, 346, 0, 13)
        v155.CornerRadius = UDim.new(0, 5)
        v155.Name = "UnderBarCorner"
        v155.Parent = v154
        v156.Name = "UnderBarFrame"
        v156.Parent = v154
        v156.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        v156.BorderSizePixel = 0
        v156.Position = UDim2.new(- 0.000297061284, 0, - 2.53846145, 0)
        v156.Size = UDim2.new(0, 346, 0, 39)
        v157.Name = "Text1"
        v157.Parent = vu152
        v157.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v157.BackgroundTransparency = 1
        v157.Position = UDim2.new(- 0.000594122568, 0, 0.0202020202, 0)
        v157.Size = UDim2.new(0, 346, 0, 68)
        v157.Font = Enum.Font.GothamSemibold
        v157.Text = "Change your username"
        v157.TextColor3 = Color3.fromRGB(255, 255, 255)
        v157.TextSize = 20
        v158.Name = "Text2"
        v158.Parent = vu152
        v158.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v158.BackgroundTransparency = 1
        v158.Position = UDim2.new(- 0.000594122568, 0, 0.141587839, 0)
        v158.Size = UDim2.new(0, 346, 0, 63)
        v158.Font = Enum.Font.Gotham
        v158.Text = "Enter your new username."
        v158.TextColor3 = Color3.fromRGB(171, 172, 176)
        v158.TextSize = 14
        vu159.Name = "TextBoxFrame"
        vu159.Parent = vu152
        vu159.AnchorPoint = Vector2.new(0.5, 0.5)
        vu159.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
        vu159.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
        vu159.Size = UDim2.new(0, 319, 0, 38)
        v160.CornerRadius = UDim.new(0, 3)
        v160.Name = "TextBoxFrameCorner"
        v160.Parent = vu159
        v161.Name = "TextBoxFrame1"
        v161.Parent = vu159
        v161.AnchorPoint = Vector2.new(0.5, 0.5)
        v161.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
        v161.Position = UDim2.new(0.5, 0, 0.5, 0)
        v161.Size = UDim2.new(0, 317, 0, 36)
        v162.CornerRadius = UDim.new(0, 3)
        v162.Name = "TextBoxFrame1Corner"
        v162.Parent = v161
        vu163.Name = "UsernameTextbox"
        vu163.Parent = v161
        vu163.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        vu163.BackgroundTransparency = 1
        vu163.Position = UDim2.new(0.0378548913, 0, 0, 0)
        vu163.Size = UDim2.new(0, 221, 0, 37)
        vu163.Font = Enum.Font.Gotham
        vu163.Text = vu26
        vu163.TextColor3 = Color3.fromRGB(193, 195, 197)
        vu163.TextSize = 14
        vu163.TextXAlignment = Enum.TextXAlignment.Left
        v164.Name = "Seperator"
        v164.Parent = v161
        v164.AnchorPoint = Vector2.new(0.5, 0.5)
        v164.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        v164.BorderSizePixel = 0
        v164.Position = UDim2.new(0.753000021, 0, 0.500999987, 0)
        v164.Size = UDim2.new(0, 1, 0, 25)
        v165.Name = "HashtagLabel"
        v165.Parent = v161
        v165.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v165.BackgroundTransparency = 1
        v165.Position = UDim2.new(0.765877604, 0, - 0.0546001866, 0)
        v165.Size = UDim2.new(0, 23, 0, 37)
        v165.Font = Enum.Font.Gotham
        v165.Text = "#"
        v165.TextColor3 = Color3.fromRGB(79, 82, 88)
        v165.TextSize = 16
        vu166.Name = "TagTextbox"
        vu166.Parent = v161
        vu166.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        vu166.BackgroundTransparency = 1
        vu166.Position = UDim2.new(0.824999988, 0, - 0.0280000009, 0)
        vu166.Size = UDim2.new(0, 59, 0, 38)
        vu166.Font = Enum.Font.Gotham
        vu166.PlaceholderColor3 = Color3.fromRGB(210, 211, 212)
        vu166.Text = vu27
        vu166.TextColor3 = Color3.fromRGB(193, 195, 197)
        vu166.TextSize = 14
        vu166.TextXAlignment = Enum.TextXAlignment.Left
        vu167.Name = "ChangeBtn"
        vu167.Parent = vu152
        vu167.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
        vu167.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
        vu167.Size = UDim2.new(0, 76, 0, 27)
        vu167.Font = Enum.Font.Gotham
        vu167.Text = "Change"
        vu167.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu167.TextSize = 13
        vu167.AutoButtonColor = false
        vu167.MouseEnter:Connect(function()
            vu3:Create(vu167, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(103, 123, 196)
            }):Play()
        end)
        vu167.MouseLeave:Connect(function()
            vu3:Create(vu167, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(114, 137, 228)
            }):Play()
        end)
        vu167.MouseButton1Click:Connect(function()
            vu26 = vu163.Text
            vu27 = vu166.Text
            vu90.Text = vu26
            vu90.Size = UDim2.new(0, vu90.TextBounds.X + 2, 0, 19)
            vu92.Text = "#" .. vu27
            vu107.Text = "#" .. vu27
            vu105.Text = vu26
            vu105.Size = UDim2.new(0, vu105.TextBounds.X + 2, 0, 19)
            vu66.Text = vu26
            vu67.Text = "#" .. vu27
            vu29()
            vu152:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu152, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu3:Create(vu151, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.2)
            vu151:Destroy()
        end)
        v168.CornerRadius = UDim.new(0, 4)
        v168.Name = "ChangeCorner"
        v168.Parent = vu167
        v169.Name = "CloseBtn2"
        v169.Parent = vu152
        v169.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v169.BackgroundTransparency = 1
        v169.Position = UDim2.new(0.898000002, 0, 0, 0)
        v169.Size = UDim2.new(0, 26, 0, 26)
        v169.Font = Enum.Font.Gotham
        v169.Text = ""
        v169.TextColor3 = Color3.fromRGB(255, 255, 255)
        v169.TextSize = 14
        vu170.Name = "Close2Icon"
        vu170.Parent = v169
        vu170.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        vu170.BackgroundTransparency = 1
        vu170.Position = UDim2.new(- 0.0384615399, 0, 0.312910825, 0)
        vu170.Size = UDim2.new(0, 25, 0, 25)
        vu170.Image = "http://www.roblox.com/asset/?id=6035047409"
        vu170.ImageColor3 = Color3.fromRGB(119, 122, 127)
        v171.Name = "CloseBtn1"
        v171.Parent = vu152
        v171.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
        v171.BackgroundTransparency = 1
        v171.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
        v171.Size = UDim2.new(0, 76, 0, 27)
        v171.Font = Enum.Font.Gotham
        v171.Text = "Close"
        v171.TextColor3 = Color3.fromRGB(255, 255, 255)
        v171.TextSize = 13
        v172.CornerRadius = UDim.new(0, 4)
        v172.Name = "CloseBtn1Corner"
        v172.Parent = v171
        v171.MouseButton1Click:Connect(function()
            vu152:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu152, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu3:Create(vu151, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.2)
            vu151:Destroy()
        end)
        v169.MouseButton1Click:Connect(function()
            vu152:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu152, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu3:Create(vu151, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait(0.2)
            vu151:Destroy()
        end)
        v169.MouseEnter:Connect(function()
            vu3:Create(vu170, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ImageColor3 = Color3.fromRGB(210, 210, 210)
            }):Play()
        end)
        v169.MouseLeave:Connect(function()
            vu3:Create(vu170, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ImageColor3 = Color3.fromRGB(119, 122, 127)
            }):Play()
        end)
        vu166.Changed:Connect(function()
            vu166.Text = vu166.Text:sub(1, 4)
        end)
        local v174 = vu166
        vu166.GetPropertyChangedSignal(v174, "Text"):Connect(function()
            vu166.Text = vu166.Text:gsub("%D+", "")
        end)
        vu163.Changed:Connect(function()
            vu163.Text = vu163.Text:sub(1, 13)
        end)
        vu166.Focused:Connect(function()
            vu3:Create(vu159, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(114, 137, 228)
            }):Play()
        end)
        vu166.FocusLost:Connect(function()
            vu3:Create(vu159, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(37, 40, 43)
            }):Play()
        end)
        vu163.Focused:Connect(function()
            vu3:Create(vu159, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(114, 137, 228)
            }):Play()
        end)
        vu163.FocusLost:Connect(function()
            vu3:Create(vu159, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(37, 40, 43)
            }):Play()
        end)
    end)
    function vu1.Notification(_, p175, p176, p177)
        local vu178 = Instance.new("TextButton")
        local vu179 = Instance.new("Frame")
        local v180 = Instance.new("UICorner")
        local v181 = Instance.new("Frame")
        local v182 = Instance.new("UICorner")
        local v183 = Instance.new("Frame")
        local v184 = Instance.new("TextLabel")
        local v185 = Instance.new("TextLabel")
        local vu186 = Instance.new("TextButton")
        local v187 = Instance.new("UICorner")
        vu178.Name = "NotificationHolderMain"
        vu178.Parent = vu52
        vu178.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        vu178.BackgroundTransparency = 1
        vu178.BorderSizePixel = 0
        vu178.Position = UDim2.new(0, 0, 0.0560000017, 0)
        vu178.Size = UDim2.new(0, 681, 0, 374)
        vu178.AutoButtonColor = false
        vu178.Font = Enum.Font.SourceSans
        vu178.Text = ""
        vu178.TextColor3 = Color3.fromRGB(0, 0, 0)
        vu178.TextSize = 14
        vu3:Create(vu178, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0.2
        }):Play()
        vu179.Name = "Notification"
        vu179.Parent = vu178
        vu179.AnchorPoint = Vector2.new(0.5, 0.5)
        vu179.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        vu179.ClipsDescendants = true
        vu179.Position = UDim2.new(0.524819076, 0, 0.469270051, 0)
        vu179.Size = UDim2.new(0, 0, 0, 0)
        vu179.BackgroundTransparency = 1
        local v188 = vu179
        vu179.TweenSize(v188, UDim2.new(0, 346, 0, 176), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
        vu3:Create(vu179, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0
        }):Play()
        v180.CornerRadius = UDim.new(0, 5)
        v180.Name = "NotificationCorner"
        v180.Parent = vu179
        v181.Name = "UnderBar"
        v181.Parent = vu179
        v181.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        v181.Position = UDim2.new(- 0.000297061284, 0, 0.945048928, 0)
        v181.Size = UDim2.new(0, 346, 0, 10)
        v182.CornerRadius = UDim.new(0, 5)
        v182.Name = "UnderBarCorner"
        v182.Parent = v181
        v183.Name = "UnderBarFrame"
        v183.Parent = v181
        v183.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
        v183.BorderSizePixel = 0
        v183.Position = UDim2.new(- 0.000297061284, 0, - 3.76068449, 0)
        v183.Size = UDim2.new(0, 346, 0, 40)
        v184.Name = "Text1"
        v184.Parent = vu179
        v184.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v184.BackgroundTransparency = 1
        v184.Position = UDim2.new(- 0.000594122568, 0, 0.0202020202, 0)
        v184.Size = UDim2.new(0, 346, 0, 68)
        v184.Font = Enum.Font.GothamSemibold
        v184.Text = p175
        v184.TextColor3 = Color3.fromRGB(255, 255, 255)
        v184.TextSize = 20
        v185.Name = "Text2"
        v185.Parent = vu179
        v185.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v185.BackgroundTransparency = 1
        v185.Position = UDim2.new(0.106342293, 0, 0.317724228, 0)
        v185.Size = UDim2.new(0, 272, 0, 63)
        v185.Font = Enum.Font.Gotham
        v185.Text = p176
        v185.TextColor3 = Color3.fromRGB(171, 172, 176)
        v185.TextSize = 14
        v185.TextWrapped = true
        vu186.Name = "AlrightBtn"
        vu186.Parent = vu179
        vu186.BackgroundColor3 = Color3.fromRGB(79, 214, 58)
        vu186.Position = UDim2.new(0.0332369953, 0, 0.789141417, 0)
        vu186.Size = UDim2.new(0, 322, 0, 27)
        vu186.Font = Enum.Font.Gotham
        vu186.Text = p177
        vu186.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu186.TextSize = 13
        vu186.AutoButtonColor = false
        v187.CornerRadius = UDim.new(0, 4)
        v187.Name = "AlrightCorner"
        v187.Parent = vu186
        vu186.MouseButton1Click:Connect(function()
            vu3:Create(vu178, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            vu179:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            vu3:Create(vu179, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1
            }):Play()
            wait()
            vu178:Destroy()
        end)
        vu186.MouseEnter:Connect(function()
            vu3:Create(vu186, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(28, 214, 90)
            }):Play()
        end)
        vu186.MouseLeave:Connect(function()
            vu3:Create(vu186, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(79, 214, 58)
            }):Play()
        end)
    end
    vu44(v73, vu52)
    v71.PaddingLeft = UDim.new(0, 14)
    return {
        Server = function(_, p189, p190, _)
            local vu191 = false
            local vu192 = ""
            local vu193 = Instance.new("TextButton")
            local vu194 = Instance.new("UICorner")
            Instance.new("ImageLabel")
            local vu195 = Instance.new("Frame")
            local v196 = Instance.new("UICorner")
            vu193.Name = p189 .. "Server"
            vu193.Parent = vu69
            vu193.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            vu193.Position = UDim2.new(0.125, 0, 0, 0)
            vu193.Size = UDim2.new(0, 47, 0, 47)
            vu193.AutoButtonColor = false
            vu193.Font = Enum.Font.Gotham
            vu193.Text = ""
            vu193.BackgroundTransparency = 1
            vu193.TextTransparency = 1
            vu193.TextColor3 = Color3.fromRGB(231, 23, 55)
            vu193.TextSize = 20
            vu194.CornerRadius = UDim.new(1, 0)
            vu194.Name = "ServerCorner"
            vu194.Parent = vu193
            vu195.Name = "ServerWhiteFrame"
            vu195.Parent = vu193
            vu195.AnchorPoint = Vector2.new(0.5, 0.5)
            vu195.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            vu195.BackgroundTransparency = 1
            vu195.Position = UDim2.new(- 0.347378343, 0, 0.502659559, 0)
            vu195.Size = UDim2.new(0, 11, 0, 10)
            v196.CornerRadius = UDim.new(1, 0)
            v196.Name = "ServerWhiteFrameCorner"
            v196.Parent = vu195
            vu69.CanvasSize = UDim2.new(0, 0, 0, vu70.AbsoluteContentSize.Y)
            local vu197 = Instance.new("Frame")
            local v198 = Instance.new("Frame")
            local v199 = Instance.new("Frame")
            local v200 = Instance.new("Frame")
            local v201 = Instance.new("TextLabel")
            local v202 = Instance.new("TextLabel")
            local v203 = Instance.new("Frame")
            local v204 = Instance.new("ImageLabel")
            local v205 = Instance.new("Frame")
            local v206 = Instance.new("UICorner")
            Instance.new("UICorner")
            local v207 = Instance.new("Frame")
            local v208 = Instance.new("TextLabel")
            local vu209 = Instance.new("TextLabel")
            local vu210 = Instance.new("Frame")
            local v211 = Instance.new("ImageLabel")
            local vu212 = Instance.new("ScrollingFrame")
            local vu213 = Instance.new("UIListLayout")
            local v214 = Instance.new("UIPadding")
            vu197.Name = "ServerFrame"
            vu197.Parent = vu59
            vu197.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            vu197.BorderSizePixel = 0
            vu197.ClipsDescendants = true
            vu197.Position = UDim2.new(0.105726875, 0, 1.01262593, 0)
            vu197.Size = UDim2.new(0, 609, 0, 373)
            vu197.Visible = false
            v198.Name = "ServerFrame1"
            v198.Parent = vu197
            v198.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            v198.BorderSizePixel = 0
            v198.Position = UDim2.new(0, 0, 0.972290039, 0)
            v198.Size = UDim2.new(0, 12, 0, 10)
            v199.Name = "ServerFrame2"
            v199.Parent = vu197
            v199.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            v199.BorderSizePixel = 0
            v199.Position = UDim2.new(0.980295539, 0, 0.972290039, 0)
            v199.Size = UDim2.new(0, 12, 0, 9)
            v200.Name = "ServerTitleFrame"
            v200.Parent = vu197
            v200.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            v200.BackgroundTransparency = 1
            v200.BorderSizePixel = 0
            v200.Position = UDim2.new(- 0.0010054264, 0, - 0.000900391256, 0)
            v200.Size = UDim2.new(0, 180, 0, 40)
            v201.Name = "ServerTitle"
            v201.Parent = v200
            v201.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v201.BackgroundTransparency = 1
            v201.BorderSizePixel = 0
            v201.Position = UDim2.new(0.0751359761, 0, 0, 0)
            v201.Size = UDim2.new(0, 97, 0, 39)
            v201.Font = Enum.Font.GothamSemibold
            v201.Text = p189
            v201.TextColor3 = Color3.fromRGB(231, 23, 55)
            v201.TextSize = 15
            v201.TextXAlignment = Enum.TextXAlignment.Left
            v202.Name = "ServerTitle"
            v202.Parent = v200
            v202.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v202.BackgroundTransparency = 1
            v202.BorderSizePixel = 0
            v202.Position = UDim2.new(0.0541359761, 0, 7.5, 0)
            v202.Size = UDim2.new(0, 97, 0, 39)
            v202.ZIndex = 999
            v202.Font = Enum.Font.GothamSemibold
            v202.Text = p190
            v202.TextColor3 = Color3.fromRGB(255, 255, 255)
            v202.TextTransparency = 0.8
            v202.TextSize = 13
            v202.TextXAlignment = Enum.TextXAlignment.Left
            v203.Name = "GlowFrame"
            v203.Parent = vu197
            v203.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            v203.BackgroundTransparency = 1
            v203.BorderSizePixel = 0
            v203.Position = UDim2.new(- 0.0010054264, 0, - 0.000900391256, 0)
            v203.Size = UDim2.new(0, 609, 0, 40)
            v204.Name = "Glow"
            v204.Parent = v203
            v204.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v204.BackgroundTransparency = 1
            v204.BorderSizePixel = 0
            v204.Position = UDim2.new(0, - 15, 0, - 15)
            v204.Size = UDim2.new(1, 30, 1, 30)
            v204.ZIndex = 0
            v204.Image = "rbxassetid://4996891970"
            v204.ImageColor3 = Color3.fromRGB(15, 15, 15)
            v204.ScaleType = Enum.ScaleType.Slice
            v204.SliceCenter = Rect.new(20, 20, 280, 280)
            v205.Name = "ServerContentFrame"
            v205.Parent = vu197
            v205.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            v205.BackgroundTransparency = 1
            v205.BorderSizePixel = 0
            v205.Position = UDim2.new(- 0.0010054264, 0, 0.106338218, 0)
            v205.Size = UDim2.new(0, 180, 0, 333)
            v206.CornerRadius = UDim.new(0, 4)
            v206.Name = "ServerCorner"
            v206.Parent = vu197
            v207.Name = "ChannelTitleFrame"
            v207.Parent = vu197
            v207.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            v207.BorderSizePixel = 0
            v207.Position = UDim2.new(0.294561088, 0, - 0.000900391256, 0)
            v207.Size = UDim2.new(0, 429, 0, 40)
            v208.Name = "Hashtag"
            v208.Parent = v207
            v208.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v208.BackgroundTransparency = 1
            v208.BorderSizePixel = 0
            v208.Position = UDim2.new(0.0279720277, 0, 0, 0)
            v208.Size = UDim2.new(0, 19, 0, 39)
            v208.Font = Enum.Font.Gotham
            v208.Text = "#"
            v208.TextColor3 = Color3.fromRGB(114, 118, 125)
            v208.TextSize = 25
            vu209.Name = "ChannelTitle"
            vu209.Parent = v207
            vu209.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            vu209.BackgroundTransparency = 1
            vu209.BorderSizePixel = 0
            vu209.Position = UDim2.new(0.0862470865, 0, 0, 0)
            vu209.Size = UDim2.new(0, 95, 0, 39)
            vu209.Font = Enum.Font.GothamSemibold
            vu209.Text = ""
            vu209.TextColor3 = Color3.fromRGB(255, 255, 255)
            vu209.TextSize = 15
            vu209.TextXAlignment = Enum.TextXAlignment.Left
            vu210.Name = "ChannelContentFrame"
            vu210.Parent = vu197
            vu210.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            vu210.BorderSizePixel = 0
            vu210.ClipsDescendants = true
            vu210.Position = UDim2.new(0.294561088, 0, 0.106338218, 0)
            vu210.Size = UDim2.new(0, 429, 0, 333)
            v211.Name = "GlowChannel"
            v211.Parent = vu210
            v211.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            v211.BackgroundTransparency = 1
            v211.BorderSizePixel = 0
            v211.Position = UDim2.new(0, - 33, 0, - 91)
            v211.Size = UDim2.new(1.06396091, 30, 0.228228226, 30)
            v211.ZIndex = 0
            v211.Image = "rbxassetid://4996891970"
            v211.ImageColor3 = Color3.fromRGB(15, 15, 15)
            v211.ScaleType = Enum.ScaleType.Slice
            v211.SliceCenter = Rect.new(20, 20, 280, 280)
            vu212.Name = "ServerChannelHolder"
            vu212.Parent = v205
            vu212.Active = true
            vu212.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            vu212.BackgroundTransparency = 1
            vu212.BorderSizePixel = 0
            vu212.Position = UDim2.new(0.00535549596, 0, 0.0241984241, 0)
            vu212.Selectable = false
            vu212.Size = UDim2.new(0, 179, 0, 278)
            vu212.CanvasSize = UDim2.new(0, 0, 0, 0)
            vu212.ScrollBarThickness = 4
            vu212.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
            vu212.ScrollBarImageTransparency = 1
            vu213.Name = "ServerChannelHolderLayout"
            vu213.Parent = vu212
            vu213.SortOrder = Enum.SortOrder.LayoutOrder
            vu213.Padding = UDim.new(0, 4)
            v214.Name = "ServerChannelHolderPadding"
            v214.Parent = vu212
            v214.PaddingLeft = UDim.new(0, 9)
            vu212.MouseEnter:Connect(function()
                vu212.ScrollBarImageTransparency = 0
            end)
            vu212.MouseLeave:Connect(function()
                vu212.ScrollBarImageTransparency = 1
            end)
            vu193.MouseEnter:Connect(function()
                if vu48 ~= vu193.Name then
                    vu3:Create(vu193, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        BackgroundColor3 = Color3.fromRGB(114, 137, 228)
                    }):Play()
                    vu3:Create(vu194, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        CornerRadius = UDim.new(0, 15)
                    }):Play()
                    vu195:TweenSize(UDim2.new(0, 11, 0, 27), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                end
            end)
            vu193.MouseLeave:Connect(function()
                if vu48 ~= vu193.Name then
                    vu3:Create(vu193, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    }):Play()
                    vu3:Create(vu194, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        CornerRadius = UDim.new(1, 0)
                    }):Play()
                    vu195:TweenSize(UDim2.new(0, 11, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                end
            end)
            vu193.MouseButton1Click:Connect(function()
                vu48 = vu193.Name
                local v215 = next
                local v216, v217 = vu59:GetChildren()
                while true do
                    local v218
                    v217, v218 = v215(v216, v217)
                    if v217 == nil then
                        break
                    end
                    if v218.Name == "ServerFrame" then
                        v218.Visible = false
                    end
                    vu197.Visible = true
                end
                local v219 = next
                local v220, v221 = vu69:GetChildren()
                while true do
                    local v222
                    v221, v222 = v219(v220, v221)
                    if v221 == nil then
                        break
                    end
                    if v222.ClassName == "TextButton" then
                        vu3:Create(v222, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        }):Play()
                        vu3:Create(vu193, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        }):Play()
                        vu3:Create(v222.ServerCorner, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            CornerRadius = UDim.new(1, 0)
                        }):Play()
                        vu3:Create(vu194, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            CornerRadius = UDim.new(0, 15)
                        }):Play()
                        v222.ServerWhiteFrame:TweenSize(UDim2.new(0, 11, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                        vu195:TweenSize(UDim2.new(0, 11, 0, 46), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                    end
                end
            end)
            if vu50 == false then
                vu3:Create(vu193, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                }):Play()
                vu3:Create(vu194, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    CornerRadius = UDim.new(0, 15)
                }):Play()
                local v223 = vu195
                vu195.TweenSize(v223, UDim2.new(0, 11, 0, 46), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                vu197.Visible = true
                vu193.Name = p189 .. "Server"
                vu48 = vu193.Name
                vu50 = true
            end
            return {
                Channel = function(_, pu224)
                    local vu225 = Instance.new("TextButton")
                    local v226 = Instance.new("UICorner")
                    local v227 = Instance.new("TextLabel")
                    local vu228 = Instance.new("TextLabel")
                    vu225.Name = pu224 .. "ChannelBtn"
                    vu225.Parent = vu212
                    vu225.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    vu225.BorderSizePixel = 0
                    vu225.Position = UDim2.new(0.24118948, 0, 0.578947365, 0)
                    vu225.Size = UDim2.new(0, 160, 0, 30)
                    vu225.AutoButtonColor = false
                    vu225.Font = Enum.Font.SourceSans
                    vu225.Text = ""
                    vu225.TextColor3 = Color3.fromRGB(0, 0, 0)
                    vu225.TextSize = 14
                    v226.CornerRadius = UDim.new(0, 8)
                    v226.Name = "ChannelBtnCorner"
                    v226.Parent = vu225
                    v227.Name = "ChannelBtnHashtag"
                    v227.Parent = vu225
                    v227.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    v227.BackgroundTransparency = 1
                    v227.BorderSizePixel = 0
                    v227.Position = UDim2.new(0.08, 0, 0, 0)
                    v227.Size = UDim2.new(0, 24, 0, 30)
                    v227.Font = Enum.Font.Gotham
                    v227.Text = ""
                    v227.TextColor3 = Color3.fromRGB(114, 118, 125)
                    v227.TextSize = 21
                    vu228.Name = "ChannelBtnTitle"
                    vu228.Parent = vu225
                    vu228.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    vu228.BackgroundTransparency = 1
                    vu228.BorderSizePixel = 0
                    vu228.Position = UDim2.new(0.05, 0, - 0.166666672, 0)
                    vu228.Size = UDim2.new(0, 95, 0, 39)
                    vu228.Font = Enum.Font.Gotham
                    vu228.Text = pu224
                    vu228.TextColor3 = Color3.fromRGB(114, 118, 125)
                    vu228.TextSize = 14
                    vu228.TextXAlignment = Enum.TextXAlignment.Left
                    vu212.CanvasSize = UDim2.new(0, 0, 0, vu213.AbsoluteContentSize.Y)
                    local vu229 = Instance.new("ScrollingFrame")
                    local vu230 = Instance.new("UIListLayout")
                    vu229.Name = "ChannelHolder"
                    vu229.Parent = vu210
                    vu229.Active = true
                    vu229.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    vu229.BackgroundTransparency = 1
                    vu229.BorderSizePixel = 0
                    vu229.Position = UDim2.new(0.0360843192, 0, 0.0241984241, 0)
                    vu229.Size = UDim2.new(0, 412, 0, 314)
                    vu229.ScrollBarThickness = 6
                    vu229.CanvasSize = UDim2.new(0, 0, 0, 0)
                    vu229.ScrollBarImageTransparency = 0
                    vu229.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
                    vu229.Visible = false
                    vu229.ClipsDescendants = false
                    vu230.Name = "ChannelHolderLayout"
                    vu230.Parent = vu229
                    vu230.SortOrder = Enum.SortOrder.LayoutOrder
                    vu230.Padding = UDim.new(0, 8)
                    vu225.MouseEnter:Connect(function()
                        if vu192 ~= vu225.Name then
                            vu225.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                            vu228.TextColor3 = Color3.fromRGB(220, 221, 222)
                        end
                    end)
                    vu225.MouseLeave:Connect(function()
                        if vu192 ~= vu225.Name then
                            vu225.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            vu228.TextColor3 = Color3.fromRGB(114, 118, 125)
                        end
                    end)
                    vu225.MouseButton1Click:Connect(function()
                        local v231 = next
                        local v232, v233 = vu210:GetChildren()
                        while true do
                            local v234
                            v233, v234 = v231(v232, v233)
                            if v233 == nil then
                                break
                            end
                            if v234.Name == "ChannelHolder" then
                                v234.Visible = false
                            end
                            vu229.Visible = true
                        end
                        local v235 = next
                        local v236, v237 = vu212:GetChildren()
                        while true do
                            local v238
                            v237, v238 = v235(v236, v237)
                            if v237 == nil then
                                break
                            end
                            if v238.ClassName == "TextButton" then
                                v238.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                                v238.ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
                            end
                            vu197.Visible = true
                        end
                        vu209.Text = pu224
                        vu225.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                        vu228.TextColor3 = Color3.fromRGB(255, 255, 255)
                        vu192 = vu225.Name
                    end)
                    if vu191 == false then
                        vu191 = true
                        vu209.Text = pu224
                        vu225.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                        vu228.TextColor3 = Color3.fromRGB(255, 255, 255)
                        vu192 = vu225.Name
                        vu229.Visible = true
                    end
                    return {
                        Button = function(_, p239, pu240)
                            local vu241 = Instance.new("TextButton")
                            local v242 = Instance.new("UICorner")
                            vu241.Name = "Button"
                            vu241.Parent = vu229
                            vu241.BackgroundColor3 = Color3.fromRGB(231, 23, 55)
                            vu241.Size = UDim2.new(0, 401, 0, 30)
                            vu241.AutoButtonColor = false
                            vu241.Font = Enum.Font.Gotham
                            vu241.TextColor3 = Color3.fromRGB(255, 255, 255)
                            vu241.TextSize = 14
                            vu241.Text = p239
                            v242.CornerRadius = UDim.new(0, 4)
                            v242.Name = "ButtonCorner"
                            v242.Parent = vu241
                            vu241.MouseEnter:Connect(function()
                                vu3:Create(vu241, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                                    BackgroundColor3 = Color3.fromRGB(231, 23, 55)
                                }):Play()
                            end)
                            vu241.MouseButton1Click:Connect(function()
                                pcall(pu240)
                                vu241.TextSize = 0
                                vu3:Create(vu241, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                                    TextSize = 14
                                }):Play()
                            end)
                            vu241.MouseLeave:Connect(function()
                                vu3:Create(vu241, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                                    BackgroundColor3 = Color3.fromRGB(231, 23, 55)
                                }):Play()
                            end)
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                        end,
                        Toggle = function(_, pu243, p244, pu245)
                            local vu246 = false
                            local v247 = Instance.new("TextButton")
                            local v248 = Instance.new("TextLabel")
                            local vu249 = Instance.new("Frame")
                            local v250 = Instance.new("UICorner")
                            local vu251 = Instance.new("Frame")
                            local v252 = Instance.new("UICorner")
                            local vu253 = Instance.new("ImageLabel")
                            v247.Name = "Toggle"
                            v247.Parent = vu229
                            v247.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            v247.BorderSizePixel = 0
                            v247.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
                            v247.Size = UDim2.new(0, 401, 0, 30)
                            v247.AutoButtonColor = false
                            v247.Font = Enum.Font.Gotham
                            v247.Text = ""
                            v247.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v247.TextSize = 14
                            v248.Name = "ToggleTitle"
                            v248.Parent = v247
                            v248.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v248.BackgroundTransparency = 1
                            v248.Position = UDim2.new(0, 5, 0, 0)
                            v248.Size = UDim2.new(0, 200, 0, 30)
                            v248.Font = Enum.Font.Gotham
                            v248.Text = pu243
                            v248.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v248.TextSize = 14
                            v248.TextXAlignment = Enum.TextXAlignment.Left
                            vu249.Name = "ToggleFrame"
                            vu249.Parent = v247
                            vu249.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                            vu249.Position = UDim2.new(0.900481343, - 5, 0.13300018, 0)
                            vu249.Size = UDim2.new(0, 40, 0, 21)
                            v250.CornerRadius = UDim.new(0, 4)
                            v250.Name = "ToggleFrameCorner"
                            v250.Parent = vu249
                            vu251.Name = "ToggleFrameCircle"
                            vu251.Parent = vu249
                            vu251.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                            vu251.Position = UDim2.new(0.234999999, - 5, 0.133000001, 0)
                            vu251.Size = UDim2.new(0, 15, 0, 15)
                            v252.CornerRadius = UDim.new(0, 4)
                            v252.Name = "ToggleFrameCircleCorner"
                            v252.Parent = vu251
                            vu253.Name = "Icon"
                            vu253.Parent = vu251
                            vu253.AnchorPoint = Vector2.new(0.5, 0.5)
                            vu253.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu253.BackgroundTransparency = 1
                            vu253.BorderColor3 = Color3.fromRGB(255, 255, 255)
                            vu253.Position = UDim2.new(0, 7, 0, 7)
                            vu253.Size = UDim2.new(0, 13, 0, 13)
                            vu253.Image = "http://www.roblox.com/asset/?id=6035047409"
                            vu253.ImageColor3 = Color3.fromRGB(255, 255, 255)
                            if vu12[pu243] == nil then
                                if vu12[pu243] == nil then
                                    vu12[pu243] = p244
                                end
                            else
                                p244 = vu12[pu243]
                            end
                            v247.MouseButton1Click:Connect(function()
                                if vu246 ~= false then
                                    vu12[pu243] = false
                                    if vu13.AutoSave then
                                        vu8:SaveFile()
                                    end
                                    vu3:Create(vu253, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        ImageColor3 = Color3.fromRGB(255, 255, 255)
                                    }):Play()
                                    vu3:Create(vu249, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                                    }):Play()
                                    vu251:TweenPosition(UDim2.new(0.234999999, - 5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                                    vu3:Create(vu253, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        ImageTransparency = 1
                                    }):Play()
                                    vu253.Image = "http://www.roblox.com/asset/?id=6035047409"
                                    wait(0.01)
                                    vu3:Create(vu253, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        ImageTransparency = 0
                                    }):Play()
                                else
                                    vu12[pu243] = true
                                    if vu13.AutoSave then
                                        vu8:SaveFile()
                                    end
                                    vu3:Create(vu253, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        ImageColor3 = Color3.fromRGB(255, 255, 255)
                                    }):Play()
                                    vu3:Create(vu249, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        BackgroundColor3 = Color3.fromRGB(231, 23, 55)
                                    }):Play()
                                    vu251:TweenPosition(UDim2.new(0.655, - 5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                                    vu3:Create(vu253, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        ImageTransparency = 1
                                    }):Play()
                                    vu253.Image = "http://www.roblox.com/asset/?id=6023426926"
                                    wait(0.1)
                                    vu3:Create(vu253, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        ImageTransparency = 0
                                    }):Play()
                                end
                                vu246 = not vu246
                                pcall(pu245, vu246)
                            end)
                            if p244 == true then
                                local v254 = false
                                vu3:Create(vu253, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    ImageColor3 = Color3.fromRGB(255, 255, 255)
                                }):Play()
                                vu3:Create(vu249, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    BackgroundColor3 = Color3.fromRGB(231, 23, 55)
                                }):Play()
                                vu251:TweenPosition(UDim2.new(0.655, - 5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                                vu3:Create(vu253, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    ImageTransparency = 1
                                }):Play()
                                vu253.Image = "http://www.roblox.com/asset/?id=6023426926"
                                wait(0.1)
                                vu3:Create(vu253, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    ImageTransparency = 0
                                }):Play()
                                v254 = not v254
                                pcall(pu245, v254)
                            else
                                wait(0.1)
                            end
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                        end,
                        Slider = function(_, pu255, pu256, pu257, p258, pu259)
                            if vu12[pu255] == nil then
                                if vu12[pu255] == nil then
                                    vu12[pu255] = p258
                                end
                            else
                                p258 = vu12[pu255]
                                pcall(pu259, p258)
                            end
                            local v260 = {}
                            local vu261 = false
                            local v262 = Instance.new("TextButton")
                            local v263 = Instance.new("TextLabel")
                            local vu264 = Instance.new("Frame")
                            local v265 = Instance.new("UICorner")
                            local vu266 = Instance.new("Frame")
                            local v267 = Instance.new("UICorner")
                            local vu268 = Instance.new("Frame")
                            local v269 = Instance.new("UICorner")
                            local vu270 = Instance.new("Frame")
                            local v271 = Instance.new("UICorner")
                            local v272 = Instance.new("Frame")
                            local v273 = Instance.new("ImageLabel")
                            local vu274 = Instance.new("TextLabel")
                            v262.Name = "Slider"
                            v262.Parent = vu229
                            v262.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            v262.BorderSizePixel = 0
                            v262.Position = UDim2.new(0, 0, 0.216560602, 0)
                            v262.Size = UDim2.new(0, 401, 0, 38)
                            v262.AutoButtonColor = false
                            v262.Font = Enum.Font.Gotham
                            v262.Text = ""
                            v262.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v262.TextSize = 14
                            v263.Name = "SliderTitle"
                            v263.Parent = v262
                            v263.BackgroundColor3 = Color3.fromRGB(231, 23, 55)
                            v263.BackgroundTransparency = 1
                            v263.Position = UDim2.new(0, 5, 0, - 4)
                            v263.Size = UDim2.new(0, 200, 0, 27)
                            v263.Font = Enum.Font.Gotham
                            v263.Text = pu255
                            v263.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v263.TextSize = 14
                            v263.TextXAlignment = Enum.TextXAlignment.Left
                            vu264.Name = "SliderFrame"
                            vu264.Parent = v262
                            vu264.AnchorPoint = Vector2.new(0.5, 0.5)
                            vu264.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            vu264.Position = UDim2.new(0.497999996, 0, 0.757000029, 0)
                            vu264.Size = UDim2.new(0, 385, 0, 8)
                            v265.Name = "SliderFrameCorner"
                            v265.Parent = vu264
                            vu266.Name = "CurrentValueFrame"
                            vu266.Parent = vu264
                            vu266.BackgroundColor3 = Color3.fromRGB(231, 23, 55)
                            vu266.Size = UDim2.new((p258 or 0) / pu257, 0, 0, 8)
                            v267.Name = "CurrentValueFrameCorner"
                            v267.Parent = vu266
                            vu268.Name = "Zip"
                            vu268.Parent = vu264
                            vu268.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu268.Position = UDim2.new((p258 or 0) / pu257, - 6, - 0.644999981, 0)
                            vu268.Size = UDim2.new(0, 10, 0, 18)
                            v269.CornerRadius = UDim.new(0, 3)
                            v269.Name = "ZipCorner"
                            v269.Parent = vu268
                            vu270.Name = "ValueBubble"
                            vu270.Parent = vu268
                            vu270.AnchorPoint = Vector2.new(0.5, 0.5)
                            vu270.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
                            vu270.Position = UDim2.new(0.5, 0, - 1.00800002, 0)
                            vu270.Size = UDim2.new(0, 36, 0, 21)
                            vu270.Visible = false
                            vu268.MouseEnter:Connect(function()
                                if vu261 == false then
                                    vu270.Visible = true
                                end
                            end)
                            vu268.MouseLeave:Connect(function()
                                if vu261 == false then
                                    vu270.Visible = false
                                end
                            end)
                            v271.CornerRadius = UDim.new(0, 3)
                            v271.Name = "ValueBubbleCorner"
                            v271.Parent = vu270
                            v272.Name = "SquareBubble"
                            v272.Parent = vu270
                            v272.AnchorPoint = Vector2.new(0.5, 0.5)
                            v272.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
                            v272.BorderSizePixel = 0
                            v272.Position = UDim2.new(0.493000001, 0, 0.637999971, 0)
                            v272.Rotation = 45
                            v272.Size = UDim2.new(0, 19, 0, 19)
                            v273.Name = "GlowBubble"
                            v273.Parent = vu270
                            v273.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v273.BackgroundTransparency = 1
                            v273.BorderSizePixel = 0
                            v273.Position = UDim2.new(0, - 15, 0, - 15)
                            v273.Size = UDim2.new(1, 30, 1, 30)
                            v273.ZIndex = 0
                            v273.Image = "rbxassetid://4996891970"
                            v273.ImageColor3 = Color3.fromRGB(15, 15, 15)
                            v273.ScaleType = Enum.ScaleType.Slice
                            v273.SliceCenter = Rect.new(20, 20, 280, 280)
                            vu274.Name = "ValueLabel"
                            vu274.Parent = vu270
                            vu274.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu274.BackgroundTransparency = 1
                            vu274.Size = UDim2.new(0, 36, 0, 21)
                            vu274.Font = Enum.Font.Gotham
                            vu274.Text = tostring(p258 and (math.floor(p258 / pu257 * (pu257 - pu256) + pu256) or 0) or 0)
                            vu274.TextColor3 = Color3.fromRGB(255, 255, 255)
                            vu274.TextSize = 10
                            local function vu278(p275)
                                local v276 = UDim2.new(math.clamp((p275.Position.X - vu264.AbsolutePosition.X) / vu264.AbsoluteSize.X, 0, 1), - 6, - 0.644999981, 0)
                                vu266.Size = UDim2.new(math.clamp((p275.Position.X - vu264.AbsolutePosition.X) / vu264.AbsoluteSize.X, 0, 1), 0, 0, 8)
                                vu268.Position = v276
                                local v277 = math.floor(v276.X.Scale * pu257 / pu257 * (pu257 - pu256) + pu256)
                                vu274.Text = tostring(v277)
                                vu12[pu255] = v277
                                if vu13.AutoSave then
                                    vu8:SaveFile()
                                end
                                pcall(pu259, v277)
                            end
                            vu268.InputBegan:Connect(function(p279)
                                if p279.UserInputType == Enum.UserInputType.MouseButton1 then
                                    vu261 = true
                                    vu270.Visible = true
                                end
                            end)
                            vu268.InputEnded:Connect(function(p280)
                                if p280.UserInputType == Enum.UserInputType.MouseButton1 then
                                    vu261 = false
                                    vu270.Visible = false
                                end
                            end)
                            game:GetService("UserInputService").InputChanged:Connect(function(p281)
                                if vu261 and p281.UserInputType == Enum.UserInputType.MouseMovement then
                                    vu278(p281)
                                end
                            end)
                            function v260.Change(_, p282)
                                vu266.Size = UDim2.new((p282 or 0) / pu257, 0, 0, 8)
                                vu268.Position = UDim2.new((p282 or 0) / pu257, - 6, - 0.644999981, 0)
                                vu274.Text = tostring(p282 and (math.floor(p282 / pu257 * (pu257 - pu256) + pu256) or 0) or 0)
                                vu12[pu255] = p282
                                if vu13.AutoSave then
                                    vu8:Savefile()
                                end
                                pcall(pu259, p282)
                            end
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                            return v260
                        end,
                        Line = function(_)
                            local v283 = Instance.new("Frame")
                            local v284 = Instance.new("Frame")
                            v283.Name = "Seperator1"
                            v283.Parent = vu229
                            v283.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v283.BackgroundTransparency = 1
                            v283.Position = UDim2.new(0, 0, 0.350318581, 0)
                            v283.Size = UDim2.new(0, 100, 0, 8)
                            v284.Name = "Seperator2"
                            v284.Parent = v283
                            v284.BackgroundColor3 = Color3.fromRGB(66, 69, 74)
                            v284.BorderSizePixel = 0
                            v284.Position = UDim2.new(0, 0, 0, 4)
                            v284.Size = UDim2.new(0, 401, 0, 1)
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                        end,
                        MultiDropdown = function(_, pu285, p286, p287, pu288)
                            local function vu295(p289, p290)
                                local v291, v292, v293 = pairs(p289)
                                while true do
                                    local v294
                                    v293, v294 = v291(v292, v293)
                                    if v293 == nil then
                                        break
                                    end
                                    if v294 == p290 then
                                        return true
                                    end
                                end
                                return false
                            end
                            local v296 = {}
                            local vu297 = {}
                            local vu298 = 0
                            local vu299 = 0
                            local vu300 = false
                            local vu301 = Instance.new("Frame")
                            local v302 = Instance.new("TextLabel")
                            local v303 = Instance.new("Frame")
                            local v304 = Instance.new("UICorner")
                            local v305 = Instance.new("Frame")
                            local v306 = Instance.new("UICorner")
                            local vu307 = Instance.new("TextLabel")
                            local v308 = Instance.new("ImageLabel")
                            local v309 = Instance.new("TextButton")
                            if vu12[pu285] == nil then
                                if vu12[pu285] == nil then
                                    vu12[pu285] = p287
                                end
                            else
                                p287 = vu12[pu285]
                                vu297 = vu12[pu285]
                                pcall(pu288, vu297)
                            end
                            vu301.Name = "Dropdown"
                            vu301.Parent = vu229
                            vu301.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu301.BackgroundTransparency = 1
                            vu301.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
                            vu301.Size = UDim2.new(0, 403, 0, 73)
                            v302.Name = "DropdownTitle"
                            v302.Parent = vu301
                            v302.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v302.BackgroundTransparency = 1
                            v302.Position = UDim2.new(0, 5, 0, 0)
                            v302.Size = UDim2.new(0, 200, 0, 29)
                            v302.Font = Enum.Font.Gotham
                            v302.Text = pu285
                            v302.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v302.TextSize = 14
                            v302.TextXAlignment = Enum.TextXAlignment.Left
                            v303.Name = "DropdownFrameOutline"
                            v303.Parent = v302
                            v303.AnchorPoint = Vector2.new(0.5, 0.5)
                            v303.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
                            v303.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
                            v303.Size = UDim2.new(0, 396, 0, 36)
                            v304.CornerRadius = UDim.new(0, 3)
                            v304.Name = "DropdownFrameOutlineCorner"
                            v304.Parent = v303
                            v305.Name = "DropdownFrame"
                            v305.Parent = v302
                            v305.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            v305.ClipsDescendants = true
                            v305.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
                            v305.Selectable = true
                            v305.Size = UDim2.new(0, 392, 0, 32)
                            v306.CornerRadius = UDim.new(0, 4)
                            v306.Name = "DropdownFrameCorner"
                            v306.Parent = v305
                            vu307.Name = "CurrentSelectedText"
                            vu307.Parent = v305
                            vu307.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu307.BackgroundTransparency = 1
                            vu307.Position = UDim2.new(0.0178571437, 0, 0, 0)
                            vu307.Size = UDim2.new(0, 193, 0, 32)
                            vu307.Font = Enum.Font.Gotham
                            vu307.Text = pu285 .. ": " .. table.concat(p287, ",")
                            vu307.TextColor3 = Color3.fromRGB(255, 255, 255)
                            vu307.TextSize = 14
                            vu307.TextXAlignment = Enum.TextXAlignment.Left
                            v308.Name = "ArrowImg"
                            v308.Parent = vu307
                            v308.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v308.BackgroundTransparency = 1
                            v308.Position = UDim2.new(1.84974098, 0, 0.167428851, 0)
                            v308.Size = UDim2.new(0, 22, 0, 22)
                            v308.Image = "http://www.roblox.com/asset/?id=6034818372"
                            v308.ImageColor3 = Color3.fromRGB(212, 212, 212)
                            v309.Name = "DropdownFrameBtn"
                            v309.Parent = v305
                            v309.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v309.BackgroundTransparency = 1
                            v309.Size = UDim2.new(0, 392, 0, 32)
                            v309.Font = Enum.Font.SourceSans
                            v309.Text = ""
                            v309.TextColor3 = Color3.fromRGB(0, 0, 0)
                            v309.TextSize = 14
                            local vu310 = Instance.new("Frame")
                            local v311 = Instance.new("UICorner")
                            local vu312 = Instance.new("Frame")
                            local v313 = Instance.new("UICorner")
                            local v314 = Instance.new("TextLabel")
                            local vu315 = Instance.new("ScrollingFrame")
                            local vu316 = Instance.new("UIListLayout")
                            vu310.Name = "DropdownFrameMainOutline"
                            vu310.Parent = v302
                            vu310.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                            vu310.Position = UDim2.new(- 0.00155700743, 0, 2.16983342, 0)
                            vu310.Size = UDim2.new(0, 396, 0, 81)
                            vu310.Visible = false
                            v311.CornerRadius = UDim.new(0, 3)
                            v311.Name = "DropdownFrameMainOutlineCorner"
                            v311.Parent = vu310
                            vu312.Name = "DropdownFrameMain"
                            vu312.Parent = v302
                            vu312.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            vu312.ClipsDescendants = true
                            vu312.Position = UDim2.new(0.00999999978, 0, 2.2568965, 0)
                            vu312.Selectable = true
                            vu312.Size = UDim2.new(0, 392, 0, 77)
                            vu312.Visible = false
                            v313.CornerRadius = UDim.new(0, 4)
                            v313.Name = "DropdownFrameMainCorner"
                            v313.Parent = vu312
                            v314.Name = "ItemHolderLabel"
                            v314.Parent = vu312
                            v314.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v314.BackgroundTransparency = 1
                            v314.Position = UDim2.new(0.0178571437, 0, 0, 0)
                            v314.Size = UDim2.new(0, 193, 0, 13)
                            v314.Font = Enum.Font.Gotham
                            v314.Text = ""
                            v314.TextColor3 = Color3.fromRGB(212, 212, 212)
                            v314.TextSize = 14
                            v314.TextXAlignment = Enum.TextXAlignment.Left
                            vu315.Name = "ItemHolder"
                            vu315.Parent = v314
                            vu315.Active = true
                            vu315.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu315.BackgroundTransparency = 1
                            vu315.Position = UDim2.new(0, 0, 0.215384638, 0)
                            vu315.Size = UDim2.new(0, 385, 0, 0)
                            vu315.CanvasSize = UDim2.new(0, 0, 0, 0)
                            vu315.ScrollBarThickness = 4
                            vu315.BorderSizePixel = 0
                            vu315.ScrollBarImageColor3 = Color3.fromRGB(231, 23, 55)
                            vu316.Name = "ItemHolderLayout"
                            vu316.Parent = vu315
                            vu316.SortOrder = Enum.SortOrder.LayoutOrder
                            vu316.Padding = UDim.new(0, 0)
                            v309.MouseButton1Click:Connect(function()
                                if vu300 ~= false then
                                    vu301.Size = UDim2.new(0, 403, 0, 73)
                                    vu312.Visible = false
                                    vu310.Visible = false
                                    vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                                else
                                    vu312.Visible = true
                                    vu310.Visible = true
                                    vu301.Size = UDim2.new(0, 403, 0, 73 + vu310.AbsoluteSize.Y)
                                    vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                                end
                                vu300 = not vu300
                            end)
                            local v317 = next
                            local vu318 = vu310
                            local vu319 = vu312
                            local v320 = nil
                            while true do
                                local vu321
                                v320, vu321 = v317(p286, v320)
                                if v320 == nil then
                                    break
                                end
                                vu298 = vu298 + 1
                                vu299 = vu298 == 1 and 29 or (vu298 == 2 and 58 or (3 <= vu298 and vu298 <= 9 and 87 or (vu298 >= 10 and 200 or vu299)))
                                local v322 = Instance.new("TextButton")
                                local v323 = Instance.new("UICorner")
                                local vu324 = Instance.new("TextLabel")
                                v322.Name = "Item"
                                v322.Parent = vu315
                                v322.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                                v322.Size = UDim2.new(0, 379, 0, 29)
                                v322.AutoButtonColor = false
                                v322.Font = Enum.Font.SourceSans
                                v322.Text = ""
                                v322.TextColor3 = Color3.fromRGB(0, 0, 0)
                                v322.TextSize = 14
                                v322.BackgroundTransparency = 1
                                v323.CornerRadius = UDim.new(0, 4)
                                v323.Name = "ItemCorner"
                                v323.Parent = v322
                                vu324.Name = "ItemText"
                                vu324.Parent = v322
                                vu324.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
                                vu324.BackgroundTransparency = 1
                                vu324.Position = UDim2.new(0.0211081803, 0, 0, 0)
                                vu324.Size = UDim2.new(0, 192, 0, 29)
                                vu324.Font = Enum.Font.Gotham
                                vu324.TextColor3 = Color3.fromRGB(212, 212, 212)
                                vu324.TextSize = 14
                                vu324.TextXAlignment = Enum.TextXAlignment.Left
                                vu324.Text = vu321
                                local v325 = table.concat(vu297, ",")
                                if string.find(v325, vu324.Text) then
                                    vu324.TextColor3 = Color3.fromRGB(255, 10, 5)
                                end
                                v322.MouseButton1Click:Connect(function()
                                    if vu295(vu297, vu321) then
                                        local v326 = next
                                        local v327 = vu297
                                        local v328 = nil
                                        while true do
                                            local v329
                                            v328, v329 = v326(v327, v328)
                                            if v328 == nil then
                                                break
                                            end
                                            if v329 == vu321 then
                                                table.remove(vu297, v328)
                                            end
                                        end
                                        vu324.TextColor3 = Color3.fromRGB(212, 212, 212)
                                        vu307.Text = pu285 .. " : " .. table.concat(vu297, ",")
                                        vu12[pu285] = vu297
                                        if vu13.AutoSave then
                                            vu8:SaveFile()
                                        end
                                        pcall(pu288, vu297)
                                    else
                                        table.insert(vu297, vu321)
                                        vu307.Text = pu285 .. " : " .. table.concat(vu297, ",")
                                        vu324.TextColor3 = Color3.fromRGB(255, 10, 5)
                                        vu12[pu285] = vu297
                                        if vu13.AutoSave then
                                            vu8:SaveFile()
                                        end
                                        pcall(pu288, vu297)
                                    end
                                end)
                                vu315.CanvasSize = UDim2.new(0, 0, 0, vu316.AbsoluteContentSize.Y)
                                vu315.Size = UDim2.new(0, 385, 0, vu299)
                                vu319.Size = UDim2.new(0, 392, 0, vu299 + 6)
                                vu318.Size = UDim2.new(0, 396, 0, vu299 + 10)
                            end
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                            function v296.Clear(_)
                                local v330 = next
                                local v331, v332 = vu315:GetChildren()
                                while true do
                                    local v333
                                    v332, v333 = v330(v331, v332)
                                    if v332 == nil then
                                        break
                                    end
                                    if v333.Name == "Item" then
                                        v333:Destroy()
                                    end
                                end
                                table.clear(vu297)
                                vu307.Text = "..."
                                vu12[pu285] = vu297
                                if vu13.AutoSave then
                                    vu8:SaveFile()
                                end
                                vu298 = 0
                                vu299 = 0
                                vu315.Size = UDim2.new(0, 385, 0, 0)
                                vu319.Size = UDim2.new(0, 392, 0, 0)
                                vu318.Size = UDim2.new(0, 396, 0, 0)
                                vu301.Size = UDim2.new(0, 403, 0, 73)
                                vu319.Visible = false
                                vu318.Visible = false
                                vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                            end
                            function v296.Add(_, pu334)
                                vu298 = vu298 + 1
                                if vu298 ~= 1 then
                                    if vu298 ~= 2 then
                                        if vu298 < 3 or vu298 > 4 then
                                            if vu298 >= 10 then
                                                vu299 = 200
                                            end
                                        else
                                            vu299 = 87
                                        end
                                    else
                                        vu299 = 58
                                    end
                                else
                                    vu299 = 29
                                end
                                local v335 = Instance.new("TextButton")
                                local v336 = Instance.new("UICorner")
                                local vu337 = Instance.new("TextLabel")
                                v335.Name = "Item"
                                v335.Parent = vu315
                                v335.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
                                v335.Size = UDim2.new(0, 379, 0, 29)
                                v335.AutoButtonColor = false
                                v335.Font = Enum.Font.SourceSans
                                v335.Text = ""
                                v335.TextColor3 = Color3.fromRGB(0, 0, 0)
                                v335.TextSize = 14
                                v335.BackgroundTransparency = 1
                                v336.CornerRadius = UDim.new(0, 4)
                                v336.Name = "ItemCorner"
                                v336.Parent = v335
                                vu337.Name = "ItemText"
                                vu337.Parent = v335
                                vu337.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
                                vu337.BackgroundTransparency = 1
                                vu337.Position = UDim2.new(0.0211081803, 0, 0, 0)
                                vu337.Size = UDim2.new(0, 192, 0, 29)
                                vu337.Font = Enum.Font.Gotham
                                vu337.TextColor3 = Color3.fromRGB(212, 212, 212)
                                vu337.TextSize = 14
                                vu337.TextXAlignment = Enum.TextXAlignment.Left
                                vu337.Text = pu334
                                v335.MouseButton1Click:Connect(function()
                                    if vu295(vu297, pu334) then
                                        local v338 = next
                                        local v339 = vu297
                                        local v340 = nil
                                        while true do
                                            local v341
                                            v340, v341 = v338(v339, v340)
                                            if v340 == nil then
                                                break
                                            end
                                            if v341 == pu334 then
                                                table.remove(vu297, v340)
                                            end
                                        end
                                        vu337.TextColor3 = Color3.fromRGB(212, 212, 212)
                                        vu307.Text = pu285 .. " : " .. table.concat(vu297, ",")
                                        vu12[pu285] = vu297
                                        if vu13.AutoSave then
                                            vu8:SaveFile()
                                        end
                                        pcall(pu288, vu297)
                                    else
                                        table.insert(vu297, pu334)
                                        vu307.Text = pu285 .. " : " .. table.concat(vu297, ",")
                                        vu337.TextColor3 = Color3.fromRGB(255, 10, 5)
                                        vu12[pu285] = vu297
                                        if vu13.AutoSave then
                                            vu8:SaveFile()
                                        end
                                        pcall(pu288, vu297)
                                    end
                                end)
                                vu315.CanvasSize = UDim2.new(0, 0, 0, vu316.AbsoluteContentSize.Y)
                                vu315.Size = UDim2.new(0, 385, 0, vu299)
                                vu319.Size = UDim2.new(0, 392, 0, vu299 + 6)
                                vu318.Size = UDim2.new(0, 396, 0, vu299 + 10)
                            end
                            return v296
                        end,
                        Dropdown = function(_, pu342, p343, p344, pu345)
                            local v346 = {}
                            local vu347 = 0
                            local vu348 = 0
                            local vu349 = false
                            local vu350 = Instance.new("Frame")
                            local v351 = Instance.new("TextLabel")
                            local v352 = Instance.new("Frame")
                            local v353 = Instance.new("UICorner")
                            local v354 = Instance.new("Frame")
                            local v355 = Instance.new("UICorner")
                            local vu356 = Instance.new("TextLabel")
                            local v357 = Instance.new("ImageLabel")
                            local v358 = Instance.new("TextButton")
                            if vu12[pu342] == nil then
                                if vu12[pu342] == nil then
                                    vu12[pu342] = p344
                                end
                            else
                                p344 = vu12[pu342]
                                pcall(pu345, p344)
                            end
                            vu350.Name = "Dropdown"
                            vu350.Parent = vu229
                            vu350.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu350.BackgroundTransparency = 1
                            vu350.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
                            vu350.Size = UDim2.new(0, 403, 0, 73)
                            v351.Name = "DropdownTitle"
                            v351.Parent = vu350
                            v351.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v351.BackgroundTransparency = 1
                            v351.Position = UDim2.new(0, 5, 0, 0)
                            v351.Size = UDim2.new(0, 200, 0, 29)
                            v351.Font = Enum.Font.Gotham
                            v351.Text = pu342
                            v351.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v351.TextSize = 14
                            v351.TextXAlignment = Enum.TextXAlignment.Left
                            v352.Name = "DropdownFrameOutline"
                            v352.Parent = v351
                            v352.AnchorPoint = Vector2.new(0.5, 0.5)
                            v352.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
                            v352.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
                            v352.Size = UDim2.new(0, 396, 0, 36)
                            v353.CornerRadius = UDim.new(0, 3)
                            v353.Name = "DropdownFrameOutlineCorner"
                            v353.Parent = v352
                            v354.Name = "DropdownFrame"
                            v354.Parent = v351
                            v354.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            v354.ClipsDescendants = true
                            v354.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
                            v354.Selectable = true
                            v354.Size = UDim2.new(0, 392, 0, 32)
                            v355.CornerRadius = UDim.new(0, 4)
                            v355.Name = "DropdownFrameCorner"
                            v355.Parent = v354
                            vu356.Name = "CurrentSelectedText"
                            vu356.Parent = v354
                            vu356.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu356.BackgroundTransparency = 1
                            vu356.Position = UDim2.new(0.0178571437, 0, 0, 0)
                            vu356.Size = UDim2.new(0, 193, 0, 32)
                            vu356.Font = Enum.Font.Gotham
                            vu356.Text = pu342 .. ":" .. p344
                            vu356.TextColor3 = Color3.fromRGB(255, 255, 255)
                            vu356.TextSize = 14
                            vu356.TextXAlignment = Enum.TextXAlignment.Left
                            v357.Name = "ArrowImg"
                            v357.Parent = vu356
                            v357.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v357.BackgroundTransparency = 1
                            v357.Position = UDim2.new(1.84974098, 0, 0.167428851, 0)
                            v357.Size = UDim2.new(0, 22, 0, 22)
                            v357.Image = "http://www.roblox.com/asset/?id=6034818372"
                            v357.ImageColor3 = Color3.fromRGB(212, 212, 212)
                            v358.Name = "DropdownFrameBtn"
                            v358.Parent = v354
                            v358.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v358.BackgroundTransparency = 1
                            v358.Size = UDim2.new(0, 392, 0, 32)
                            v358.Font = Enum.Font.SourceSans
                            v358.Text = ""
                            v358.TextColor3 = Color3.fromRGB(0, 0, 0)
                            v358.TextSize = 14
                            local vu359 = Instance.new("Frame")
                            local v360 = Instance.new("UICorner")
                            local vu361 = Instance.new("Frame")
                            local v362 = Instance.new("UICorner")
                            local v363 = Instance.new("TextLabel")
                            local vu364 = Instance.new("ScrollingFrame")
                            local vu365 = Instance.new("UIListLayout")
                            vu359.Name = "DropdownFrameMainOutline"
                            vu359.Parent = v351
                            vu359.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                            vu359.Position = UDim2.new(- 0.00155700743, 0, 2.16983342, 0)
                            vu359.Size = UDim2.new(0, 396, 0, 81)
                            vu359.Visible = false
                            v360.CornerRadius = UDim.new(0, 3)
                            v360.Name = "DropdownFrameMainOutlineCorner"
                            v360.Parent = vu359
                            vu361.Name = "DropdownFrameMain"
                            vu361.Parent = v351
                            vu361.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            vu361.ClipsDescendants = true
                            vu361.Position = UDim2.new(0.00999999978, 0, 2.2568965, 0)
                            vu361.Selectable = true
                            vu361.Size = UDim2.new(0, 392, 0, 77)
                            vu361.Visible = false
                            v362.CornerRadius = UDim.new(0, 4)
                            v362.Name = "DropdownFrameMainCorner"
                            v362.Parent = vu361
                            v363.Name = "ItemHolderLabel"
                            v363.Parent = vu361
                            v363.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v363.BackgroundTransparency = 1
                            v363.Position = UDim2.new(0.0178571437, 0, 0, 0)
                            v363.Size = UDim2.new(0, 193, 0, 13)
                            v363.Font = Enum.Font.Gotham
                            v363.Text = ""
                            v363.TextColor3 = Color3.fromRGB(212, 212, 212)
                            v363.TextSize = 14
                            v363.TextXAlignment = Enum.TextXAlignment.Left
                            vu364.Name = "ItemHolder"
                            vu364.Parent = v363
                            vu364.Active = true
                            vu364.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu364.BackgroundTransparency = 1
                            vu364.Position = UDim2.new(0, 0, 0.215384638, 0)
                            vu364.Size = UDim2.new(0, 385, 0, 0)
                            vu364.CanvasSize = UDim2.new(0, 0, 0, 0)
                            vu364.ScrollBarThickness = 4
                            vu364.BorderSizePixel = 0
                            vu364.ScrollBarImageColor3 = Color3.fromRGB(231, 23, 55)
                            vu365.Name = "ItemHolderLayout"
                            vu365.Parent = vu364
                            vu365.SortOrder = Enum.SortOrder.LayoutOrder
                            vu365.Padding = UDim.new(0, 0)
                            v358.MouseButton1Click:Connect(function()
                                if vu349 ~= false then
                                    vu350.Size = UDim2.new(0, 403, 0, 73)
                                    vu361.Visible = false
                                    vu359.Visible = false
                                    vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                                else
                                    vu361.Visible = true
                                    vu359.Visible = true
                                    vu350.Size = UDim2.new(0, 403, 0, 73 + vu359.AbsoluteSize.Y)
                                    vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                                end
                                vu349 = not vu349
                            end)
                            local v366 = next
                            local vu367 = vu359
                            local vu368 = vu361
                            local v369 = nil
                            while true do
                                local vu370
                                v369, vu370 = v366(p343, v369)
                                if v369 == nil then
                                    break
                                end
                                vu347 = vu347 + 1
                                vu348 = vu347 == 1 and 29 or (vu347 == 2 and 58 or (3 <= vu347 and vu347 <= 9 and 87 or (vu347 >= 10 and 200 or vu348)))
                                local vu371 = Instance.new("TextButton")
                                local v372 = Instance.new("UICorner")
                                local vu373 = Instance.new("TextLabel")
                                vu371.Name = "Item"
                                vu371.Parent = vu364
                                vu371.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                                vu371.Size = UDim2.new(0, 379, 0, 29)
                                vu371.AutoButtonColor = false
                                vu371.Font = Enum.Font.SourceSans
                                vu371.Text = ""
                                vu371.TextColor3 = Color3.fromRGB(0, 0, 0)
                                vu371.TextSize = 14
                                vu371.BackgroundTransparency = 1
                                v372.CornerRadius = UDim.new(0, 4)
                                v372.Name = "ItemCorner"
                                v372.Parent = vu371
                                vu373.Name = "ItemText"
                                vu373.Parent = vu371
                                vu373.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
                                vu373.BackgroundTransparency = 1
                                vu373.Position = UDim2.new(0.0211081803, 0, 0, 0)
                                vu373.Size = UDim2.new(0, 192, 0, 29)
                                vu373.Font = Enum.Font.Gotham
                                vu373.TextColor3 = Color3.fromRGB(212, 212, 212)
                                vu373.TextSize = 14
                                vu373.TextXAlignment = Enum.TextXAlignment.Left
                                vu373.Text = vu370
                                vu371.MouseEnter:Connect(function()
                                    vu373.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    vu371.BackgroundTransparency = 0
                                end)
                                vu371.MouseLeave:Connect(function()
                                    vu373.TextColor3 = Color3.fromRGB(212, 212, 212)
                                    vu371.BackgroundTransparency = 1
                                end)
                                vu371.MouseButton1Click:Connect(function()
                                    vu356.Text = pu342 .. " : " .. vu370
                                    vu12[pu342] = vu370
                                    if vu13.AutoSave then
                                        vu8:SaveFile()
                                    end
                                    pcall(pu345, vu370)
                                    vu350.Size = UDim2.new(0, 403, 0, 73)
                                    vu368.Visible = false
                                    vu367.Visible = false
                                    vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                                    vu349 = not vu349
                                end)
                                vu364.CanvasSize = UDim2.new(0, 0, 0, vu365.AbsoluteContentSize.Y)
                                vu364.Size = UDim2.new(0, 385, 0, vu348)
                                vu368.Size = UDim2.new(0, 392, 0, vu348 + 6)
                                vu367.Size = UDim2.new(0, 396, 0, vu348 + 10)
                            end
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                            function v346.Clear(_)
                                local v374 = next
                                local v375, v376 = vu364:GetChildren()
                                while true do
                                    local v377
                                    v376, v377 = v374(v375, v376)
                                    if v376 == nil then
                                        break
                                    end
                                    if v377.Name == "Item" then
                                        v377:Destroy()
                                    end
                                end
                                vu356.Text = "..."
                                vu347 = 0
                                vu348 = 0
                                vu364.Size = UDim2.new(0, 385, 0, 0)
                                vu368.Size = UDim2.new(0, 392, 0, 0)
                                vu367.Size = UDim2.new(0, 396, 0, 0)
                                vu350.Size = UDim2.new(0, 403, 0, 73)
                                vu368.Visible = false
                                vu367.Visible = false
                                vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                            end
                            function v346.Add(_, pu378)
                                vu347 = vu347 + 1
                                if vu347 ~= 1 then
                                    if vu347 ~= 2 then
                                        if vu347 < 3 or vu347 > 4 then
                                            if vu347 >= 10 then
                                                vu348 = 200
                                            end
                                        else
                                            vu348 = 87
                                        end
                                    else
                                        vu348 = 58
                                    end
                                else
                                    vu348 = 29
                                end
                                local vu379 = Instance.new("TextButton")
                                local v380 = Instance.new("UICorner")
                                local vu381 = Instance.new("TextLabel")
                                vu379.Name = "Item"
                                vu379.Parent = vu364
                                vu379.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
                                vu379.Size = UDim2.new(0, 379, 0, 29)
                                vu379.AutoButtonColor = false
                                vu379.Font = Enum.Font.SourceSans
                                vu379.Text = ""
                                vu379.TextColor3 = Color3.fromRGB(0, 0, 0)
                                vu379.TextSize = 14
                                vu379.BackgroundTransparency = 1
                                v380.CornerRadius = UDim.new(0, 4)
                                v380.Name = "ItemCorner"
                                v380.Parent = vu379
                                vu381.Name = "ItemText"
                                vu381.Parent = vu379
                                vu381.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
                                vu381.BackgroundTransparency = 1
                                vu381.Position = UDim2.new(0.0211081803, 0, 0, 0)
                                vu381.Size = UDim2.new(0, 192, 0, 29)
                                vu381.Font = Enum.Font.Gotham
                                vu381.TextColor3 = Color3.fromRGB(212, 212, 212)
                                vu381.TextSize = 14
                                vu381.TextXAlignment = Enum.TextXAlignment.Left
                                vu381.Text = pu378
                                vu379.MouseEnter:Connect(function()
                                    vu381.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    vu379.BackgroundTransparency = 0
                                end)
                                vu379.MouseLeave:Connect(function()
                                    vu381.TextColor3 = Color3.fromRGB(212, 212, 212)
                                    vu379.BackgroundTransparency = 1
                                end)
                                vu379.MouseButton1Click:Connect(function()
                                    vu356.Text = pu342 .. " : " .. pu378
                                    vu12[pu342] = pu378
                                    if vu13.AutoSave then
                                        vu8:SaveFile()
                                    end
                                    pcall(pu345, pu378)
                                    vu350.Size = UDim2.new(0, 403, 0, 73)
                                    vu368.Visible = false
                                    vu367.Visible = false
                                    vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                                    vu349 = not vu349
                                end)
                                vu364.CanvasSize = UDim2.new(0, 0, 0, vu365.AbsoluteContentSize.Y)
                                vu364.Size = UDim2.new(0, 385, 0, vu348)
                                vu368.Size = UDim2.new(0, 392, 0, vu348 + 6)
                                vu367.Size = UDim2.new(0, 396, 0, vu348 + 10)
                            end
                            return v346
                        end,
                        Colorpicker = function(_, _, p382, pu383)
                            Color3.fromRGB(0, 0, 0)
                            Color3.fromRGB(0, 0, 0)
                            local vu384 = 1
                            local vu385 = 1
                            local vu386 = 1
                            local vu387 = nil
                            local vu388 = nil
                            local v389 = Instance.new("Frame")
                            local v390 = Instance.new("TextLabel")
                            local v391 = Instance.new("Frame")
                            local v392 = Instance.new("UICorner")
                            local v393 = Instance.new("Frame")
                            local v394 = Instance.new("UICorner")
                            local vu395 = Instance.new("ImageLabel")
                            local v396 = Instance.new("UICorner")
                            local vu397 = Instance.new("ImageLabel")
                            local vu398 = Instance.new("ImageLabel")
                            local v399 = Instance.new("UICorner")
                            local v400 = Instance.new("UIGradient")
                            local vu401 = Instance.new("ImageLabel")
                            local vu402 = Instance.new("Frame")
                            local v403 = Instance.new("UICorner")
                            v389.Name = "Colorpicker"
                            v389.Parent = vu229
                            v389.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v389.BackgroundTransparency = 1
                            v389.Position = UDim2.new(0.0895741582, 0, 0.474232763, 0)
                            v389.Size = UDim2.new(0, 403, 0, 175)
                            v390.Name = "ColorpickerTitle"
                            v390.Parent = v389
                            v390.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v390.BackgroundTransparency = 1
                            v390.Position = UDim2.new(0, 5, 0, 0)
                            v390.Size = UDim2.new(0, 200, 0, 29)
                            v390.Font = Enum.Font.Gotham
                            v390.Text = "Colorpicker"
                            v390.TextColor3 = Color3.fromRGB(127, 131, 137)
                            v390.TextSize = 14
                            v390.TextXAlignment = Enum.TextXAlignment.Left
                            v391.Name = "ColorpickerFrameOutline"
                            v391.Parent = v390
                            v391.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
                            v391.Position = UDim2.new(- 0.00100000005, 0, 0.991999984, 0)
                            v391.Size = UDim2.new(0, 238, 0, 139)
                            v392.CornerRadius = UDim.new(0, 3)
                            v392.Name = "ColorpickerFrameOutlineCorner"
                            v392.Parent = v391
                            v393.Name = "ColorpickerFrame"
                            v393.Parent = v390
                            v393.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
                            v393.ClipsDescendants = true
                            v393.Position = UDim2.new(0.00999999978, 0, 1.06638515, 0)
                            v393.Selectable = true
                            v393.Size = UDim2.new(0, 234, 0, 135)
                            v394.CornerRadius = UDim.new(0, 3)
                            v394.Name = "ColorpickerFrameCorner"
                            v394.Parent = v393
                            vu395.Name = "Color"
                            vu395.Parent = v393
                            vu395.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
                            vu395.Position = UDim2.new(0, 10, 0, 10)
                            vu395.Size = UDim2.new(0, 154, 0, 118)
                            vu395.ZIndex = 10
                            vu395.Image = "rbxassetid://4155801252"
                            v396.CornerRadius = UDim.new(0, 3)
                            v396.Name = "ColorCorner"
                            v396.Parent = vu395
                            vu397.Name = "ColorSelection"
                            vu397.Parent = vu395
                            vu397.AnchorPoint = Vector2.new(0.5, 0.5)
                            vu397.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu397.BackgroundTransparency = 1
                            local v404 = UDim2.new
                            local v405
                            if p382 then
                                v405 = select(3, Color3.toHSV(p382))
                            else
                                v405 = p382
                            end
                            vu397.Position = v404(v405)
                            vu397.Size = UDim2.new(0, 18, 0, 18)
                            vu397.Image = "http://www.roblox.com/asset/?id=4805639000"
                            vu397.ScaleType = Enum.ScaleType.Fit
                            vu398.Name = "Hue"
                            vu398.Parent = v393
                            vu398.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu398.Position = UDim2.new(0, 171, 0, 10)
                            vu398.Size = UDim2.new(0, 18, 0, 118)
                            v399.CornerRadius = UDim.new(0, 3)
                            v399.Name = "HueCorner"
                            v399.Parent = vu398
                            v400.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                                ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
                                ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
                                ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)),
                                ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
                                ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
                                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                            })
                            v400.Rotation = 270
                            v400.Name = "HueGradient"
                            v400.Parent = vu398
                            vu401.Name = "HueSelection"
                            vu401.Parent = vu398
                            vu401.AnchorPoint = Vector2.new(0.5, 0.5)
                            vu401.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu401.BackgroundTransparency = 1
                            vu401.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(p382)))
                            vu401.Size = UDim2.new(0, 18, 0, 18)
                            vu401.Image = "http://www.roblox.com/asset/?id=4805639000"
                            vu402.Name = "PresetClr"
                            vu402.Parent = v393
                            vu402.BackgroundColor3 = p382
                            vu402.Position = UDim2.new(0.846153855, 0, 0.0740740746, 0)
                            vu402.Size = UDim2.new(0, 25, 0, 25)
                            v403.CornerRadius = UDim.new(0, 3)
                            v403.Name = "PresetClrCorner"
                            v403.Parent = vu402
                            local function vu406(_)
                                vu402.BackgroundColor3 = Color3.fromHSV(vu384, vu385, vu386)
                                vu395.BackgroundColor3 = Color3.fromHSV(vu384, 1, 1)
                                pcall(pu383, vu402.BackgroundColor3)
                            end
                            local vu407 = 1 - math.clamp(vu401.AbsolutePosition.Y - vu398.AbsolutePosition.Y, 0, vu398.AbsoluteSize.Y) / vu398.AbsoluteSize.Y
                            local vu408 = math.clamp(vu397.AbsolutePosition.X - vu395.AbsolutePosition.X, 0, vu395.AbsoluteSize.X) / vu395.AbsoluteSize.X
                            local vu409 = 1 - math.clamp(vu397.AbsolutePosition.Y - vu395.AbsolutePosition.Y, 0, vu395.AbsoluteSize.Y) / vu395.AbsoluteSize.Y
                            vu402.BackgroundColor3 = p382
                            vu395.BackgroundColor3 = p382
                            pcall(pu383, vu402.BackgroundColor3)
                            vu395.InputBegan:Connect(function(p410)
                                if p410.UserInputType == Enum.UserInputType.MouseButton1 then
                                    if vu387 then
                                        vu387:Disconnect()
                                    end
                                    vu387 = vu4.RenderStepped:Connect(function()
                                        local v411 = math.clamp(vu5.X - vu395.AbsolutePosition.X, 0, vu395.AbsoluteSize.X) / vu395.AbsoluteSize.X
                                        local v412 = math.clamp(vu5.Y - vu395.AbsolutePosition.Y, 0, vu395.AbsoluteSize.Y) / vu395.AbsoluteSize.Y
                                        vu397.Position = UDim2.new(v411, 0, v412, 0)
                                        vu408 = v411
                                        vu409 = 1 - v412
                                        vu406(true)
                                    end)
                                end
                            end)
                            vu395.InputEnded:Connect(function(p413)
                                if p413.UserInputType == Enum.UserInputType.MouseButton1 and vu387 then
                                    vu387:Disconnect()
                                end
                            end)
                            vu398.InputBegan:Connect(function(p414)
                                if p414.UserInputType == Enum.UserInputType.MouseButton1 then
                                    if vu388 then
                                        vu388:Disconnect()
                                    end
                                    vu388 = vu4.RenderStepped:Connect(function()
                                        local v415 = math.clamp(vu5.Y - vu398.AbsolutePosition.Y, 0, vu398.AbsoluteSize.Y) / vu398.AbsoluteSize.Y
                                        vu401.Position = UDim2.new(0.48, 0, v415, 0)
                                        vu407 = 1 - v415
                                        vu406(true)
                                    end)
                                end
                            end)
                            vu398.InputEnded:Connect(function(p416)
                                if p416.UserInputType == Enum.UserInputType.MouseButton1 and vu388 then
                                    vu388:Disconnect()
                                end
                            end)
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                        end,
                        Textbox = function(_, pu417, p418, pu419, pu420)
                            local v421 = Instance.new("Frame")
                            local v422 = Instance.new("TextLabel")
                            local vu423 = Instance.new("Frame")
                            local v424 = Instance.new("UICorner")
                            local v425 = Instance.new("Frame")
                            local v426 = Instance.new("UICorner")
                            local vu427 = Instance.new("TextBox")
                            v421.Name = "Textbox"
                            v421.Parent = vu229
                            v421.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v421.BackgroundTransparency = 1
                            v421.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
                            v421.Size = UDim2.new(0, 403, 0, 73)
                            v422.Name = "TextboxTitle"
                            v422.Parent = v421
                            v422.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v422.BackgroundTransparency = 1
                            v422.Position = UDim2.new(0, 5, 0, 0)
                            v422.Size = UDim2.new(0, 200, 0, 29)
                            v422.Font = Enum.Font.Gotham
                            v422.Text = pu417
                            v422.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v422.TextSize = 14
                            v422.TextXAlignment = Enum.TextXAlignment.Left
                            vu423.Name = "TextboxFrameOutline"
                            vu423.Parent = v422
                            vu423.AnchorPoint = Vector2.new(0.5, 0.5)
                            vu423.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                            vu423.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
                            vu423.Size = UDim2.new(0, 396, 0, 36)
                            v424.CornerRadius = UDim.new(0, 3)
                            v424.Name = "TextboxFrameOutlineCorner"
                            v424.Parent = vu423
                            v425.Name = "TextboxFrame"
                            v425.Parent = v422
                            v425.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            v425.ClipsDescendants = true
                            v425.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
                            v425.Selectable = true
                            v425.Size = UDim2.new(0, 392, 0, 32)
                            v426.CornerRadius = UDim.new(0, 4)
                            v426.Name = "TextboxFrameCorner"
                            v426.Parent = v425
                            vu427.Parent = v425
                            vu427.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu427.BackgroundTransparency = 1
                            vu427.Position = UDim2.new(0.0178571437, 0, 0, 0)
                            vu427.Size = UDim2.new(0, 377, 0, 32)
                            vu427.Font = Enum.Font.Gotham
                            vu427.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
                            vu427.PlaceholderText = p418
                            vu427.Text = ""
                            vu427.TextColor3 = Color3.fromRGB(193, 195, 197)
                            vu427.TextSize = 14
                            vu427.TextXAlignment = Enum.TextXAlignment.Left
                            if vu12[pu417] == nil then
                                if vu12[pu417] == nil then
                                    vu12[pu417] = ""
                                end
                            else
                                vu427.Text = vu12[pu417]
                                pcall(pu420, vu427.Text)
                            end
                            vu427.Focused:Connect(function()
                                vu3:Create(vu423, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    BackgroundColor3 = Color3.fromRGB(255, 170, 0)
                                }):Play()
                            end)
                            vu427.FocusLost:Connect(function(p428)
                                vu3:Create(vu423, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                                }):Play()
                                if p428 and # vu427.Text > 0 then
                                    pcall(pu420, vu427.Text)
                                    vu12[pu417] = vu427.Text
                                    if vu13.AutoSave then
                                        vu8:SaveFile()
                                    end
                                    if pu419 then
                                        vu427.Text = ""
                                    end
                                end
                            end)
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                        end,
                        Label = function(_, p429, p430)
                            local vu431 = Instance.new("TextButton")
                            local v432 = Instance.new("TextLabel")
                            local v433 = {}
                            vu431.Name = "Label"
                            vu431.Parent = vu229
                            vu431.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                            vu431.BorderSizePixel = 0
                            vu431.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
                            vu431.Size = UDim2.new(0, 401, 0, 30)
                            vu431.AutoButtonColor = false
                            vu431.Font = Enum.Font.Gotham
                            vu431.Text = ""
                            vu431.TextColor3 = p430 or color3.fromRGB(255, 255, 255)
                            vu431.TextSize = 14
                            v432.Name = "LabelTitle"
                            v432.Parent = vu431
                            v432.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v432.BackgroundTransparency = 1
                            v432.Position = UDim2.new(0, 5, 0, 0)
                            v432.Size = UDim2.new(0, 200, 0, 30)
                            v432.Font = Enum.Font.Gotham
                            v432.Text = p429
                            v432.TextColor3 = p430
                            v432.TextSize = 14
                            v432.TextXAlignment = Enum.TextXAlignment.Left
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                            function v433.Refresh(_, p434)
                                vu431.Text = p434
                            end
                            return v433
                        end,
                        Bind = function(_, p435, p436, pu437)
                            local vu438 = p436.Name
                            local v439 = Instance.new("TextButton")
                            local v440 = Instance.new("TextLabel")
                            local vu441 = Instance.new("TextLabel")
                            v439.Name = "Keybind"
                            v439.Parent = vu229
                            v439.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
                            v439.BorderSizePixel = 0
                            v439.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
                            v439.Size = UDim2.new(0, 401, 0, 30)
                            v439.AutoButtonColor = false
                            v439.Font = Enum.Font.Gotham
                            v439.Text = ""
                            v439.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v439.TextSize = 14
                            v440.Name = "KeybindTitle"
                            v440.Parent = v439
                            v440.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v440.BackgroundTransparency = 1
                            v440.Position = UDim2.new(0, 5, 0, 0)
                            v440.Size = UDim2.new(0, 200, 0, 30)
                            v440.Font = Enum.Font.Gotham
                            v440.Text = p435
                            v440.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v440.TextSize = 14
                            v440.TextXAlignment = Enum.TextXAlignment.Left
                            vu441.Name = "KeybindText"
                            vu441.Parent = v439
                            vu441.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu441.BackgroundTransparency = 1
                            vu441.Position = UDim2.new(0, 316, 0, 0)
                            vu441.Size = UDim2.new(0, 85, 0, 30)
                            vu441.Font = Enum.Font.Gotham
                            vu441.Text = p436.Name
                            vu441.TextColor3 = Color3.fromRGB(255, 255, 255)
                            vu441.TextSize = 14
                            vu441.TextXAlignment = Enum.TextXAlignment.Right
                            v439.MouseButton1Click:Connect(function()
                                vu441.Text = "..."
                                local v442 = game:GetService("UserInputService").InputBegan:wait()
                                if v442.KeyCode.Name ~= "Unknown" then
                                    vu441.Text = v442.KeyCode.Name
                                    vu438 = v442.KeyCode.Name
                                end
                            end)
                            game:GetService("UserInputService").InputBegan:connect(function(p443, p444)
                                if not p444 and p443.KeyCode.Name == vu438 then
                                    pcall(pu437)
                                end
                            end)
                            vu229.CanvasSize = UDim2.new(0, 0, 0, vu230.AbsoluteContentSize.Y)
                        end
                    }
                end
            }
        end
    }
end
local v445 = vu8
vu8.Create(v445)
local v446 = vu8
vu8.Loadfile(v446)
local vu447 = "HornyCat.json"
_G.KeySuccess = false
_G.RealKey = tostring(game:HttpGet("https://pastebin.com/raw/ep9drTdP"))
_G.Vip = "F42F535DD5979D833CF32CEBB9BA9"
if isfile("HornyCat.json") == false then
    writefile(vu447, tostring(""))
end
if tostring(readfile(vu447)) == _G.RealKey or tostring(readfile(vu447)) == _G.Vip then
    _G.KeySuccess = true
else
    if game:GetService("CoreGui").RobloxGui.Sounds:FindFirstChild("RobloxSoundGui") then
        game:GetService("CoreGui").RobloxGui.Sounds:FindFirstChild("RobloxSoundGui"):Destroy()
    end
    local vu448 = Instance.new("ScreenGui")
    local vu449 = Instance.new("ImageLabel")
    local vu450 = Instance.new("ImageLabel")
    local v451 = Instance.new("ImageLabel")
    local v452 = Instance.new("TextLabel")
    local v453 = Instance.new("ImageLabel")
    local v454 = Instance.new("ImageLabel")
    local v455 = Instance.new("TextBox")
    local v456 = Instance.new("TextButton")
    local v457 = Instance.new("ImageLabel")
    _G.KeySuccess = false
    vu448.Parent = game:GetService("CoreGui").RobloxGui.Sounds
    vu448.Name = "RobloxSoundGui"
    vu449.Name = "Main"
    vu449.Parent = vu448
    vu449.Active = true
    vu449.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu449.BackgroundTransparency = 1
    vu449.Position = UDim2.new(0.390225559, 0, 0.393019736, 0)
    vu449.Size = UDim2.new(0, 291, 0, 143)
    vu449.Image = "rbxassetid://3570695787"
    vu449.ImageColor3 = Color3.fromRGB(25, 25, 25)
    vu449.ScaleType = Enum.ScaleType.Slice
    vu449.SliceCenter = Rect.new(100, 100, 100, 100)
    vu449.SliceScale = 0.04
    vu450.Name = "Topbar"
    vu450.Parent = vu449
    vu450.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu450.BackgroundTransparency = 1
    vu450.Position = UDim2.new(0, 0, - 0.230769232, 0)
    vu450.Size = UDim2.new(0, 291, 0, 39)
    vu450.Image = "rbxassetid://3570695787"
    vu450.ImageColor3 = Color3.fromRGB(30, 30, 30)
    vu450.ScaleType = Enum.ScaleType.Slice
    vu450.SliceCenter = Rect.new(100, 100, 100, 100)
    vu450.SliceScale = 0.04
    v451.Name = "Line"
    v451.Parent = vu450
    v451.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v451.BackgroundTransparency = 1
    v451.Position = UDim2.new(0, 0, 1, 0)
    v451.Size = UDim2.new(0, 291, 0, 1)
    v451.Image = "rbxassetid://3570695787"
    v451.ImageColor3 = Color3.fromRGB(45, 45, 45)
    v451.ScaleType = Enum.ScaleType.Slice
    v451.SliceCenter = Rect.new(100, 100, 100, 100)
    v451.SliceScale = 0.04
    v452.Name = "Tittle"
    v452.Parent = vu450
    v452.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v452.BackgroundTransparency = 1
    v452.Position = UDim2.new(0.0240549836, 0, 0.230769247, 0)
    v452.Size = UDim2.new(0, 112, 0, 20)
    v452.Font = Enum.Font.Gotham
    v452.Text = "Hyper | Key System"
    v452.TextColor3 = Color3.fromRGB(255, 255, 255)
    v452.TextSize = 14
    v452.TextXAlignment = Enum.TextXAlignment.Left
    v453.Name = "DropShadow"
    v453.Parent = vu449
    v453.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v453.BackgroundTransparency = 1
    v453.Position = UDim2.new(- 0.357388318, 0, - 0.538461566, 0)
    v453.Size = UDim2.new(0, 495, 0, 263)
    v453.ZIndex = 0
    v453.Image = "rbxassetid://5587865193"
    v453.ImageColor3 = Color3.fromRGB(0, 0, 0)
    v454.Name = "KeyFrame"
    v454.Parent = vu449
    v454.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v454.BackgroundTransparency = 1
    v454.Position = UDim2.new(0.0240549836, 0, 0.2097902, 0)
    v454.Size = UDim2.new(0, 277, 0, 31)
    v454.Image = "rbxassetid://3570695787"
    v454.ImageColor3 = Color3.fromRGB(20, 20, 20)
    v454.ScaleType = Enum.ScaleType.Slice
    v454.SliceCenter = Rect.new(100, 100, 100, 100)
    v454.SliceScale = 0.04
    v455.Name = "Kuybox"
    v455.Parent = v454
    v455.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v455.BackgroundTransparency = 1
    v455.Position = UDim2.new(0.0216606501, 0, 0, 0)
    v455.Size = UDim2.new(0, 271, 0, 31)
    v455.Font = Enum.Font.Gotham
    v455.PlaceholderText = "Enter your key here"
    v455.Text = ""
    v455.TextColor3 = Color3.fromRGB(255, 255, 255)
    v455.TextSize = 12
    v455.TextWrapped = true
    v455.TextXAlignment = Enum.TextXAlignment.Left
    v456.Name = "Button"
    v456.Parent = vu449
    v456.AnchorPoint = Vector2.new(0.5, 0.5)
    v456.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    v456.BackgroundTransparency = 1
    v456.BorderColor3 = Color3.fromRGB(20, 20, 20)
    v456.BorderSizePixel = 0
    v456.Position = UDim2.new(0.491408944, 0, 0.594405591, 0)
    v456.Size = UDim2.new(0, 200, 0, 31)
    v456.ZIndex = 2
    v456.Font = Enum.Font.Gotham
    v456.Text = "Submit"
    v456.TextColor3 = Color3.fromRGB(178, 178, 178)
    v456.TextSize = 13
    v457.Name = "ButtonImage"
    v457.Parent = v456
    v457.Active = true
    v457.AnchorPoint = Vector2.new(0.5, 0.5)
    v457.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v457.BackgroundTransparency = 1
    v457.Position = UDim2.new(0.5, 0, 0.5, 0)
    v457.Selectable = true
    v457.Size = UDim2.new(1, 0, 1, 0)
    v457.Image = "rbxassetid://3570695787"
    v457.ImageColor3 = Color3.fromRGB(20, 20, 20)
    v457.ScaleType = Enum.ScaleType.Slice
    v457.SliceCenter = Rect.new(100, 100, 100, 100)
    v457.SliceScale = 0.04
    local v458 = Instance.new("ScreenGui")
    local vu459 = Instance.new("Frame")
    local vu460 = Instance.new("TextButton")
    local vu461 = Instance.new("TextButton")
    local vu462 = Instance.new("TextButton")
    v458.Parent = game.CoreGui
    v458.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    vu459.Parent = v458
    vu459.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    vu459.BorderColor3 = Color3.fromRGB(0, 0, 0)
    vu459.BorderSizePixel = 0
    vu459.Position = UDim2.new(0.411764711, 0, 0.654867232, 0)
    vu459.Size = UDim2.new(0, 240, 0, 40)
    vu460.Parent = vu459
    vu460.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    vu460.BorderColor3 = Color3.fromRGB(0, 0, 0)
    vu460.BorderSizePixel = 0
    vu460.Position = UDim2.new(0.629284799, 0, 0.2253685, 0)
    vu460.Size = UDim2.new(0, 87, 0, 20)
    vu460.Font = Enum.Font.Gotham
    vu460.Text = "Work.ink"
    vu460.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu460.TextSize = 14
    vu460.MouseButton1Click:Connect(function()
        setclipboard("https://work.ink/1Sii/lplb241k")
        vu460.Text = "Copied"
        wait(1)
        vu460.Text = "Work.ink"
    end)
    vu461.Parent = vu459
    vu461.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    vu461.BorderColor3 = Color3.fromRGB(0, 0, 0)
    vu461.BorderSizePixel = 0
    vu461.Position = UDim2.new(0.3147735, 0, 0.2253685, 0)
    vu461.Size = UDim2.new(0, 87, 0, 20)
    vu461.Font = Enum.Font.Gotham
    vu461.Text = "LootLink"
    vu461.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu461.TextSize = 14
    vu461.MouseButton1Click:Connect(function()
        setclipboard("https://loot-link.com/s?43eeb7f4")
        vu461.Text = "Copied"
        wait(1)
        vu461.Text = "LootLink"
    end)
    vu462.Parent = vu459
    vu462.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    vu462.BorderColor3 = Color3.fromRGB(0, 0, 0)
    vu462.BorderSizePixel = 0
    vu462.Position = UDim2.new(- 0.00135127199, 0, 0.2253685, 0)
    vu462.Size = UDim2.new(0, 87, 0, 20)
    vu462.Font = Enum.Font.Gotham
    vu462.Text = "Linkvertise"
    vu462.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu462.TextSize = 14
    vu462.MouseButton1Click:Connect(function()
        setclipboard("https://direct-link.net/369809/hyper")
        vu462.Text = "Copied"
        wait(1)
        vu462.Text = "Linkvertise"
    end)
    local function v473()
        local v463 = Instance.new("LocalScript", vu449)
        local vu464 = game:GetService("UserInputService")
        function dragify(p465, pu466)
            dragToggle = nil
            dragInput = nil
            dragStart = nil
            function updateInput(p467)
                local v468 = p467.Position - dragStart
                local v469 = UDim2.new(startPos.X.Scale, startPos.X.Offset + v468.X, startPos.Y.Scale, startPos.Y.Offset + v468.Y)
                game:GetService("TweenService"):Create(pu466, TweenInfo.new(0.3), {
                    Position = v469
                }):Play()
            end
            p465.InputBegan:Connect(function(pu470)
                if (pu470.UserInputType == Enum.UserInputType.MouseButton1 or pu470.UserInputType == Enum.UserInputType.Touch) and vu464:GetFocusedTextBox() == nil then
                    dragToggle = true
                    dragStart = pu470.Position
                    startPos = pu466.Position
                    pu470.Changed:Connect(function()
                        if pu470.UserInputState == Enum.UserInputState.End then
                            dragToggle = false
                        end
                    end)
                end
            end)
            p465.InputChanged:Connect(function(p471)
                if p471.UserInputType == Enum.UserInputType.MouseMovement or p471.UserInputType == Enum.UserInputType.Touch then
                    dragInput = p471
                end
            end)
            game:GetService("UserInputService").InputChanged:Connect(function(p472)
                if p472 == dragInput and dragToggle then
                    updateInput(p472)
                end
            end)
        end
        dragify(v463.Parent, v463.Parent)
        dragify(vu450, v463.Parent)
    end
    coroutine.wrap(v473)();
    (function()
        local v474 = Instance.new("LocalScript", vu448)
        local vu475 = v474.Parent
        local vu476 = v474.Parent.Main
        local vu477 = v474.Parent.Main.Button
        local vu478 = v474.Parent.Main.Button.ButtonImage
        local vu479 = v474.Parent.Main.Topbar
        local vu480 = v474.Parent.Main.Topbar.Line
        local vu481 = v474.Parent.Main.Topbar.Tittle
        local vu482 = v474.Parent.Main.KeyFrame
        local vu483 = v474.Parent.Main.KeyFrame.Kuybox
        local vu484 = v474.Parent.Main.DropShadow
        local vu485 = game:GetService("TweenService")
        vu477.MouseEnter:Connect(function()
            vu477:TweenSize(UDim2.new(0, 277, 0, 31), "Out", "Back", 0.25)
        end)
        vu477.MouseLeave:Connect(function()
            vu477:TweenSize(UDim2.new(0, 200, 0, 31), "Out", "Back", 0.25)
        end)
        local function vu490(p486, p487, p488)
            for v489 = 1, # p487 do
                p486.Text = string.sub(p487, 1, v489)
                wait(p488)
            end
        end
        vu477.MouseButton1Click:Connect(function()
            vu485:Create(vu477, TweenInfo.new(0.01, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                TextSize = 17
            }):Play()
            wait(0.01)
            vu485:Create(vu477, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                TextSize = 13
            }):Play()
            _G.PutKey = vu483.Text
            if _G.PutKey == _G.RealKey or _G.PutKey == _G.Vip then
                writefile(vu447, tostring(_G.PutKey))
                vu481.TextTransparency = 0.7
                wait(0.01)
                vu481.TextTransparency = 0.5
                wait(0.01)
                vu481.TextTransparency = 0.3
                wait(0.01)
                vu481.TextTransparency = 0
                vu490(vu481, "Welcome to Script", 0.01)
                vu485:Create(vu481, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                    TextColor3 = Color3.fromRGB(3, 252, 32)
                }):Play()
                wait(1)
                vu481.TextTransparency = 0.3
                wait(0.01)
                vu481.TextTransparency = 0.5
                wait(0.01)
                vu481.TextTransparency = 0.7
                wait(0.01)
                vu481.TextTransparency = 1
                wait(0.1)
                vu482.ImageTransparency = 0.3
                vu483.Visible = false
                wait(0.01)
                vu482.ImageTransparency = 0.5
                wait(0.01)
                vu482.ImageTransparency = 0.7
                wait(0.01)
                vu482.ImageTransparency = 1
                wait(0.1)
                vu478.ImageTransparency = 0.3
                vu477.TextTransparency = 0.3
                wait(0.01)
                vu477.TextTransparency = 0.5
                vu478.ImageTransparency = 0.5
                wait(0.01)
                vu477.TextTransparency = 0.7
                vu478.ImageTransparency = 0.7
                wait(0.01)
                vu477.TextTransparency = 1
                vu478.ImageTransparency = 1
                wait(0.1)
                vu484.ImageTransparency = 0.3
                wait(0.01)
                vu484.ImageTransparency = 0.5
                wait(0.01)
                vu480.Visible = false
                vu484.ImageTransparency = 0.7
                wait(0.01)
                vu484.ImageTransparency = 1
                wait(0.1)
                vu476:TweenSize(UDim2.new(0, 291, 0, 0), "Out", "Sine", 0.25)
                wait(0.5)
                vu479:TweenSize(UDim2.new(0, 0, 0, 39), "Out", "Sine", 0.25)
                wait(0.5)
                vu475:Destroy()
                vu459:Destroy()
                _G.KeySuccess = true
            else
                vu481.TextTransparency = 0.7
                wait(0.01)
                vu481.TextTransparency = 0.5
                wait(0.01)
                vu481.TextTransparency = 0.3
                wait(0.01)
                vu481.TextTransparency = 0
                vu490(vu481, "Key Not Find. Try to get new Key", 0.01)
                wait(0.1)
                vu485:Create(vu481, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                    TextColor3 = Color3.fromRGB(252, 3, 3)
                }):Play()
                wait(1)
                vu485:Create(vu481, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                wait(0.2)
                vu490(vu481, "Hyper | Key System", 0.01)
                wait(0.2)
            end
        end)
    end)()
end
repeat
    wait()
until _G.KeySuccess == true
warn("Anti AFK : Work")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end);
(function(p491, p492)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = p491,
        Color = p492
    })
end)("Have Fun :))", Color3.new(0, 62, 255))
local v493 = vu1:Window("Press L For Close UI / Hyper Hub Script Ver 12.11.24"):Server("HAZE PIECE", "")
local v494 = v493:Channel("Main", "")
local v495 = v493:Channel("Main 2", "")
local v496 = v493:Channel("Skill", "")
local v497 = v493:Channel("Teleport", "")
local v498 = v493:Channel("Stats", "")
local v499 = v493:Channel("Buy Item", "")
local v500 = v493:Channel("Misc", "")
local v501 = game:GetService("ReplicatedStorage")
local vu502 = game:GetService("Workspace")
local _ = game.Players.LocalPlayer.PlayerData.Experience.Sword.Value
local _ = game.Players.LocalPlayer.PlayerData.Experience.Combat.Value
local _ = game.Players.LocalPlayer.PlayerData.Experience.Fruit.Value
local vu503 = game:GetService("ReplicatedStorage"):WaitForChild("Replication"):WaitForChild("ClientEvents")
local v504 = {}
local v505 = {}
local v506 = {}
local v507 = {}
local v508 = {
    "Auto Detected Level",
    "Auto Detected Level(No Boss)"
}
local vu509 = ""
local vu510 = ""
local vu511 = ""
local vu512 = ""
local vu513 = ""
local vu514 = ""
local vu515 = ""
local vu516 = ""
local vu517 = ""
local vu518 = ""
local vu519 = ""
local vu520 = ""
local vu521 = ""
local vu522 = game.Players.LocalPlayer.PlayerData.SeaIndex.Value
local v523 = game.Players.LocalPlayer.Character.Location.Value
local vu524 = false
local vu525 = false
local v526 = {}
local vu527 = ""
local vu528 = ""
local vu529 = ""
Number = math.random(1, 1000000)
local v530 = {
    "WhiteBeard Girl So Cute",
    "Mace Boss Boy So Cool"
}
local v531 = {
    "Dual Swordsman"
}
if DistanceAutoFarm == nil then
    DistanceAutoFarm = 6
end
if setweapon == nil then
    setweapon = "Melee"
end
if typefarm == nil then
    typefarm = "Above"
end
if selectedquest == nil then
    selectedquest = "Auto Detected Level"
end
function att()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
function getquest(p532)
    local v533, v534, v535 = pairs(vu502.Npc_Workspace.QuestGivers:GetChildren())
    while true do
        local v536
        v535, v536 = v533(v534, v535)
        if v535 == nil then
            break
        end
        local v537, v538, v539 = pairs(v536.Configuration.Quests:GetChildren())
        while true do
            local v540
            v539, v540 = v537(v538, v539)
            if v539 == nil then
                break
            end
            if v540.Name == p532 then
                local v541 = {
                    workspace.Npc_Workspace.QuestGivers:FindFirstChild(v536.Name),
                    v540.Name
                }
                game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.QuestFunction:InvokeServer(unpack(v541))
            end
        end
    end
end
function toTarget(pu542)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - pu542.Position).Magnitude <= 150 then
            pcall(function()
                tween:Cancel()
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = pu542
            end)
        end
        local v543 = game:service("TweenService")
        local v544 = TweenInfo.new((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - pu542.Position).Magnitude / 325, Enum.EasingStyle.Linear)
        tween = v543:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v544, {
            CFrame = pu542
        })
        tween:Play()
        return {
            Stop = function(_)
                tween:Cancel()
            end
        }
    end
    tween:Cancel()
    wait(7)
end
function TP(p545)
    Distance = (p545.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance > 30 then
        if Distance >= 250 then
            if Distance >= 500 then
                if Distance >= 1000 then
                    if Distance >= 1000 then
                        Speed = 200
                    end
                else
                    Speed = 250
                end
            else
                Speed = 400
            end
        else
            Speed = 600
        end
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
            CFrame = p545
        }):Play()
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p545
    end
end
function TPCF(p546)
    Distance = (p546.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 250 then
        if Distance >= 500 then
            if Distance >= 1000 then
                if Distance >= 1000 then
                    Speed = 200
                end
            else
                Speed = 250
            end
        else
            Speed = 400
        end
    else
        Speed = 600
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
        CFrame = p546
    }):Play()
    _G.ugotmail = true
    wait(Distance / Speed)
    _G.ugotmail = false
end
function EquipWeapon(p547)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(p547) then
        local v548 = game.Players.LocalPlayer.Backpack:FindFirstChild(p547)
        wait(0.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v548)
    end
end
function getweapon()
    local v549 = game.Players.LocalPlayer.PlayerData.Sword.CurrentSword.Value
    local v550 = game.Players.LocalPlayer.PlayerData.FightingStyle.Value
    local v551 = game.Players.LocalPlayer.PlayerData.CurrentSuperPower.Value
    if setweapon ~= "Melee" then
        if setweapon ~= "Sword" then
            if setweapon == "Fruit" then
                EquipWeapon(v551)
            end
        else
            EquipWeapon(v549)
        end
    else
        EquipWeapon(v550)
    end
end
function rejoingame()
    local v552 = game:GetService("TeleportService")
    local v553 = game:GetService("Players").LocalPlayer
    v552:Teleport(game.PlaceId, v553)
end
function fps()
    local v554 = game
    local v555 = v554.Workspace
    local v556 = v554.Lighting
    local v557 = v555.Terrain
    v557.WaterWaveSize = 0
    v557.WaterWaveSpeed = 0
    v557.WaterReflectance = 0
    v557.WaterTransparency = 0
    v556.GlobalShadows = false
    v556.FogEnd = 9000000000
    v556.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    local v558, v559, v560 = pairs(v554:GetDescendants())
    local v561 = true
    while true do
        local v562
        v560, v562 = v558(v559, v560)
        if v560 == nil then
            break
        end
        if v562:IsA("Part") or (v562:IsA("Union") or (v562:IsA("CornerWedgePart") or v562:IsA("TrussPart"))) then
            v562.Material = "Plastic"
            v562.Reflectance = 0
        elseif v562:IsA("Decal") or v562:IsA("Texture") and v561 then
            v562.Transparency = 1
        elseif v562:IsA("ParticleEmitter") or v562:IsA("Trail") then
            v562.Lifetime = NumberRange.new(0)
        elseif v562:IsA("Explosion") then
            v562.BlastPressure = 1
            v562.BlastRadius = 1
        elseif v562:IsA("Fire") or (v562:IsA("SpotLight") or (v562:IsA("Smoke") or v562:IsA("Sparkles"))) then
            v562.Enabled = false
        elseif v562:IsA("MeshPart") then
            v562.Material = "Plastic"
            v562.Reflectance = 0
            v562.TextureID = 1.0385902758728956e16
        end
    end
    local v563, v564, v565 = pairs(v556:GetChildren())
    while true do
        local v566
        v565, v566 = v563(v564, v565)
        if v565 == nil then
            break
        end
        if v566:IsA("BlurEffect") or (v566:IsA("SunRaysEffect") or (v566:IsA("ColorCorrectionEffect") or (v566:IsA("BloomEffect") or v566:IsA("DepthOfFieldEffect")))) then
            v566.Enabled = false
        end
    end
end
function hopkl()
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer
    local vu567 = game:GetService("HttpService")
    local v568 = game:GetService("TeleportService")
    local v569 = vu567
    local vu570 = vu567.JSONDecode(v569, game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    function joinNew()
        if not isfile("servers.sss") then
            local v571 = vu567
            writefile("servers.sss", v571:JSONEncode({}))
        end
        local v572 = vu567:JSONDecode((readfile("servers.sss")))
        local v573 = next
        local v574 = vu570.data
        local v575 = nil
        while true do
            local v576
            v575, v576 = v573(v574, v575)
            if v575 == nil then
                break
            end
            if v576 ~= game.JobId then
                local v577, v578, v579 = pairs(v572)
                local v580 = true
                while true do
                    local v581
                    v579, v581 = v577(v578, v579)
                    if v579 == nil then
                        break
                    end
                    if v581 == v576.id then
                        v580 = false
                    end
                end
                if v580 then
                    table.insert(v572, v576.id)
                    local v582 = vu567
                    writefile("servers.sss", v582:JSONEncode(v572))
                    wait()
                    return v576.id
                end
            end
        end
    end
    local v583 = joinNew()
    if v583 then
        v568:TeleportToPlaceInstance(game.PlaceId, v583)
    else
        local v584 = vu567
        writefile("servers.sss", vu567.JSONEncode(v584, {}))
        local v585 = joinNew()
        v568:TeleportToPlaceInstance(game.PlaceId, v585)
    end
end
function HopLowerServer()
    local vu586 = math.huge
    local vu587 = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local vu588 = nil
    local vu589 = nil
    if not _G.FailedServerID then
        _G.FailedServerID = {}
    end
    local function vu594()
        vu589 = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(vu587))
        local v590, v591, v592 = pairs(vu589.data)
        while true do
            local vu593
            v592, vu593 = v590(v591, v592)
            if v592 == nil then
                break
            end
            pcall(function()
                if type(vu593) == "table" and (vu593.id and (vu593.playing and (tonumber(vu586) > tonumber(vu593.playing) and not table.find(_G.FailedServerID, vu593.id)))) then
                    vu586 = vu593.playing
                    vu588 = vu593.id
                end
            end)
        end
    end
    function getservers()
        pcall(vu594)
        local v595, v596, v597 = pairs(vu589)
        while true do
            local v598
            v597, v598 = v595(v596, v597)
            if v597 == nil then
                break
            end
            if v597 == "nextPageCursor" then
                if vu587:find("&cursor=") then
                    vu587 = vu587:gsub(vu587:sub((vu587:find("&cursor="))), "")
                end
                vu587 = vu587 .. "&cursor=" .. v598
                pcall(getservers)
            end
        end
    end
    pcall(getservers)
    if vu588 ~= game.JobId then
        local _ = vu586 ~= # game:GetService("Players"):GetChildren() - 1
    end
    table.insert(_G.FailedServerID, vu588)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, vu588)
end
function setspawn(p599)
    game:GetService("ReplicatedStorage").Replication.ClientEvents.SetSpawnPoint:FireServer(p599)
end
local v600, v601, v602 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
while true do
    local v603
    v602, v603 = v600(v601, v602)
    if v602 == nil then
        break
    end
    if v603:IsA("Tool") then
        table.insert(v505, v603.Name)
    end
end
local v604, v605, v606 = pairs(game.Players.LocalPlayer.Character:GetChildren())
while true do
    local v607
    v606, v607 = v604(v605, v606)
    if v606 == nil then
        break
    end
    if v607:IsA("Tool") then
        table.insert(v505, v607.Name)
    end
end
local v608, v609, v610 = pairs(vu502.Npc_Workspace.QuestGivers:GetChildren())
while true do
    local v611
    v610, v611 = v608(v609, v610)
    if v610 == nil then
        break
    end
    local v612, v613, v614 = pairs(v611.Configuration.Quests:GetChildren())
    while true do
        local v615
        v614, v615 = v612(v613, v614)
        if v614 == nil then
            break
        end
        local v616, v617, v618 = pairs(v615:GetChildren())
        while true do
            local v619
            v618, v619 = v616(v617, v618)
            if v618 == nil then
                break
            end
            if not table.find({
                "Layout"
            }, v619.Name) then
                table.insert(v504, {
                    ShowName = tostring(v615.Name) .. " " .. tostring(v619.Name),
                    Level = v615.Name,
                    SortLevel = tonumber(string.match(v615.Name, "%d+"))
                })
            end
        end
    end
end
function getenemy(p620)
    local v621, v622, v623 = pairs(vu502.Npc_Workspace.QuestGivers:GetChildren())
    while true do
        local v624
        v623, v624 = v621(v622, v623)
        if v623 == nil then
            break
        end
        local v625, v626, v627 = pairs(v624.Configuration.Quests:GetChildren())
        while true do
            local v628
            v627, v628 = v625(v626, v627)
            if v627 == nil then
                break
            end
            local v629, v630, v631 = pairs(v628:GetChildren())
            while true do
                local v632
                v631, v632 = v629(v630, v631)
                if v631 == nil then
                    break
                end
                if not table.find({
                    "Layout"
                }, v632.Name) and v628.Name == "Level " .. tostring(string.match(p620, "%d+")) then
                    return v632.Name
                end
            end
        end
    end
end
local v633, v634, v635 = pairs(vu502.Npc_Workspace["Spawn Setters"]:GetChildren())
while true do
    local v636
    v635, v636 = v633(v634, v635)
    if v635 == nil then
        break
    end
    table.insert(v526, v636.Name)
end
function tptomon(p637)
    if typefarm ~= "Behind" then
        if typefarm ~= "Above" then
            if typefarm == "Below" then
                TP(p637 * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0, DistanceAutoFarm, 0))
            end
        else
            TP(p637 * CFrame.new(0, DistanceAutoFarm, 0) * CFrame.Angles(math.rad(- 90), 0, 0))
        end
    else
        TP(p637 * CFrame.new(0, 0, DistanceAutoFarm))
    end
end
table.sort(v504, function(p638, p639)
    return p638.SortLevel < p639.SortLevel
end)
local v640, v641, v642 = pairs(v504)
while true do
    local v643
    v642, v643 = v640(v641, v642)
    if v642 == nil then
        break
    end
    table.insert(v508, v643.ShowName)
end
local v644, v645, v646 = pairs(game:GetService("ReplicatedStorage").ViewportModels.Fruits:GetChildren())
while true do
    local v647
    v646, v647 = v644(v645, v646)
    if v646 == nil then
        break
    end
    table.insert(v506, v647.Name)
end
local v648, v649, v650 = pairs(game:GetService("ReplicatedStorage").ViewportModels.FishingRods:GetChildren())
while true do
    local v651
    v650, v651 = v648(v649, v650)
    if v650 == nil then
        break
    end
    table.insert(v507, v651.Name)
end
function checklvl()
    local v652 = game.Players.LocalPlayer.PlayerData.Experience.Level.Value
    if selectedquest == "Auto Detected Level" then
        if vu522 == 1 then
            if 1 <= v652 and v652 <= 9 then
                lvlquest = 1
                location = "Starter Island"
            elseif 10 <= v652 and v652 <= 24 then
                lvlquest = 10
                location = "Starter Island"
            elseif 25 <= v652 and v652 <= 39 then
                lvlquest = 25
                location = "Starter Island"
            elseif 40 <= v652 and v652 <= 59 then
                lvlquest = 40
                location = "Clown Island"
            elseif 60 <= v652 and v652 <= 89 then
                lvlquest = 60
                location = "Clown Island"
            elseif 90 <= v652 and v652 <= 119 then
                lvlquest = 90
                location = "Shark Park"
            elseif 120 <= v652 and v652 <= 159 then
                lvlquest = 120
                location = "Shark Park"
            elseif 160 <= v652 and v652 <= 199 then
                lvlquest = 160
                location = "Desert Ruins"
            elseif 200 <= v652 and v652 <= 249 then
                lvlquest = 200
                location = "Desert Ruins"
            elseif 250 <= v652 and v652 <= 299 then
                lvlquest = 250
                location = "Sea Restaurant"
            elseif 300 <= v652 and v652 <= 349 then
                lvlquest = 300
                location = "Sea Restaurant"
            elseif 350 <= v652 and v652 <= 399 then
                lvlquest = 350
                location = "Logue City"
            elseif 400 <= v652 and v652 <= 449 then
                lvlquest = 400
                location = "Logue City"
            elseif 450 <= v652 and v652 <= 499 then
                lvlquest = 450
                location = "Tall Woods"
            elseif 500 <= v652 and v652 <= 549 then
                lvlquest = 500
                location = "Tall Woods"
            elseif 550 <= v652 and v652 <= 599 then
                lvlquest = 550
                location = "Tall Woods"
            elseif 600 <= v652 and v652 <= 649 then
                lvlquest = 600
                location = "Marine Base Town"
            elseif 650 <= v652 and v652 <= 699 then
                lvlquest = 650
                location = "Marine Base Town"
            elseif 700 <= v652 and v652 <= 749 then
                lvlquest = 700
                location = "Three Islands"
            elseif 750 <= v652 and v652 <= 799 then
                lvlquest = 750
                location = "Three Islands"
            elseif 800 <= v652 and v652 <= 849 then
                lvlquest = 800
                location = "Marine HQ"
            elseif 850 <= v652 and v652 <= 899 then
                lvlquest = 850
                location = "Marine HQ"
            elseif 900 <= v652 and v652 <= 949 then
                lvlquest = 900
                location = "Marine HQ"
            elseif 950 <= v652 and v652 <= 999 then
                lvlquest = 950
                location = "Skypiean islands"
            elseif 1000 <= v652 and v652 <= 1049 then
                lvlquest = 1000
                location = "Skypiean islands"
            elseif 1050 <= v652 and v652 <= 1099 then
                lvlquest = 1050
                location = "Skypiean islands"
            elseif 1100 <= v652 and v652 <= 1149 then
                lvlquest = 1100
                location = "Skypiean islands"
            elseif 1150 <= v652 and v652 <= 1199 then
                lvlquest = 1150
                location = "Revolutionary Base"
            elseif 1200 <= v652 and v652 <= 1249 then
                lvlquest = 1200
                location = "Revolutionary Base"
            elseif 1250 <= v652 and v652 <= 1299 then
                lvlquest = 1250
                location = "Revolutionary Base"
            elseif 1300 <= v652 and v652 <= 1349 then
                lvlquest = 1300
                location = "Impel Jail"
            elseif 1350 <= v652 and v652 <= 1399 then
                lvlquest = 1350
                location = "Impel Jail"
            elseif 1400 <= v652 and v652 <= 1449 then
                lvlquest = 1400
                location = "Impel Jail"
            elseif 1450 <= v652 and v652 <= 1499 then
                lvlquest = 1450
                location = "Half Hot Half Cold"
            elseif 1500 <= v652 and v652 <= 1549 then
                lvlquest = 1500
                location = "Half Hot Half Cold"
            elseif 1550 <= v652 and v652 <= 1599 then
                lvlquest = 1550
                location = "Half Hot Half Cold"
            elseif 1600 <= v652 and v652 <= 1649 then
                lvlquest = 1600
                location = "Fishman Island"
            elseif 1650 <= v652 and v652 <= 1699 then
                lvlquest = 1650
                location = "Fishman Island"
            elseif 1700 <= v652 and v652 <= 1749 then
                lvlquest = 1700
                location = "Fishman Island"
            elseif 1750 <= v652 and v652 <= 1799 then
                lvlquest = 1750
                location = "Skull Island"
            elseif 1800 <= v652 and v652 <= 1849 then
                lvlquest = 1800
                location = "Skull Island"
            elseif 1850 <= v652 and v652 <= 1899 then
                lvlquest = 1850
                location = "Skull Island"
            elseif 1900 <= v652 and v652 <= 1949 then
                lvlquest = 1900
                location = "Bubble Island"
            elseif 1950 <= v652 and v652 <= 1999 then
                lvlquest = 1950
                location = "Bubble Island"
            elseif 2000 <= v652 and v652 <= 2049 then
                lvlquest = 2000
                location = "Bubble Island"
            elseif 2050 <= v652 and v652 <= 2099 then
                lvlquest = 2050
                location = "Thriller Boat"
            elseif 2100 <= v652 and v652 <= 2149 then
                lvlquest = 2100
                location = "Thriller Boat"
            elseif v652 >= 2150 then
                lvlquest = 2150
                location = "Thriller Boat"
            end
        end
        if vu522 == 2 then
            if 2200 <= v652 and v652 <= 2249 then
                lvlquest = 2200
                location = "Flower Capital"
            elseif 2250 <= v652 and v652 <= 2299 then
                lvlquest = 2250
                location = "Flower Capital"
            elseif 2300 <= v652 and v652 <= 2349 then
                lvlquest = 2300
                location = "Flower Capital"
            elseif 2350 <= v652 and v652 <= 2399 then
                lvlquest = 2350
                location = "Flower Capital"
            elseif 2400 <= v652 and v652 <= 2449 then
                lvlquest = 2400
                location = "Udon Prison"
            elseif 2450 <= v652 and v652 <= 2499 then
                lvlquest = 2450
                location = "Udon Prison"
            elseif 2500 <= v652 and v652 <= 2549 then
                lvlquest = 2500
                location = "Udon Prison"
            elseif 2550 <= v652 and v652 <= 2599 then
                lvlquest = 2550
                location = "Snowy Graveyard"
            elseif 2600 <= v652 and v652 <= 2649 then
                lvlquest = 2600
                location = "Snowy Graveyard"
            elseif 2650 <= v652 and v652 <= 2699 then
                lvlquest = 2650
                location = "Snowy Graveyard"
            elseif 2700 <= v652 and v652 <= 2749 then
                lvlquest = 2700
                location = "Desert City"
            elseif 2750 <= v652 and v652 <= 2799 then
                lvlquest = 2750
                location = "Desert City"
            elseif 2800 <= v652 and v652 <= 2849 then
                lvlquest = 2800
                location = "Desert City"
            elseif 2850 <= v652 and v652 <= 2899 then
                lvlquest = 2850
                location = "Dragon Island"
            elseif 2900 <= v652 and v652 <= 2949 then
                lvlquest = 2900
                location = "Dragon Island"
            elseif 2950 <= v652 and v652 <= 2999 then
                lvlquest = 2950
                location = "Dragon Island"
            elseif 3000 <= v652 and v652 <= 3049 then
                lvlquest = 3000
                location = "Shadow Island"
            elseif 3050 <= v652 and v652 <= 3099 then
                lvlquest = 3050
                location = "Shadow Island"
            elseif 3100 <= v652 and v652 <= 3149 then
                lvlquest = 3100
                location = "Shadow Island"
            elseif 3150 <= v652 and v652 <= 3199 then
                lvlquest = 3150
                location = "Peanut Island"
            elseif 3200 <= v652 and v652 <= 3249 then
                lvlquest = 3200
                location = "Peanut Island"
            elseif 3250 <= v652 and v652 <= 3299 then
                lvlquest = 3250
                location = "Peanut Island"
            elseif 3300 <= v652 and v652 <= 3349 then
                lvlquest = 3300
                location = "Dough Island"
            elseif 3350 <= v652 and v652 <= 3399 then
                lvlquest = 3350
                location = "Dough Island"
            elseif 3400 <= v652 and v652 <= 3449 then
                lvlquest = 3400
                location = "Dough Island"
            elseif 3450 <= v652 and v652 <= 3499 then
                lvlquest = 3450
                location = "Cake Island"
            elseif 3500 <= v652 and v652 <= 3549 then
                lvlquest = 3500
                location = "Cake Island"
            elseif 3550 <= v652 and v652 <= 3599 then
                lvlquest = 3550
                location = "Cake Island"
            elseif 3600 <= v652 and v652 <= 3649 then
                lvlquest = 3600
                location = "Winter Island"
            elseif 3650 <= v652 and v652 <= 3699 then
                lvlquest = 3650
                location = "Winter Island"
            elseif 3700 <= v652 and v652 <= 3749 then
                lvlquest = 3700
                location = "Winter Island"
            elseif 3750 <= v652 and v652 <= 3799 then
                lvlquest = 3750
                location = "Winter Island"
            elseif 3800 <= v652 and v652 <= 3849 then
                lvlquest = 3800
                location = "Winter Island"
            elseif 3850 <= v652 and v652 <= 3899 then
                lvlquest = 3850
                location = "Winter Island"
            elseif 3900 <= v652 and v652 <= 3949 then
                lvlquest = 3900
                location = "Snake Amazon"
            elseif 3950 <= v652 and v652 <= 3999 then
                lvlquest = 3950
                location = "Snake Amazon"
            elseif 4000 <= v652 and v652 <= 4049 then
                lvlquest = 4000
                location = "Snake Amazon"
            elseif 4050 <= v652 and v652 <= 4099 then
                lvlquest = 4050
                location = "Venom Island"
            elseif 4100 <= v652 and v652 <= 4149 then
                lvlquest = 4100
                location = "Venom Island"
            elseif v652 >= 4150 then
                lvlquest = 4150
                location = "Venom Island"
            end
        end
    end
end
function checklvlnoboss()
    local v653 = game.Players.LocalPlayer.PlayerData.Experience.Level.Value
    if selectedquest == "Auto Detected Level(No Boss)" then
        if vu522 == 1 then
            if 1 <= v653 and v653 <= 9 then
                lvlquest = 1
                location = "Starter Island"
            elseif 10 <= v653 and v653 <= 39 then
                lvlquest = 10
                location = "Starter Island"
            elseif 40 <= v653 and v653 <= 89 then
                lvlquest = 40
                location = "Clown Island"
            elseif 90 <= v653 and v653 <= 159 then
                lvlquest = 90
                location = "Shark Park"
            elseif 160 <= v653 and v653 <= 249 then
                lvlquest = 160
                location = "Desert Ruins"
            elseif 250 <= v653 and v653 <= 349 then
                lvlquest = 250
                location = "Sea Restaurant"
            elseif 350 <= v653 and v653 <= 449 then
                lvlquest = 350
                location = "Logue City"
            elseif 450 <= v653 and v653 <= 499 then
                lvlquest = 450
                location = "Tall Woods"
            elseif 500 <= v653 and v653 <= 599 then
                lvlquest = 500
                location = "Tall Woods"
            elseif 600 <= v653 and v653 <= 699 then
                lvlquest = 600
                location = "Marine Base Town"
            elseif 700 <= v653 and v653 <= 799 then
                lvlquest = 700
                location = "Three Islands"
            elseif 800 <= v653 and v653 <= 849 then
                lvlquest = 800
                location = "Marine HQ"
            elseif 850 <= v653 and v653 <= 949 then
                lvlquest = 850
                location = "Marine HQ"
            elseif 950 <= v653 and v653 <= 999 then
                lvlquest = 950
                location = "Skypiean islands"
            elseif 1000 <= v653 and v653 <= 1049 then
                lvlquest = 1000
                location = "Skypiean islands"
            elseif 1050 <= v653 and v653 <= 1149 then
                lvlquest = 1050
                location = "Skypiean islands"
            elseif 1150 <= v653 and v653 <= 1199 then
                lvlquest = 1150
                location = "Revolutionary Base"
            elseif 1200 <= v653 and v653 <= 1299 then
                lvlquest = 1200
                location = "Revolutionary Base"
            elseif 1300 <= v653 and v653 <= 1349 then
                lvlquest = 1300
                location = "Impel Jail"
            elseif 1350 <= v653 and v653 <= 1449 then
                lvlquest = 1350
                location = "Impel Jail"
            elseif 1450 <= v653 and v653 <= 1499 then
                lvlquest = 1450
                location = "Half Hot Half Cold"
            elseif 1500 <= v653 and v653 <= 1599 then
                lvlquest = 1500
                location = "Half Hot Half Cold"
            elseif 1600 <= v653 and v653 <= 1649 then
                lvlquest = 1600
                location = "Fishman Island"
            elseif 1650 <= v653 and v653 <= 1749 then
                lvlquest = 1650
                location = "Fishman Island"
            elseif 1750 <= v653 and v653 <= 1799 then
                lvlquest = 1750
                location = "Skull Island"
            elseif 1800 <= v653 and v653 <= 1899 then
                lvlquest = 1800
                location = "Skull Island"
            elseif 1900 <= v653 and v653 <= 1949 then
                lvlquest = 1900
                location = "Bubble Island"
            elseif 1950 <= v653 and v653 <= 2049 then
                lvlquest = 1950
                location = "Bubble Island"
            elseif 2050 <= v653 and v653 <= 2099 then
                lvlquest = 2050
                location = "Thriller Boat"
            elseif v653 >= 2100 then
                lvlquest = 2100
                location = "Thriller Boat"
            end
        end
        if vu522 == 2 then
            if 2200 <= v653 and v653 <= 2249 then
                lvlquest = 2200
                location = "Flower Capital"
            elseif 2250 <= v653 and v653 <= 2299 then
                lvlquest = 2250
                location = "Flower Capital"
            elseif 2300 <= v653 and v653 <= 2399 then
                lvlquest = 2300
                location = "Flower Capital"
            elseif 2400 <= v653 and v653 <= 2449 then
                lvlquest = 2400
                location = "Udon Prison"
            elseif 2450 <= v653 and v653 <= 2549 then
                lvlquest = 2450
                location = "Udon Prison"
            elseif 2550 <= v653 and v653 <= 2599 then
                lvlquest = 2550
                location = "Snowy Graveyard"
            elseif 2600 <= v653 and v653 <= 2699 then
                lvlquest = 2600
                location = "Snowy Graveyard"
            elseif 2700 <= v653 and v653 <= 2749 then
                lvlquest = 2700
                location = "Desert City"
            elseif 2750 <= v653 and v653 <= 2849 then
                lvlquest = 2750
                location = "Desert City"
            elseif 2850 <= v653 and v653 <= 2899 then
                lvlquest = 2850
                location = "Dragon Island"
            elseif 2900 <= v653 and v653 <= 2999 then
                lvlquest = 2900
                location = "Dragon Island"
            elseif 3000 <= v653 and v653 <= 3049 then
                lvlquest = 3000
                location = "Shadow Island"
            elseif 3050 <= v653 and v653 <= 3149 then
                lvlquest = 3050
                location = "Shadow Island"
            elseif 3150 <= v653 and v653 <= 3199 then
                lvlquest = 3150
                location = "Peanut Island"
            elseif 3200 <= v653 and v653 <= 3299 then
                lvlquest = 3200
                location = "Peanut Island"
            elseif 3300 <= v653 and v653 <= 3349 then
                lvlquest = 3300
                location = "Dough Island"
            elseif 3350 <= v653 and v653 <= 3449 then
                lvlquest = 3350
                location = "Dough Island"
            elseif 3450 <= v653 and v653 <= 3499 then
                lvlquest = 3450
                location = "Cake Island"
            elseif 3500 <= v653 and v653 <= 3599 then
                lvlquest = 3500
                location = "Cake Island"
            elseif 3600 <= v653 and v653 <= 3649 then
                lvlquest = 3600
                location = "Winter Island"
            elseif 3650 <= v653 and v653 <= 3749 then
                lvlquest = 3650
                location = "Winter Island"
            elseif 3750 <= v653 and v653 <= 3799 then
                lvlquest = 3750
                location = "Winter Island"
            elseif 3800 <= v653 and v653 <= 3849 then
                lvlquest = 3800
                location = "Winter Island"
            elseif 3850 <= v653 and v653 <= 3899 then
                lvlquest = 3850
                location = "Winter Island"
            elseif 3900 <= v653 and v653 <= 3949 then
                lvlquest = 3900
                location = "Snake Amazon"
            elseif 3950 <= v653 and v653 <= 4050 then
                lvlquest = 3950
                location = "Snake Amazon"
            elseif 4050 <= v653 and v653 <= 4099 then
                lvlquest = 4050
                location = "Venom Island"
            elseif 4100 <= v653 and v653 <= 4149 then
                lvlquest = 4100
                location = "Venom Island"
            end
        end
    end
end
function usecodes(p654)
    game:GetService("ReplicatedStorage").Replication.ClientEvents.ClaimCode:InvokeServer(unpack({
        p654
    }))
end
function ClickUI(p655)
    game:GetService("GuiService").SelectedObject = p655
    wait(0.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, 13, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
    wait(0.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, 13, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
    wait(0.1)
    game:GetService("GuiService").SelectedObject = nil
    wait(0.1)
end
function UpdateDevilChams()
    local v656, v657, v658 = pairs(game:GetService("Workspace").Logic.FruitDrops:GetChildren())
    while true do
        local v659
        v658, v659 = v656(v657, v658)
        if v658 == nil then
            break
        end
        local v660, v661, v662 = pairs(v659:GetChildren())
        while true do
            local vu663
            v662, vu663 = v660(v661, v662)
            if v662 == nil then
                break
            end
            if vu663.ClassName == "Tool" then
                pcall(function()
                    if DevilESP then
                        if vu663.Handle:FindFirstChild("NameEsp" .. Number) then
                            vu663.Handle["NameEsp" .. Number].TextLabel.Text = vu663.Name
                        else
                            local v664 = Instance.new("BillboardGui", vu663.Handle)
                            v664.Name = "NameEsp" .. Number
                            v664.ExtentsOffset = Vector3.new(0, 1, 0)
                            v664.Size = UDim2.new(1, 200, 1, 30)
                            v664.Adornee = vu663.Handle
                            v664.AlwaysOnTop = true
                            local v665 = Instance.new("TextLabel", v664)
                            v665.Font = "GothamBold"
                            v665.FontSize = "Size14"
                            v665.TextWrapped = true
                            v665.Size = UDim2.new(1, 0, 1, 0)
                            v665.TextYAlignment = "Top"
                            v665.BackgroundTransparency = 1
                            v665.TextStrokeTransparency = 0.5
                            v665.TextColor3 = Color3.fromRGB(150, 150, 150)
                            v665.Text = vu663.Name
                        end
                    elseif vu663.Handle:FindFirstChild("NameEsp" .. Number) then
                        vu663.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end)
            end
        end
    end
end
function UpdatePlayerChams()
    local v666, v667, v668 = pairs(game:GetService("Players"):GetChildren())
    while true do
        local vu669
        v668, vu669 = v666(v667, v668)
        if v668 == nil then
            break
        end
        pcall(function()
            if PlayerESP then
                if vu669.Name ~= game.Players.LocalPlayer.Name then
                    if vu669.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        vu669.Character.Head["NameEsp" .. Number].TextLabel.Text = vu669.Name
                    else
                        local v670 = Instance.new("BillboardGui", vu669.Character.Head)
                        v670.Name = "NameEsp" .. Number
                        v670.ExtentsOffset = Vector3.new(0, 1, 0)
                        v670.Size = UDim2.new(1, 200, 1, 30)
                        v670.Adornee = vu669.Character.Head
                        v670.AlwaysOnTop = true
                        local v671 = Instance.new("TextLabel", v670)
                        v671.Font = "GothamBold"
                        v671.FontSize = "Size14"
                        v671.TextWrapped = true
                        v671.Text = vu669.Name
                        v671.Size = UDim2.new(1, 0, 1, 0)
                        v671.TextYAlignment = "Top"
                        v671.BackgroundTransparency = 1
                        v671.TextStrokeTransparency = 0.5
                        if vu669.Team ~= game.Players.LocalPlayer.Team then
                            v671.TextColor3 = Color3.new(0, 0, 255)
                        else
                            v671.TextColor3 = Color3.new(255, 0, 0)
                        end
                    end
                end
            elseif vu669.Character.Head:FindFirstChild("NameEsp" .. Number) then
                vu669.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end)
    end
end
function SendWebhook(p672, p673)
    if p672 then
        local v674 = request
        local v675 = {
            Url = p672,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            }
        }
        local v676 = game:GetService("HttpService")
        local v677 = v676.JSONEncode
        local v678 = {
            content = "",
            tts = false
        }
        local v679 = {}
        local v680 = {
            type = "rich",
            title = "You Got Mail!",
            description = "```\nItem Added : " .. p673 .. "\n```",
            color = 16711782
        }
        local v681 = {}
        local v682 = {
            name = "Name",
            value = "||" .. game.Players.LocalPlayer.Name .. "||"
        }
        local v683 = {
            name = "Level",
            value = game:GetService("Players").LocalPlayer.PlayerData.Experience.Level.Value,
            inline = false
        }
        local v684 = {
            name = "Currency",
            value = game:GetService("Players").LocalPlayer.PlayerData.Currency.Value,
            inline = true
        }
        local v685 = {
            name = "Gems",
            value = game:GetService("Players").LocalPlayer.PlayerData.Gems.Value,
            inline = true
        }
        local v686 = {
            name = "Bounty",
            value = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Respect"].Value,
            inline = true
        }
        __set_list(v681, 1, {
            v682,
            v683,
            v684,
            v685,
            v686,
            {
                name = "Thanks For Support",
                value = "-------------------------------------------------------------------------------------",
                inline = false
            }
        })
        v680.fields = v681
        __set_list(v679, 1, {
            v680
        })
        v678.embeds = v679
        v675.Body = v677(v676, v678)
        v674(v675)
    end
end
function useskill()
    if ZZZ then
        game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
        wait(0.1)
        game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
        wait(1)
    end
    if XXX then
        game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
        wait(0.1)
        game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
        wait(1)
    end
    if CCC then
        game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
        wait(0.1)
        game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
        wait(1)
    end
    if VVV then
        game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
        wait(0.1)
        game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
        wait(1)
    end
    if BBB then
        game:service("VirtualInputManager"):SendKeyEvent(true, "B", false, game)
        wait(0.1)
        game:service("VirtualInputManager"):SendKeyEvent(false, "B", false, game)
        wait(1)
    end
end
v494:Dropdown("Set Quest", v508, "Auto Detected Level", function(p687)
    selectedquest = p687
    if selectedquest ~= "Auto Detected Level" then
        getnamemon = getenemy(selectedquest)
    end
end)
v494:Dropdown("Set Weapon", {
    "Melee",
    "Sword",
    "Fruit"
}, "Melee", function(p688)
    setweapon = p688
end)
v494:Dropdown("Set Type", {
    "Behind",
    "Above",
    "Below"
}, "Above", function(p689)
    typefarm = p689
end)
v494:Toggle("Get Quest", true, function(p690)
    acceptquest = p690
end)
v494:Toggle("Auto Set Spawn (AutoFarmLevel)", false, function(p691)
    autosetspawn = p691
end)
v494:Toggle("Start Farm", false, function(p692)
    startfarm = p692
    if p692 == false then
        _G.ugotmail = false
        wait(0.5)
        TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
v494:Toggle("Buso Haki", false, function(p693)
    busohaki = p693
end)
v494:Toggle("Obs Haki", false, function(p694)
    obshaki = p694
end)
v494:Dropdown("Select Form", {
    "Gear 2",
    "Gear 4",
    "Gear 5"
}, "", function(p695)
    selectedform = p695
end)
v494:Toggle("Auto Transform For Gum", false, function(p696)
    autotrans = p696
end)
if game:GetService("Players").LocalPlayer.PlayerGui.Platform.Value ~= "PC" then
    v494:Textbox("Set Distance", 6, false, function(p697)
        DistanceAutoFarm = p697
    end)
else
    v494:Slider("Set Distance", 1, 50, 6, function(p698)
        DistanceAutoFarm = p698
    end)
end
if vu522 ~= 1 then
    v495:Toggle("XMAS Monster Superboss", false, function(p699)
        xmasboss = p699
        if p699 == false then
            _G.ugotmail = false
            wait(0.5)
            TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    v495:Toggle("Start Farm Enma Boss", false, function(p700)
        farmenmaboss = p700
        if p700 == false then
            _G.ugotmail = false
            wait(0.5)
            TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    v495:Line()
    v495:Toggle("Auto Summon Dragon Quest", false, function(p701)
        dragonquest = p701
        if p701 == false then
            _G.ugotmail = false
            wait(0.5)
            TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    v495:Toggle("Auto Store Drums of Liberation", false, function(p702)
        autostorecum = p702
    end)
    v495:Toggle("Disable Auto Store Drums After Stored Drums", false, function(p703)
        disibledrums = p703
    end)
    v495:Label("Recommend For AFK Player Cuz You can store only 1 Drums", Color3.fromRGB(255, 255, 255))
    v495:Label("If u not Disable Auto Store, Script will make you can\'t farm anymore", Color3.fromRGB(255, 255, 255))
    v495:Line()
else
    v495:Dropdown("Select Special Boss", v530, "", function(p704)
        selectedspec = p704
    end)
    v495:Toggle("Start Farm Special Boss", false, function(p705)
        farmspecialboss = p705
        if p705 == false then
            _G.ugotmail = false
            wait(0.5)
            TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    v495:Dropdown("Select Super Boss", v531, "", function(p706)
        selectedSuper = p706
    end)
    v495:Toggle("Start Farm Super Boss", false, function(p707)
        farmSuperboss = p707
        if p707 == false then
            _G.ugotmail = false
            wait(0.5)
            TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    v495:Toggle("Start Farm Fire Fist Boss", false, function(p708)
        farmfirefistboss = p708
        if p708 == false then
            _G.ugotmail = false
            wait(0.5)
            TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    v495:Line()
    v495:Toggle("Start Farm G4 Book", false, function(p709)
        g4book = p709
        if p709 == false then
            _G.ugotmail = false
            wait(0.5)
            TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end)
    v495:Toggle("Auto Store Gear 4 Book", false, function(p710)
        gotg4book = p710
    end)
    v495:Toggle("Disable Auto Store G4Book After Stored G4Book", false, function(p711)
        disiblebook = p711
    end)
    v495:Label("Recommend For AFK Player Cuz You can store only 1 G4Book", Color3.fromRGB(255, 255, 255))
    v495:Label("If u not Disable Auto Store, Script will make you can\'t farm anymore", Color3.fromRGB(255, 255, 255))
    v495:Line()
end
v495:Toggle("Start Farm Sea Beast", false, function(p712)
    farmsea = p712
    if p712 == false then
        _G.ugotmail = false
        wait(0.5)
        TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
v496:Toggle("Z", false, function(p713)
    ZZZ = p713
end)
v496:Toggle("X", false, function(p714)
    XXX = p714
end)
v496:Toggle("C", false, function(p715)
    CCC = p715
end)
v496:Toggle("V", false, function(p716)
    VVV = p716
end)
v496:Toggle("B", false, function(p717)
    BBB = p717
end)
if game:GetService("Players").LocalPlayer.PlayerGui.Platform.Value ~= "PC" then
    v498:Textbox("Set Point", 1, false, function(p718)
        setpoint = p718
    end)
else
    v498:Slider("Set Point", 1, 50, 1, function(p719)
        setpoint = p719
    end)
end
v498:Toggle("Combat", false, function(p720)
    Combat = p720
end)
v498:Toggle("Defense", false, function(p721)
    Defense = p721
end)
v498:Toggle("Sword", false, function(p722)
    Sword = p722
end)
v498:Toggle("Fruit", false, function(p723)
    Fruit = p723
end)
v499:Label("Fruit Sniper Will Buy Fruit in NightMarket then auto store ur Fruit", Color3.fromRGB(255, 255, 255))
v499:Label("so clear ur FruitBag\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189", Color3.fromRGB(255, 255, 255))
v499:MultiDropdown("Select Fruit", v506, {}, function(p724)
    selectedFruit = p724
end)
v499:Toggle("Buy Selected Fruit", false, function(p725)
    buyselectedFruit = p725
end)
v499:Button("Open Fruit Shop", function()
    game:GetService("Players").LocalPlayer.PlayerGui.FruitShop.BlackMarketHandle:Fire()
end)
if vu522 == 1 then
    v499:Button("Pick Poneglyph Scroll | Free", function()
        workspace.Logic.PointsOfInterest:FindFirstChild("Poneglyph Scroll").Pick:InvokeServer()
    end)
end
v499:Label("Stat Remover", Color3.fromRGB(255, 255, 255))
v499:Button("Stat Reset | 100 Gems", function()
    vu503:WaitForChild("StatReset"):FireServer()
end)
v499:Button("Wooden Fishing Rod | 5000 $", function()
    vu503.BuyFishingRod:InvokeServer("Wooden Fishing Rod")
end)
v499:Button("Rare Fishing Rod | 50 Gems", function()
    vu503.BuyFishingRod:InvokeServer("Rare Fishing Rod")
end)
if vu522 == 1 then
    v499:Label("Sword Sellers", Color3.fromRGB(255, 255, 255))
    local v726, v727, v728 = pairs(vu502.Npc_Workspace["Sword Sellers"]:GetChildren())
    while true do
        local vu729
        v728, vu729 = v726(v727, v728)
        if v728 == nil then
            break
        end
        v499:Button(vu729.Name .. " | " .. vu729.Price.Value .. " $", function()
            local v730 = {
                workspace:WaitForChild("Npc_Workspace"):WaitForChild("Sword Sellers"):WaitForChild(vu729.Name)
            }
            vu503:WaitForChild("BuySword"):InvokeServer(unpack(v730))
        end)
    end
end
v499:Label("Fighting Style", Color3.fromRGB(255, 255, 255))
local v731, v732, v733 = pairs(vu502.Npc_Workspace.FightingStyle:GetChildren())
while true do
    local vu734
    v733, vu734 = v731(v732, v733)
    if v733 == nil then
        break
    end
    v499:Button(vu734.Name .. " | " .. vu734.Config.Price.Value .. " $", function()
        local v735 = {
            vu734.Name
        }
        game:GetService("ReplicatedStorage").Replication.ClientEvents.BuyFightingStyle:InvokeServer(unpack(v735))
    end)
end
v499:Label("Buso/Obs/Flash Haki", Color3.fromRGB(255, 255, 255))
v499:Button("Flash Step V.1 | 25000 $", function()
    game:GetService("ReplicatedStorage").Replication.ClientEvents.FlashStep:InvokeServer()
end)
v499:Button("Flash Step V.2 | 75000 $", function()
    game:GetService("ReplicatedStorage").Replication.ClientEvents.FlashStep:InvokeServer()
end)
v499:Button("Flash Step V.3 | 200000 $", function()
    game:GetService("ReplicatedStorage").Replication.ClientEvents.FlashStep:InvokeServer()
end)
v499:Button("Haki V.1 | 100000 $", function()
    local v736 = {
        workspace.Npc_Workspace.Buso:FindFirstChild("1")
    }
    vu503.Buso:InvokeServer(unpack(v736))
end)
v499:Button("Haki V.2 | 250000 $", function()
    local v737 = {
        workspace.Npc_Workspace.Buso:FindFirstChild("2")
    }
    vu503.Buso:InvokeServer(unpack(v737))
end)
v499:Button("Obs haki V.1 | 150000 $", function()
    local v738 = {
        workspace.Npc_Workspace.obshaki:FindFirstChild("1")
    }
    game:GetService("ReplicatedStorage").Replication.ClientEvents.ObsHaki:InvokeServer(unpack(v738))
end)
v499:Button("Obs haki V.2 | 200000 $", function()
    local v739 = {
        workspace.Npc_Workspace.obshaki:FindFirstChild("2")
    }
    game:GetService("ReplicatedStorage").Replication.ClientEvents.ObsHaki:InvokeServer(unpack(v739))
end)
v499:Button("Obs haki V.3 | 1000000 $", function()
    local v740 = {
        workspace.Npc_Workspace.obshaki:FindFirstChild("3")
    }
    game:GetService("ReplicatedStorage").Replication.ClientEvents.ObsHaki:InvokeServer(unpack(v740))
end)
v497:Button("Stop Tween", function()
    _G.ugotmail = false
    TPCF(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end)
v497:Button("Reset Character", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
v497:Line()
v497:Dropdown("Set Spawn", v526, v523, function(p741)
    setspawn(p741)
end)
v497:Label("Worlds", Color3.fromRGB(255, 255, 255))
if vu522 ~= 1 then
    v497:Button("Sea 1", function()
        workspace.Npc_Workspace:FindFirstChild("Sea Teleporter"):FindFirstChild("Sea 1").Teleport:InvokeServer()
    end)
else
    v497:Button("Sea 2", function()
        workspace.Npc_Workspace:FindFirstChild("Sea Teleporter"):FindFirstChild("Sea 2").Teleport:InvokeServer()
    end)
end
v497:Line()
v497:Button("TP To Gear 5 Trainer", function()
    TPCF(CFrame.new(9011.41016, 1870.427, 7016.05518, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)
if vu522 ~= 2 then
    v497:Button("TP To Candy Market", function()
        TPCF(CFrame.new(- 2072.8916, 45.6843987, - 2936.75171, 0.999821305, 0, 0.0189036801, 0, 1, 0, - 0.0189036801, 0, 0.999821305))
    end)
else
    v497:Button("TP To Candy Market", function()
        TPCF(CFrame.new(2578.77832, 41.0044022, 15916.2773, 0.720327258, - 0, - 0.693634331, - 0, 1, - 0, 0.693634331, - 0, 0.720327258))
    end)
end
v497:Line()
local v742, v743, v744 = pairs(v501.IslandHitboxes:GetChildren())
while true do
    local v745
    v744, v745 = v742(v743, v744)
    if v744 == nil then
        break
    end
    if v745.Name == "Sea1" and game.Players.LocalPlayer.PlayerData.SeaIndex.Value == 1 then
        v497:Label(v745.Name, Color3.fromRGB(255, 255, 255))
        local v746, v747, v748 = pairs(v745:GetChildren())
        while true do
            local vu749
            v748, vu749 = v746(v747, v748)
            if v748 == nil then
                break
            end
            v497:Button(vu749.Name, function()
                TPCF(vu749.Configuration.CFrame.Value)
            end)
        end
    end
    if v745.Name == "Sea2" and game.Players.LocalPlayer.PlayerData.SeaIndex.Value == 2 then
        v497:Label(v745.Name, Color3.fromRGB(255, 255, 255))
        local v750, v751, v752 = pairs(v745:GetChildren())
        while true do
            local vu753
            v752, vu753 = v750(v751, v752)
            if v752 == nil then
                break
            end
            v497:Button(vu753.Name, function()
                TPCF(vu753.Configuration.CFrame.Value)
            end)
        end
    end
end
v500:Line()
v500:Button("Re Join", function()
    rejoingame()
end)
v500:Button("Server Hop", function()
    hopkl()
end)
v500:Button("Server Hop Lower Player", function()
    HopLowerServer()
end)
v500:Line()
v500:Button("Fps Boost", function()
    fps()
end)
v500:Button("Use All Codes", function()
    usecodes("SHUTDOWN3")
    usecodes("SHUTDOWN4")
    usecodes("220KLIKES4CODE")
    usecodes("DRAGONUPDATE23")
    usecodes("WOW190KFORNEXT")
    usecodes("160KLIKESFORNEXT")
    usecodes("250KLETSGO")
    usecodes("GEAR5TH")
    usecodes("WOW325KMLG")
    usecodes("NEXT300KCOOL")
    usecodes("XMAS2023")
    usecodes("VALENTINES2024")
end)
v500:Toggle("ESP Fruits", DevilESP, function(p754)
    DevilESP = p754
    UpdateDevilChams()
end)
v500:Toggle("ESP Players", PlayerESP, function(p755)
    PlayerESP = p755
    UpdatePlayerChams()
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if startfarm or (_G.ugotmail or (farmspecialboss or (farmSuperboss or (farmsea or (farmenmaboss or (g4book or (farmfirefistboss or (dragonquest or xmasboss)))))))) then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                local v756, v757, v758 = pairs(game.Players.LocalPlayer.Character:GetDescendants())
                while true do
                    local v759
                    v758, v759 = v756(v757, v758)
                    if v758 == nil then
                        break
                    end
                    if v759:IsA("BasePart") and v759.CanCollide == true then
                        v759.CanCollide = false
                    end
                end
            end)
        end
    end)
end)
spawn(function()
    while wait() do
        if startfarm then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if selectedquest == "Auto Detected Level" or selectedquest == "Auto Detected Level(No Boss)" then
                    if game.Players.LocalPlayer.Quest.NPCName.Value == "" and acceptquest then
                        if selectedquest ~= "Auto Detected Level" then
                            if selectedquest == "Auto Detected Level(No Boss)" then
                                checklvlnoboss()
                            end
                        else
                            checklvl()
                        end
                        getquest("Level " .. tostring(lvlquest))
                        if autosetspawn and game.Players.LocalPlayer.PlayerData.SpawnPoint2.Value ~= location then
                            setspawn(location)
                        end
                    end
                    local v760, v761, v762 = pairs(vu502["NPC Zones"]:GetChildren())
                    while true do
                        local v763
                        v762, v763 = v760(v761, v762)
                        if v762 == nil then
                            break
                        end
                        local v764, v765, v766 = pairs(v763.NPCS:GetChildren())
                        while true do
                            local v767
                            v766, v767 = v764(v765, v766)
                            if v766 == nil then
                                break
                            end
                            if v767.ClassName == "Model" and v767.NPCName.Value == game.Players.LocalPlayer.Quest.NPCName.Value then
                                if v767:FindFirstChild("HumanoidRootPart") and v767.Humanoid.Health > 0 then
                                    mon = v767.Name
                                    task.wait()
                                    getweapon()
                                    tptomon(v767.HumanoidRootPart.CFrame)
                                    v767.HumanoidRootPart.CanCollide = false
                                    v767.Humanoid:ChangeState(11)
                                    att()
                                    if startfarm and (v767:FindFirstChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Quest.NPCName.Value ~= "" or not acceptquest)) and not (vu524 or vu525) then
                                    end
                                else
                                    wait(0.2)
                                    TP(v767.SpawnCFrame.Value)
                                end
                            end
                        end
                    end
                end
                if game.Players.LocalPlayer.Quest.NPCName.Value == "" and acceptquest then
                    getquest("Level " .. tostring(string.match(selectedquest, "%d+")))
                end
                local v768, v769, v770 = pairs(vu502["NPC Zones"]:GetChildren())
                while true do
                    local v771
                    v770, v771 = v768(v769, v770)
                    if v770 == nil then
                        return
                    end
                    local v772, v773, v774 = pairs(v771.NPCS:GetChildren())
                    while true do
                        local v775
                        v774, v775 = v772(v773, v774)
                        if v774 == nil then
                            break
                        end
                        if v775.ClassName == "Model" and v775.NPCName.Value == getnamemon then
                            if v775:FindFirstChild("HumanoidRootPart") and v775.Humanoid.Health > 0 then
                                task.wait()
                                getweapon()
                                tptomon(v775.HumanoidRootPart.CFrame)
                                v775.HumanoidRootPart.CanCollide = false
                                v775.Humanoid:ChangeState(11)
                                att()
                                if startfarm and (v775:FindFirstChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Quest.NPCName.Value ~= "" or not acceptquest)) and not (vu524 or vu525) then
                                end
                            else
                                wait(0.2)
                                TP(v775.SpawnCFrame.Value)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if farmspecialboss or (farmSuperboss or (farmsea or (farmenmaboss or (farmfirefistboss or (dragonquest or xmasboss))))) then
            pcall(function()
                local v776, v777, v778 = pairs(vu502["NPC Zones"].SpecialBosses.NPCS:GetChildren())
                while true do
                    local v779
                    v778, v779 = v776(v777, v778)
                    if v778 == nil then
                        break
                    end
                    if v779.NPCName.Value == "Tremor Girl" then
                        vu509 = v779.Name
                    end
                    if v779.NPCName.Value == "Mace Boss" then
                        vu510 = v779.Name
                    end
                    if v779.NPCName.Value == "Fire Fist" then
                        vu511 = v779.Name
                    end
                end
                local v780, v781, v782 = pairs(vu502["NPC Zones"]["Super Bosses"].NPCS:GetChildren())
                while true do
                    local v783
                    v782, v783 = v780(v781, v782)
                    if v782 == nil then
                        break
                    end
                    if v783.NPCName.Value == "Dual Swordsman" then
                        vu512 = v783.Name
                    end
                end
                local v784, v785, v786 = pairs(vu502["NPC Zones"].SpecialBosses.NPCS:GetChildren())
                while true do
                    local v787
                    v786, v787 = v784(v785, v786)
                    if v786 == nil then
                        break
                    end
                    if v787.NPCName.Value == "DragonBoss-828" or v787.NPCName.Value == "Dragon Boss" then
                        vu527 = v787.Name
                    end
                end
                local v788, v789, v790 = pairs(vu502["NPC Zones"].Monsters.NPCS:GetChildren())
                while true do
                    local v791
                    v790, v791 = v788(v789, v790)
                    if v790 == nil then
                        break
                    end
                    if v791.ClassName == "Model" and (v791.NPCName.Value == "Sea Beast" or (v791.NPCName.Value == "White Sea Beast" or v791.NPCName.Value == "Red Sea Beast")) then
                        vu513 = v791.Name
                    end
                end
                local v792, v793, v794 = pairs(vu502["NPC Zones"]["Flower Capital"].NPCS:GetChildren())
                while true do
                    local v795
                    v794, v795 = v792(v793, v794)
                    if v794 == nil then
                        break
                    end
                    if v795.ClassName == "Model" and v795.NPCName.Value == "Enma Boss" then
                        vu528 = v795.Name
                    end
                end
                local v796, v797, v798 = pairs(vu502["NPC Zones"].SpecialBosses.NPCS:GetChildren())
                while true do
                    local v799
                    v798, v799 = v796(v797, v798)
                    if v798 == nil then
                        break
                    end
                    if v799.ClassName == "Model" and v799.NPCName.Value == "XMAS Boss" then
                        vu529 = v799.Name
                    end
                end
            end)
        end
    end
end)
function specialboss()
    if selectedspec ~= "WhiteBeard Girl So Cute" then
        if selectedspec == "Mace Boss Boy So Cool" then
            vu514 = "Marine Base Town"
            vu515 = "Lava Ore"
            vu516 = "Lava Key"
            vu517 = vu510
            vu518 = "Marine Captain"
            LVMini = "Level 650"
            vu519 = vu502.Logic.PointsOfInterest:FindFirstChild("MarineBaseCauldron")
            vu520 = CFrame.new(43.53086471557617, 22.108606338500977, 6247.69140625)
            vu521 = CFrame.new(64.50127410888672, 6.984524726867676, 6461.25244140625)
        end
    else
        vu514 = "Marine HQ"
        vu515 = "Tremor Key"
        vu516 = ""
        vu517 = vu509
        vu518 = "Ice Admiral"
        LVMini = "Level 900"
        vu519 = vu502.Islands["Marine HQ"].WhitebeardLock
        vu520 = CFrame.new(- 6350.060546875, 21.769289016723633, 6430.0458984375)
        vu521 = ""
    end
end
spawn(function()
    while wait() do
        if farmspecialboss then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                specialboss()
                if game.Players.LocalPlayer.PlayerData.SpawnPoint.Value ~= vu514 then
                    setspawn(vu514)
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild(vu515) or game.Players.LocalPlayer.Character:FindFirstChild(vu515) then
                    EquipWeapon(vu515)
                    local v800 = vu519
                    local v801, v802, v803 = pairs(v800:GetChildren())
                    while true do
                        local v804
                        v803, v804 = v801(v802, v803)
                        if v803 == nil then
                            break
                        end
                        if v804:FindFirstChild("ProximityPrompt") then
                            TP(vu520)
                            fireproximityprompt(v804.ProximityPrompt)
                        else
                            TP(vu520)
                        end
                    end
                end
                if vu516 == "" or (vu502["NPC Zones"].SpecialBosses.NPCS:FindFirstChild(vu517) or not vu502.Logic.PointsOfInterest:FindFirstChild("MarineBaseCageDoor")) then
                    if vu502["NPC Zones"].SpecialBosses.NPCS:FindFirstChild(vu517) then
                        local v805, v806, v807 = pairs(vu502["NPC Zones"].SpecialBosses.NPCS:GetChildren())
                        while true do
                            local v808
                            v807, v808 = v805(v806, v807)
                            if v807 == nil then
                                break
                            end
                            if v808.ClassName == "Model" and (v808.Name == vu517 and (v808:FindFirstChild("HumanoidRootPart") and v808.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    getweapon()
                                    tptomon(v808.HumanoidRootPart.CFrame)
                                    v808.HumanoidRootPart.CanCollide = false
                                    v808.Humanoid:ChangeState(11)
                                    att()
                                until not farmspecialboss or v808:FindFirstChild("Humanoid").Health <= 0
                            end
                        end
                    elseif game.Players.LocalPlayer.Quest.NPCName.Value ~= "" or not acceptquest then
                        local v809, v810, v811 = pairs(vu502["NPC Zones"]:GetChildren())
                        while true do
                            local v812
                            v811, v812 = v809(v810, v811)
                            if v811 == nil then
                                break
                            end
                            local v813, v814, v815 = pairs(v812.NPCS:GetChildren())
                            while true do
                                local v816
                                v815, v816 = v813(v814, v815)
                                if v815 == nil then
                                    break
                                end
                                if v816.ClassName == "Model" and v816.NPCName.Value == vu518 then
                                    if v816:FindFirstChild("HumanoidRootPart") and v816.Humanoid.Health > 0 then
                                        while true do
                                            task.wait()
                                            getweapon()
                                            tptomon(v816.HumanoidRootPart.CFrame)
                                            v816.HumanoidRootPart.CanCollide = false
                                            v816.Humanoid:ChangeState(11)
                                            att()
                                            if not farmspecialboss or v816:FindFirstChild("Humanoid").Health <= 0 then
                                                break
                                            end
                                            if game.Players.LocalPlayer.Quest.NPCName.Value == "" then
                                                if acceptquest then
                                                    break
                                                end
                                            end
                                        end
                                    else
                                        wait(0.5)
                                        TP(v816.SpawnCFrame.Value)
                                    end
                                end
                            end
                        end
                    else
                        getquest(LVMini)
                    end
                else
                    workspace.Logic.PointsOfInterest:FindFirstChild("Lava Key").Pick:InvokeServer()
                    EquipWeapon(vu516)
                    local v817, v818, v819 = pairs(vu502.Logic.PointsOfInterest.MarineBaseCageDoor:GetChildren())
                    while true do
                        local v820
                        v819, v820 = v817(v818, v819)
                        if v819 == nil then
                            break
                        end
                        if v820:FindFirstChild("ProximityPrompt") then
                            TP(vu521)
                            fireproximityprompt(v820.ProximityPrompt)
                        else
                            TP(vu521)
                        end
                    end
                end
            end)
        end
    end
end)
function superbosses()
    if selectedSuper == "Dual Swordsman" then
        vu517 = vu512
    end
end
spawn(function()
    while wait() do
        if farmSuperboss then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                superbosses()
                if vu502["NPC Zones"]["Super Bosses"].NPCS:FindFirstChild(vu517) then
                    if startfarm == true then
                        startfarm = false
                        wait(0.1)
                        vu524 = true
                    end
                    local v821, v822, v823 = pairs(vu502["NPC Zones"]["Super Bosses"].NPCS:GetChildren())
                    while true do
                        local v824
                        v823, v824 = v821(v822, v823)
                        if v823 == nil then
                            break
                        end
                        if v824.ClassName == "Model" and v824.Name == vu517 then
                            if v824:FindFirstChild("HumanoidRootPart") and v824.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    getweapon()
                                    tptomon(v824.HumanoidRootPart.CFrame)
                                    v824.HumanoidRootPart.CanCollide = false
                                    v824.Humanoid:ChangeState(11)
                                    att()
                                until not farmSuperboss or v824:FindFirstChild("Humanoid").Health <= 0
                                if vu524 == true then
                                    startfarm = true
                                    wait(0.1)
                                    vu524 = false
                                end
                            else
                                wait(0.5)
                                TP(v824.SpawnCFrame.Value)
                            end
                        end
                    end
                elseif vu524 == true then
                    startfarm = true
                    wait(0.1)
                    vu524 = false
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if xmasboss then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Snow Orb") or game.Players.LocalPlayer.Character:FindFirstChild("Snow Orb") then
                    EquipWeapon("Snow Orb")
                    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Tutorial_Gui") then
                        local v825, v826, v827 = pairs(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Tutorial_Gui").MainFrame.Decision:GetChildren())
                        while true do
                            local v828
                            v827, v828 = v825(v826, v827)
                            if v827 == nil then
                                break
                            end
                            if v828.Name == "Decision" and v828.AnswerWrapper.Answer.Text == "Spawn" then
                                ClickUI(v828.Button)
                                wait(1)
                            end
                        end
                    else
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                    end
                elseif game:GetService("Workspace")["NPC Zones"].SpecialBosses.NPCS:FindFirstChild(vu529) then
                    local v829, v830, v831 = pairs(vu502["NPC Zones"].SpecialBosses.NPCS:GetChildren())
                    while true do
                        local v832
                        v831, v832 = v829(v830, v831)
                        if v831 == nil then
                            break
                        end
                        if v832.ClassName == "Model" and v832.NPCName.Value == "XMAS Boss" then
                            if v832:FindFirstChild("HumanoidRootPart") and v832.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    getweapon()
                                    tptomon(v832.HumanoidRootPart.CFrame)
                                    v832.HumanoidRootPart.CanCollide = false
                                    v832.Humanoid:ChangeState(11)
                                    att()
                                until not xmasboss or v832:FindFirstChild("Humanoid").Health <= 0
                            else
                                TP(v832.SpawnCFrame.Value)
                            end
                        end
                    end
                elseif game.Players.LocalPlayer.Quest.NPCName.Value ~= "" or (not acceptquest or game.Players.LocalPlayer.PlayerData.Experience.Level.Value < 3850) then
                    local v833, v834, v835 = pairs(vu502["NPC Zones"]["Winter Island"].NPCS:GetChildren())
                    while true do
                        local v836
                        v835, v836 = v833(v834, v835)
                        if v835 == nil then
                            break
                        end
                        if v836.ClassName == "Model" and v836.NPCName.Value == "Snow Boss" then
                            if v836:FindFirstChild("HumanoidRootPart") and v836.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    getweapon()
                                    tptomon(v836.HumanoidRootPart.CFrame)
                                    v836.HumanoidRootPart.CanCollide = false
                                    v836.Humanoid:ChangeState(11)
                                    att()
                                until not xmasboss or v836:FindFirstChild("Humanoid").Health <= 0
                            else
                                TP(v836.SpawnCFrame.Value)
                            end
                        end
                    end
                else
                    getquest("Level 3850")
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if farmenmaboss then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if vu502["NPC Zones"]["Flower Capital"].NPCS:FindFirstChild(vu528) then
                    if startfarm == true then
                        startfarm = false
                        wait(0.1)
                        vu524 = true
                    end
                    local v837, v838, v839 = pairs(vu502["NPC Zones"]:GetChildren())
                    while true do
                        local v840
                        v839, v840 = v837(v838, v839)
                        if v839 == nil then
                            break
                        end
                        local v841, v842, v843 = pairs(v840.NPCS:GetChildren())
                        while true do
                            local v844
                            v843, v844 = v841(v842, v843)
                            if v843 == nil then
                                break
                            end
                            if v844.ClassName == "Model" and v844.NPCName.Value == "Enma Boss" then
                                if v844:FindFirstChild("HumanoidRootPart") and v844.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        getweapon()
                                        tptomon(v844.HumanoidRootPart.CFrame)
                                        v844.HumanoidRootPart.CanCollide = false
                                        v844.Humanoid:ChangeState(11)
                                        att()
                                    until not farmenmaboss or v844:FindFirstChild("Humanoid").Health <= 0
                                    if vu524 == true then
                                        startfarm = true
                                        wait(0.1)
                                        vu524 = false
                                    end
                                else
                                    wait(0.5)
                                    TP(v844.SpawnCFrame.Value)
                                end
                            end
                        end
                    end
                elseif vu524 == true then
                    startfarm = true
                    wait(0.1)
                    vu524 = false
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if farmfirefistboss then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if (game.Players.LocalPlayer.Backpack:FindFirstChild("Match") or game.Players.LocalPlayer.Character:FindFirstChild("Match")) and game:GetService("Workspace").Logic.PointsOfInterest.TallWoodsCampfire.Wood.ShoulderP.Flame.Enabled == false then
                    repeat
                        wait()
                        toTarget(CFrame.new(139.3063201904297, 13.4593505859375, 2508.53857421875) * CFrame.new(0, 100, 0))
                    until not farmfirefistboss or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new(139.3063201904297, 13.4593505859375, 2508.53857421875) * CFrame.new(0, 100, 0)).Position).Magnitude <= 10
                    repeat
                        wait()
                        toTarget(CFrame.new(139.3063201904297, 13.4593505859375, 2508.53857421875))
                    until not farmfirefistboss or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(139.3063201904297, 13.4593505859375, 2508.53857421875).Position).Magnitude <= 10
                    if farmfirefistboss then
                        print(1)
                        EquipWeapon("Match")
                        fireproximityprompt(game:GetService("Workspace").Logic.PointsOfInterest.TallWoodsCampfire.Wood.ProximityPrompt)
                    end
                elseif game:GetService("Workspace").Logic.PointsOfInterest.TallWoodsCampfire.Wood.ShoulderP.Flame.Enabled ~= true or not game:GetService("Workspace").Logic.Ignore.TallWoodsPearls:FindFirstChild("PearlObject") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Pearl") or game.Players.LocalPlayer.Character:FindFirstChild("Pearl") then
                        EquipWeapon("Pearl")
                        local v845, v846, v847 = pairs(game:GetService("Workspace").Logic.PointsOfInterest.TallWoodsTotems:GetChildren())
                        while true do
                            local v848
                            v847, v848 = v845(v846, v847)
                            if v847 == nil then
                                break
                            end
                            if v848.Name == "Totem" and v848.Root:FindFirstChild("ProximityPrompt") then
                                fireproximityprompt(v848.Root.ProximityPrompt)
                            end
                        end
                    elseif game:GetService("Workspace")["NPC Zones"].SpecialBosses.NPCS:FindFirstChild(vu511) then
                        local v849, v850, v851 = pairs(vu502["NPC Zones"].SpecialBosses.NPCS:GetChildren())
                        while true do
                            local v852
                            v851, v852 = v849(v850, v851)
                            if v851 == nil then
                                break
                            end
                            if v852.ClassName == "Model" and (v852.Name == vu511 and (v852:FindFirstChild("HumanoidRootPart") and v852.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    getweapon()
                                    tptomon(v852.HumanoidRootPart.CFrame)
                                    v852.HumanoidRootPart.CanCollide = false
                                    v852.Humanoid:ChangeState(11)
                                    att()
                                until not farmfirefistboss or v852:FindFirstChild("Humanoid").Health <= 0
                            end
                        end
                    elseif game.Players.LocalPlayer.Quest.NPCName.Value ~= "" or not acceptquest then
                        local v853, v854, v855 = pairs(vu502["NPC Zones"]:GetChildren())
                        while true do
                            local v856
                            v855, v856 = v853(v854, v855)
                            if v855 == nil then
                                break
                            end
                            local v857, v858, v859 = pairs(v856.NPCS:GetChildren())
                            while true do
                                local v860
                                v859, v860 = v857(v858, v859)
                                if v859 == nil then
                                    break
                                end
                                if v860.ClassName == "Model" and v860.NPCName.Value == "Warden" then
                                    if v860:FindFirstChild("HumanoidRootPart") and v860.Humanoid.Health > 0 then
                                        repeat
                                            task.wait()
                                            getweapon()
                                            tptomon(v860.HumanoidRootPart.CFrame)
                                            v860.HumanoidRootPart.CanCollide = false
                                            v860.Humanoid:ChangeState(11)
                                            att()
                                        until not farmfirefistboss or (v860:FindFirstChild("Humanoid").Health <= 0 or game.Players.LocalPlayer.Quest.NPCName.Value == "" and acceptquest) or game:GetService("Workspace")["NPC Zones"].SpecialBosses.NPCS:FindFirstChild(vu511)
                                    else
                                        wait(0.5)
                                        TP(v860.SpawnCFrame.Value)
                                    end
                                end
                            end
                        end
                    else
                        getquest("Level 1400")
                    end
                else
                    local v861, v862, v863 = pairs(game:GetService("Workspace").Logic.Ignore.TallWoodsPearls:GetChildren())
                    while true do
                        local v864
                        v863, v864 = v861(v862, v863)
                        if v863 == nil then
                            break
                        end
                        fireproximityprompt(v864.PP)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if g4book then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if game.Players.LocalPlayer.Quest.NPCName.Value == "" and (acceptquest and game.Players.LocalPlayer.PlayerData.Experience.Level.Value >= 2000) then
                    getquest("Level 2000")
                end
                local v865, v866, v867 = pairs(vu502["NPC Zones"]["Bubble Island"].NPCS:GetChildren())
                while true do
                    local v868
                    v867, v868 = v865(v866, v867)
                    if v867 == nil then
                        return
                    end
                    if v868.ClassName == "Model" and v868.NPCName.Value == "G4 Boss" then
                        if v868:FindFirstChild("HumanoidRootPart") and v868.Humanoid.Health > 0 then
                            task.wait()
                            getweapon()
                            tptomon(v868.HumanoidRootPart.CFrame)
                            v868.HumanoidRootPart.CanCollide = false
                            v868.Humanoid:ChangeState(11)
                            att()
                            if g4book and v868:FindFirstChild("Humanoid").Health > 0 and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Gear 4 Book") or game.Players.LocalPlayer.Character:FindFirstChild("Gear 4 Book")) then
                            end
                        else
                            TP(v868.SpawnCFrame.Value)
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if farmsea then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if vu522 == 1 then
                    if vu502.SpecialNPC.Wizard:FindFirstChild("Mystical Wizard") and (game.Players.LocalPlayer.Backpack:FindFirstChild("HealthPotion") or game.Players.LocalPlayer.Character:FindFirstChild("HealthPotion")) then
                        print(1)
                        EquipWeapon("HealthPotion")
                        TP(CFrame.new(205.602005, 397.786987, - 3082.16309, 0, 0, - 1, 0, 1, 0, 1, 0, 0))
                        fireproximityprompt(vu502.SpecialNPC.Wizard["Mystical Wizard"].Clicker.ProximityPrompt)
                        ClickUI(game.Players.LocalPlayer.PlayerGui.Tutorial_Gui.MainFrame.Frame.Hesitation.Accept.Button)
                    end
                    if vu502.SpecialNPC.Wizard:FindFirstChild("Mystical Wizard") and not (game.Players.LocalPlayer.Backpack:FindFirstChild("HealthPotion") and game.Players.LocalPlayer.Character:FindFirstChild("HealthPotion")) then
                        print(2)
                        if vu502.Npc_Workspace["Crew Assistant"].Makino:FindFirstChild("HumanoidRootPart") then
                            TP(CFrame.new(- 2176.55029, 55.2864265, - 3049.51074, 0.996829093, - 6.88359165e-8, 0.0795722231, 6.98474238e-8, 1, - 9.92839322e-9, - 0.0795722231, 1.5454825e-8, 0.996829093))
                            local v869 = workspace.Npc_Workspace["Crew Assistant"].Makino
                            workspace.Npc_Workspace["Crew Assistant"].Makino.Buy:InvokeServer(v869)
                        else
                            TP(CFrame.new(- 2176.55029, 55.2864265, - 3049.51074, 0.996829093, - 6.88359165e-8, 0.0795722231, 6.98474238e-8, 1, - 9.92839322e-9, - 0.0795722231, 1.5454825e-8, 0.996829093))
                        end
                    end
                    if not vu502["NPC Zones"].Monsters.NPCS:FindFirstChild(vu513) then
                    end
                    local v870, v871, v872 = pairs(vu502["NPC Zones"].Monsters.NPCS:GetChildren())
                    while true do
                        local v873
                        v872, v873 = v870(v871, v872)
                        if v872 == nil then
                            break
                        end
                        if v873.ClassName == "Model" and v873.Name == vu513 then
                            if v873:FindFirstChild("HumanoidRootPart") and v873.Humanoid.Health > 0 then
                                task.wait()
                                getweapon()
                                tptomon(v873.Head.CFrame)
                                v873.HumanoidRootPart.CanCollide = false
                                v873.Humanoid:ChangeState(11)
                                att()
                                if farmsea and v873:FindFirstChild("Humanoid").Health > 0 then
                                end
                            else
                                TP(v873.SpawnCFrame.Value)
                            end
                        end
                    end
                end
                if not vu502["NPC Zones"].Monsters.NPCS:FindFirstChild(vu513) then
                    if vu525 == true then
                        startfarm = true
                        wait(0.1)
                        vu525 = false
                    end
                    return
                end
                local v874, v875, v876 = pairs(vu502["NPC Zones"].Monsters.NPCS:GetChildren())
                while true do
                    local v877
                    v876, v877 = v874(v875, v876)
                    if v876 == nil then
                    end
                    if v877.ClassName ~= "Model" or v877.Name ~= vu513 then
                    end
                    if v877:FindFirstChild("HumanoidRootPart") and v877.Humanoid.Health > 0 then
                        break
                    end
                    TP(v877.SpawnCFrame.Value)
                end
                while true do
                    task.wait()
                    if startfarm == true then
                        startfarm = false
                        wait(0.1)
                        vu525 = true
                    end
                    getweapon()
                    tptomon(v877.Head.CFrame)
                    v877.HumanoidRootPart.CanCollide = false
                    v877.Humanoid:ChangeState(11)
                    att()
                    if not farmsea or v877:FindFirstChild("Humanoid").Health <= 0 then
                        if vu525 == true then
                            startfarm = true
                            wait(0.1)
                            vu525 = false
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait(0.5) do
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        if game.Players.LocalPlayer.PlayerData.Experience.Points.Value >= 1 then
            if Combat then
                local v878 = {
                    "Combat",
                    setpoint
                }
                game:GetService("ReplicatedStorage").Replication.ClientEvents.Stats_Event:FireServer(unpack(v878))
            end
            if Defense then
                local v879 = {
                    "Defense",
                    setpoint
                }
                game:GetService("ReplicatedStorage").Replication.ClientEvents.Stats_Event:FireServer(unpack(v879))
            end
            if Sword then
                local v880 = {
                    "Sword",
                    setpoint
                }
                game:GetService("ReplicatedStorage").Replication.ClientEvents.Stats_Event:FireServer(unpack(v880))
            end
            if Fruit then
                local v881 = {
                    "Fruit",
                    setpoint
                }
                game:GetService("ReplicatedStorage").Replication.ClientEvents.Stats_Event:FireServer(unpack(v881))
            end
        end
    end
end)
spawn(function()
    while wait(0.5) do
        if startfarm or (farmspecialboss or (farmSuperboss or (farmsea or (farmenmaboss or (g4book or (farmfirefistboss or (dragonquest or xmasboss))))))) then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                useskill()
            end)
        end
    end
end)
spawn(function()
    while wait(0.5) do
        if busohaki then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if game.Players.LocalPlayer.Character.BusoEnabled.Value == false and game.Players.LocalPlayer.PlayerData.Buso.BusoLevel.Value >= 1 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid") then
                    workspace[game.Players.LocalPlayer.Name].Buso_Server.Comunication:FireServer()
                end
            end)
        end
        if obshaki then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if game.Players.LocalPlayer.Character.ObservationHaki.Value == false and game.Players.LocalPlayer.PlayerData.Haki.ObservationHakiLevel.Value >= 1 then
                    game:GetService("Players").LocalPlayer.PlayerGui.ObservationHaki_Server.Comunication:FireServer()
                end
            end)
        end
    end
end)
spawn(function()
    while wait(0.5) do
        if buyselectedFruit then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if selectedFruit ~= "" then
                    local v882, v883, v884 = pairs(selectedFruit)
                    while true do
                        local v885
                        v884, v885 = v882(v883, v884)
                        if v884 == nil then
                            break
                        end
                        local v886, v887, v888 = pairs(game.Players.LocalPlayer.PlayerGui.FruitShop.MainFrame.FruitShop.Main.PageHolder["Robux Market"]:GetChildren())
                        while true do
                            local v889
                            v888, v889 = v886(v887, v888)
                            if v888 == nil then
                                break
                            end
                            if v889.Name == v885 then
                                if v889.Holder.FruitInfo.Actionbuttons.MoneySpinButton.TitleLabel.Title.Text == "Not In Stock!" then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(v889.Name) and (game.Players.LocalPlayer.PlayerGui.Inventory.MainFrame.Main.Holder.Pages.FruitsPage.Count.Text ~= "3/3" and game.Players.LocalPlayer.PlayerGui.Inventory.MainFrame.Main.Holder.Pages.FruitsPage.Count.Text ~= "10/10") then
                                        EquipWeapon(v889.Name)
                                    elseif game.Players.LocalPlayer.Character:FindFirstChild(v889.Name) then
                                        local v890 = {
                                            game.Players.LocalPlayer.Character[v889.Name]
                                        }
                                        game:GetService("ReplicatedStorage").Replication.ClientEvents.CollectFruit:FireServer(unpack(v890))
                                    end
                                else
                                    ClickUI(v889.Holder.FruitInfo.Actionbuttons.MoneySpinButton)
                                    ClickUI(game.Players.LocalPlayer.PlayerGui.FruitShop.MainFrame.FruitShop.Main.PageHolder.Prompt.Yes)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if dragonquest then
            pcall(function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Orb") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Orb") then
                    EquipWeapon("Dragon Orb")
                    if (game:GetService("Workspace").Logic.PointsOfInterest.DragonTotem.Root.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 10 then
                        TP(game:GetService("Workspace").Logic.PointsOfInterest.DragonTotem.Root.CFrame)
                    else
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 101, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 101, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                end
                if vu502["NPC Zones"].SpecialBosses.NPCS:FindFirstChild(vu527) then
                    local v891, v892, v893 = pairs(vu502["NPC Zones"].SpecialBosses.NPCS:GetChildren())
                    while true do
                        local v894
                        v893, v894 = v891(v892, v893)
                        if v893 == nil then
                            break
                        end
                        if v894.ClassName == "Model" and v894.Name == vu527 then
                            if v894:FindFirstChild("HumanoidRootPart") and v894.Humanoid.Health > 0 then
                                task.wait()
                                getweapon()
                                tptomon(v894.HumanoidRootPart.CFrame)
                                v894.HumanoidRootPart.CanCollide = false
                                v894.Humanoid:ChangeState(11)
                                att()
                                if dragonquest and v894:FindFirstChild("Humanoid").Health > 0 then
                                end
                            else
                                wait(0.2)
                                TP(v894.SpawnCFrame.Value)
                            end
                        end
                    end
                end
                if game.Players.LocalPlayer.Quest.NPCName.Value == "" and (acceptquest and game.Players.LocalPlayer.PlayerData.Experience.Level.Value >= 2950) then
                    getquest("Level 2950")
                end
                local v895, v896, v897 = pairs(vu502["NPC Zones"]["Dragon Island"].NPCS:GetChildren())
                while true do
                    local v898
                    v897, v898 = v895(v896, v897)
                    if v897 == nil then
                        return
                    end
                    if v898.ClassName == "Model" and v898.NPCName.Value == "MaceV2 Boss" then
                        if v898:FindFirstChild("HumanoidRootPart") and v898.Humanoid.Health > 0 then
                            task.wait()
                            getweapon()
                            tptomon(v898.HumanoidRootPart.CFrame)
                            v898.HumanoidRootPart.CanCollide = false
                            v898.Humanoid:ChangeState(11)
                            att()
                            if dragonquest and v898:FindFirstChild("Humanoid").Health > 0 then
                            end
                        else
                            wait(0.2)
                            TP(v898.SpawnCFrame.Value)
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if autostorecum then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Drums of Liberation") then
                    EquipWeapon("Drums of Liberation")
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Drums of Liberation") then
                    local v899, v900, v901 = pairs(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Tutorial_Gui").MainFrame.Decision:GetChildren())
                    while true do
                        local v902
                        v901, v902 = v899(v900, v901)
                        if v901 == nil then
                            break
                        end
                        if v902.Name == "Decision" and v902.AnswerWrapper.Answer.Text == "Store" then
                            ClickUI(v902.Button)
                            wait(1)
                            if disibledrums then
                                autostorecum = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if gotg4book then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Gear 4 Book") then
                    EquipWeapon("Gear 4 Book")
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Gear 4 Book") then
                    local v903, v904, v905 = pairs(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Tutorial_Gui").MainFrame.Decision:GetChildren())
                    while true do
                        local v906
                        v905, v906 = v903(v904, v905)
                        if v905 == nil then
                            break
                        end
                        if v906.Name == "Decision" and v906.AnswerWrapper.Answer.Text == "Store" then
                            ClickUI(v906.Button)
                            wait(1)
                            if disiblebook then
                                gotg4book = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if autotrans then
            pcall(function()
                if game.Players.LocalPlayer.PlayerData.CurrentSuperPower.Value == "Gum" then
                    if selectedform ~= "Gear 2" then
                        if selectedform ~= "Gear 4" then
                            if selectedform == "Gear 5" and not game.Players.LocalPlayer.Character:FindFirstChild("Zoan") then
                                EquipWeapon("Gum")
                                game:GetService("Players").LocalPlayer.PlayerGui.FruitPowers.Gum.Events.TransformG5:FireServer()
                                wait(4)
                            end
                        elseif not game.Players.LocalPlayer.Character:FindFirstChild("Zoan") then
                            EquipWeapon("Gum")
                            game:GetService("Players").LocalPlayer.PlayerGui.FruitPowers.Gum.Events.TransformG4:FireServer()
                            wait(4)
                        end
                    elseif not game.Players.LocalPlayer.Character:FindFirstChild("SpeedBuff") then
                        EquipWeapon("Gum")
                        game:GetService("Players").LocalPlayer.PlayerGui.FruitPowers.Gum.Events:FindFirstChild("Gear 2"):FireServer()
                        wait(4)
                    end
                end
            end)
        end
    end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/refs/heads/main/close.lua"))()