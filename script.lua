local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

-- Get Key butonu
local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0, 250, 0, 50)
getKeyButton.Position = UDim2.new(0.5, -125, 0.5, -60)
getKeyButton.Text = "Get Key"
getKeyButton.TextSize = 20
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
getKeyButton.Parent = frame

-- Check Key butonu
local checkKeyButton = Instance.new("TextButton")
checkKeyButton.Size = UDim2.new(0, 250, 0, 50)
checkKeyButton.Position = UDim2.new(0.5, -125, 0.5, 30)
checkKeyButton.Text = "Check Key"
checkKeyButton.TextSize = 20
checkKeyButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
checkKeyButton.Parent = frame

-- Key giriş kutusu
local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0, 250, 0, 50)
keyInput.Position = UDim2.new(0.5, -125, 0.5, -130)
keyInput.Text = "Enter Key"
keyInput.TextSize = 20
keyInput.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
keyInput.Parent = frame

-- Kopyalanacak site linki
local siteLink = "https://www.orneklink.com" -- Buraya istediğiniz linki yazın

-- Get Key butonuna basıldığında site linkini kopyala
getKeyButton.MouseButton1Click:Connect(function()
    setclipboard(siteLink) -- Linki panoya kopyalar
    print("Site linki panoya kopyalandı: " .. siteLink)
end)

-- Check Key butonuna tıklandığında kontrol işlemi
checkKeyButton.MouseButton1Click:Connect(function()
    if keyInput.Text == "WALCODE" then
        print("Key doğru, script çalıştırılıyor ve ekran kapatılıyor...")
        
        -- Loadstring komutunu çalıştır
        local success, errorMessage = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
        end)

        if success then
            print("Script başarıyla çalıştırıldı!")
        else
            warn("Script çalıştırılamadı: " .. errorMessage)
        end

        -- GUI'yi kapat
        screenGui:Destroy()
    else
        print("Key yanlış!")
    end
end)
