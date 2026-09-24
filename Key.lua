local Config = {
    ServiceId       = 32840,
    PlatoSecret     = "69453ed3-61cf-406c-a54b-6ee28f3afa65",
    Secret          = "1234",
    MainScriptURL   = "https://raw.githubusercontent.com/sadcansing/RobloxScriptsOk/refs/heads/main/Script.lua",

    ShowDiscord     = false,
    DiscordURL      = "https://discord.gg/kT55J724BK",

    ShowInstagram   = false,
    InstagramURL    = "https://www.instagram.com/oyb0i/",

    -- YouTube
    ShowYoutube     = true,
    YoutubeURL      = "https://www.youtube.com/@robloxscriptsok",

    KeyFileName     = "Mykey.txt",

    OldGuiName      = "",
    MainGuiName     = "",

    HubName         = "RobloxScriptsOk",
    HubDescription  = "Get your key below to continue"
}


--// ============================================================
--// ROBLOXSCRIPTSOK UI
--// Replace your old CreateGUI() function with this
--// ============================================================

function CreateGUI()

    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")

    local Player = Players.LocalPlayer
    local PlayerGui = Player:WaitForChild("PlayerGui")

    -- Remove old UI
    pcall(function()
        local Old = PlayerGui:FindFirstChild("RobloxScriptsOk_KeySystem")
        if Old then
            Old:Destroy()
        end
    end)

    --// Colors
    local Background = Color3.fromRGB(15, 15, 20)
    local Secondary = Color3.fromRGB(22, 22, 29)
    local Tertiary = Color3.fromRGB(30, 30, 39)

    local Accent = Color3.fromRGB(110, 75, 255)
    local AccentDark = Color3.fromRGB(80, 50, 190)

    local Text = Color3.fromRGB(245, 245, 250)
    local SubText = Color3.fromRGB(160, 160, 175)

    local Success = Color3.fromRGB(80, 220, 130)
    local Error = Color3.fromRGB(255, 90, 90)

    --// ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "RobloxScriptsOk_KeySystem"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = PlayerGui

    --// Overlay
    local Overlay = Instance.new("Frame")
    Overlay.Name = "Overlay"
    Overlay.Size = UDim2.fromScale(1, 1)
    Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Overlay.BackgroundTransparency = 0.35
    Overlay.BorderSizePixel = 0
    Overlay.Parent = ScreenGui

    --// Main window
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "Main"
    MainFrame.Size = UDim2.fromOffset(440, 460)
    MainFrame.Position = UDim2.fromScale(0.5, 0.5)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Background
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 14)
    MainCorner.Parent = MainFrame

    --// Shadow
    local Shadow = Instance.new("ImageLabel")
    Shadow.Name = "Shadow"
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.Position = UDim2.fromScale(0.5, 0.5)
    Shadow.Size = UDim2.new(1, 55, 1, 55)
    Shadow.BackgroundTransparency = 1
    Shadow.Image = "rbxassetid://6014261993"
    Shadow.ImageTransparency = 0.45
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(49, 49, 450, 450)
    Shadow.ZIndex = -1
    Shadow.Parent = MainFrame

    --// Accent line
    local AccentLine = Instance.new("Frame")
    AccentLine.Size = UDim2.new(1, 0, 0, 4)
    AccentLine.BackgroundColor3 = Accent
    AccentLine.BorderSizePixel = 0
    AccentLine.Parent = MainFrame

    local AccentCorner = Instance.new("UICorner")
    AccentCorner.CornerRadius = UDim.new(0, 14)
    AccentCorner.Parent = AccentLine

    --// Close button
    local CloseButton = Instance.new("TextButton")
    CloseButton.Size = UDim2.fromOffset(34, 34)
    CloseButton.Position = UDim2.new(1, -45, 0, 16)
    CloseButton.BackgroundColor3 = Tertiary
    CloseButton.Text = "×"
    CloseButton.TextColor3 = SubText
    CloseButton.TextSize = 24
    CloseButton.Font = Enum.Font.GothamMedium
    CloseButton.AutoButtonColor = false
    CloseButton.Parent = MainFrame

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 9)
    CloseCorner.Parent = CloseButton

    CloseButton.MouseEnter:Connect(function()
        TweenService:Create(
            CloseButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = Error, TextColor3 = Color3.new(1,1,1)}
        ):Play()
    end)

    CloseButton.MouseLeave:Connect(function()
        TweenService:Create(
            CloseButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = Tertiary, TextColor3 = SubText}
        ):Play()
    end)

    CloseButton.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)

    --// Logo
    local Logo = Instance.new("Frame")
    Logo.Size = UDim2.fromOffset(58, 58)
    Logo.Position = UDim2.fromOffset(25, 25)
    Logo.BackgroundColor3 = Accent
    Logo.BorderSizePixel = 0
    Logo.Parent = MainFrame

    local LogoCorner = Instance.new("UICorner")
    LogoCorner.CornerRadius = UDim.new(0, 15)
    LogoCorner.Parent = Logo

    local LogoText = Instance.new("TextLabel")
    LogoText.Size = UDim2.fromScale(1, 1)
    LogoText.BackgroundTransparency = 1
    LogoText.Text = "R"
    LogoText.TextColor3 = Color3.new(1, 1, 1)
    LogoText.TextSize = 32
    LogoText.Font = Enum.Font.GothamBold
    LogoText.Parent = Logo

    --// Title
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -160, 0, 32)
    Title.Position = UDim2.fromOffset(98, 25)
    Title.BackgroundTransparency = 1
    Title.Text = "RobloxScriptsOk"
    Title.TextColor3 = Text
    Title.TextSize = 24
    Title.Font = Enum.Font.GothamBold
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = MainFrame

    --// Subtitle
    local Subtitle = Instance.new("TextLabel")
    Subtitle.Size = UDim2.new(1, -160, 0, 25)
    Subtitle.Position = UDim2.fromOffset(99, 56)
    Subtitle.BackgroundTransparency = 1
    Subtitle.Text = "Key Verification"
    Subtitle.TextColor3 = Accent
    Subtitle.TextSize = 14
    Subtitle.Font = Enum.Font.GothamMedium
    Subtitle.TextXAlignment = Enum.TextXAlignment.Left
    Subtitle.Parent = MainFrame

    --// Description
    local Description = Instance.new("TextLabel")
    Description.Size = UDim2.new(1, -50, 0, 42)
    Description.Position = UDim2.fromOffset(25, 105)
    Description.BackgroundTransparency = 1
    Description.Text = "Get your access key and enter it below to continue."
    Description.TextColor3 = SubText
    Description.TextSize = 14
    Description.Font = Enum.Font.Gotham
    Description.TextWrapped = true
    Description.TextXAlignment = Enum.TextXAlignment.Left
    Description.Parent = MainFrame

    --// YouTube button
    local YoutubeButton = Instance.new("TextButton")
    YoutubeButton.Size = UDim2.new(1, -50, 0, 44)
    YoutubeButton.Position = UDim2.fromOffset(25, 158)
    YoutubeButton.BackgroundColor3 = Color3.fromRGB(35, 25, 30)
    YoutubeButton.Text = "▶   Subscribe to RobloxScriptsOk"
    YoutubeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    YoutubeButton.TextSize = 14
    YoutubeButton.Font = Enum.Font.GothamBold
    YoutubeButton.AutoButtonColor = false
    YoutubeButton.Parent = MainFrame

    local YoutubeCorner = Instance.new("UICorner")
    YoutubeCorner.CornerRadius = UDim.new(0, 10)
    YoutubeCorner.Parent = YoutubeButton

    YoutubeButton.MouseEnter:Connect(function()
        TweenService:Create(
            YoutubeButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = Color3.fromRGB(55, 30, 40)}
        ):Play()
    end)

    YoutubeButton.MouseLeave:Connect(function()
        TweenService:Create(
            YoutubeButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = Color3.fromRGB(35, 25, 30)}
        ):Play()
    end)

    --// Status must exist before button callbacks
    local Status = Instance.new("TextLabel")
    Status.Size = UDim2.new(1, -50, 0, 22)
    Status.Position = UDim2.fromOffset(25, 350)
    Status.BackgroundTransparency = 1
    Status.Text = "Waiting for key..."
    Status.TextColor3 = SubText
    Status.TextSize = 13
    Status.Font = Enum.Font.GothamMedium
    Status.TextXAlignment = Enum.TextXAlignment.Center
    Status.Parent = MainFrame

    YoutubeButton.MouseButton1Click:Connect(function()
        if setclipboard then
            pcall(function()
                setclipboard(Config.YoutubeURL)
            end)

            Status.Text = "YouTube link copied!"
            Status.TextColor3 = Success

            task.delay(2, function()
                if Status and Status.Parent then
                    Status.Text = "Waiting for key..."
                    Status.TextColor3 = SubText
                end
            end)
        end
    end)

    --// Key input background
    local InputBackground = Instance.new("Frame")
    InputBackground.Size = UDim2.new(1, -50, 0, 52)
    InputBackground.Position = UDim2.fromOffset(25, 215)
    InputBackground.BackgroundColor3 = Secondary
    InputBackground.BorderSizePixel = 0
    InputBackground.Parent = MainFrame

    local InputCorner = Instance.new("UICorner")
    InputCorner.CornerRadius = UDim.new(0, 10)
    InputCorner.Parent = InputBackground

    local KeyInput = Instance.new("TextBox")
    KeyInput.Size = UDim2.new(1, -24, 1, 0)
    KeyInput.Position = UDim2.fromOffset(12, 0)
    KeyInput.BackgroundTransparency = 1
    KeyInput.PlaceholderText = "Enter your key..."
    KeyInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 115)
    KeyInput.Text = ""
    KeyInput.TextColor3 = Text
    KeyInput.TextSize = 14
    KeyInput.Font = Enum.Font.Gotham
    KeyInput.ClearTextOnFocus = false
    KeyInput.TextXAlignment = Enum.TextXAlignment.Left
    KeyInput.Parent = InputBackground

    --// Get Key
    local GetKeyButton = Instance.new("TextButton")
    GetKeyButton.Size = UDim2.new(1, -50, 0, 44)
    GetKeyButton.Position = UDim2.fromOffset(25, 280)
    GetKeyButton.BackgroundColor3 = Tertiary
    GetKeyButton.Text = "🔑   Get Key"
    GetKeyButton.TextColor3 = Text
    GetKeyButton.TextSize = 14
    GetKeyButton.Font = Enum.Font.GothamBold
    GetKeyButton.AutoButtonColor = false
    GetKeyButton.Parent = MainFrame

    local GetCorner = Instance.new("UICorner")
    GetCorner.CornerRadius = UDim.new(0, 10)
    GetCorner.Parent = GetKeyButton

    GetKeyButton.MouseEnter:Connect(function()
        TweenService:Create(
            GetKeyButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = Color3.fromRGB(42, 42, 54)}
        ):Play()
    end)

    GetKeyButton.MouseLeave:Connect(function()
        TweenService:Create(
            GetKeyButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = Tertiary}
        ):Play()
    end)

    GetKeyButton.MouseButton1Click:Connect(function()
        Status.Text = "Getting key link..."
        Status.TextColor3 = Accent

        task.spawn(function()
            local SuccessResult, Result = pcall(function()
                return cacheLink()
            end)

            if SuccessResult and Result then
                if setclipboard then
                    pcall(function()
                        setclipboard(Result)
                    end)

                    Status.Text = "Key link copied to clipboard!"
                    Status.TextColor3 = Success
                else
                    Status.Text = "Key link generated!"
                    Status.TextColor3 = Success
                end
            else
                Status.Text = "Failed to get key link."
                Status.TextColor3 = Error
            end
        end)
    end)

    --// Verify button
    local VerifyButton = Instance.new("TextButton")
    VerifyButton.Size = UDim2.new(1, -50, 0, 44)
    VerifyButton.Position = UDim2.fromOffset(25, 405)
    VerifyButton.BackgroundColor3 = Accent
    VerifyButton.Text = "✓   Verify Key"
    VerifyButton.TextColor3 = Color3.new(1, 1, 1)
    VerifyButton.TextSize = 14
    VerifyButton.Font = Enum.Font.GothamBold
    VerifyButton.AutoButtonColor = false
    VerifyButton.Parent = MainFrame

    local VerifyCorner = Instance.new("UICorner")
    VerifyCorner.CornerRadius = UDim.new(0, 10)
    VerifyCorner.Parent = VerifyButton

    VerifyButton.MouseEnter:Connect(function()
        TweenService:Create(
            VerifyButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = AccentDark}
        ):Play()
    end)

    VerifyButton.MouseLeave:Connect(function()
        TweenService:Create(
            VerifyButton,
            TweenInfo.new(0.15),
            {BackgroundColor3 = Accent}
        ):Play()
    end)

    VerifyButton.MouseButton1Click:Connect(function()

        local EnteredKey = KeyInput.Text

        if EnteredKey == "" then
            Status.Text = "Please enter your key."
            Status.TextColor3 = Error
            return
        end

        Status.Text = "Verifying key..."
        Status.TextColor3 = Accent

        task.spawn(function()

            local SuccessResult, Result = pcall(function()
                return redeemKey(EnteredKey)
            end)

            if SuccessResult and Result then

                Status.Text = "Key verified successfully!"
                Status.TextColor3 = Success

                task.wait(0.75)

                pcall(function()
                    StartMainScript()
                end)

            else

                Status.Text = "Invalid or expired key."
                Status.TextColor3 = Error

            end

        end)

    end)

    --// Footer
    local Footer = Instance.new("TextLabel")
    Footer.Size = UDim2.new(1, -50, 0, 20)
    Footer.Position = UDim2.new(0, 25, 1, -28)
    Footer.BackgroundTransparency = 1
    Footer.Text = "RobloxScriptsOk • Secure Key Verification"
    Footer.TextColor3 = Color3.fromRGB(90, 90, 105)
    Footer.TextSize = 11
    Footer.Font = Enum.Font.Gotham
    Footer.TextXAlignment = Enum.TextXAlignment.Center
    Footer.Parent = MainFrame

    --// Dragging
    local Dragging = false
    local DragStart
    local StartPosition

    local function UpdateDrag(Input)

        local Delta = Input.Position - DragStart

        MainFrame.Position = UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )

    end

    MainFrame.InputBegan:Connect(function(Input)

        if Input.UserInputType == Enum.UserInputType.MouseButton1
        or Input.UserInputType == Enum.UserInputType.Touch then

            Dragging = true
            DragStart = Input.Position
            StartPosition = MainFrame.Position

            Input.Changed:Connect(function()

                if Input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end

            end)

        end

    end)

    UserInputService.InputChanged:Connect(function(Input)

        if Dragging and (
            Input.UserInputType == Enum.UserInputType.MouseMovement
            or Input.UserInputType == Enum.UserInputType.Touch
        ) then

            UpdateDrag(Input)

        end

    end)

    --// Entrance animation
    MainFrame.Size = UDim2.fromOffset(420, 440)

    TweenService:Create(
        MainFrame,
        TweenInfo.new(
            0.35,
            Enum.EasingStyle.Back,
            Enum.EasingDirection.Out
        ),
        {
            Size = UDim2.fromOffset(440, 460)
        }
    ):Play()

    --// Saved key
    task.spawn(function()

        if isfile and readfile then

            local Exists = pcall(function()
                return isfile(Config.KeyFileName)
            end)

            if Exists then

                local SavedKey

                pcall(function()
                    if isfile(Config.KeyFileName) then
                        SavedKey = readfile(Config.KeyFileName)
                    end
                end)

                if SavedKey and SavedKey ~= "" then

                    KeyInput.Text = SavedKey
                    Status.Text = "Saved key detected..."
                    Status.TextColor3 = Accent

                    task.wait(0.5)

                    local SuccessResult, Result = pcall(function()
                        return redeemKey(SavedKey)
                    end)

                    if SuccessResult and Result then

                        Status.Text = "Saved key verified!"
                        Status.TextColor3 = Success

                        task.wait(0.5)

                        pcall(function()
                            StartMainScript()
                        end)

                    else

                        Status.Text = "Saved key is invalid."
                        Status.TextColor3 = Error

                    end

                end

            end

        end

    end)

end


--// Start the UI
CreateGUI()
