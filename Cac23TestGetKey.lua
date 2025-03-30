-- Đặt key cần thiết cho việc kích hoạt script
local required_key = "PhatDepTrai_DXDFG1"
local script_key = ""

do
    Library:Notify({
        Title = "PhatDepZai Hub",
        Description = "PhatDepZai Hub!",
        Time = 5
    })

    if CurrentScriptID then
        local KeyGroupbox = MainTab:AddLeftGroupbox("Key System")
        local InfoGroupbox = MainTab:AddRightGroupbox("Information")
        
        KeyGroupbox:AddLabel({
            Text = "Enter your key below to access PhatDepZaiHub.",
            DoesWrap = true
        })

        local KeyInput = KeyGroupbox:AddInput("Key", {
            Text = "Enter Your Key",
            Default = script_key or "",
            Placeholder = "Example: PhatDepTrai_DXDFG1",
            Numeric = false,
            Finished = false,
            Callback = function(Value)
                script_key = Value
            end
        })

        -- Nút để kiểm tra key
        KeyGroupbox:AddButton({
            Text = "Verify Key",
            Func = function()
                -- Kiểm tra key
                if script_key == required_key then
                    Library:Notify({
                        Title = "Key Verified",
                        Description = "Your key is valid. Script activated!",
                        Time = 5
                    })
                    -- Đặt code script chính ở đây khi key hợp lệ
                else
                    Library:Notify({
                        Title = "Invalid Key",
                        Description = "The key entered is incorrect. Please try again.",
                        Time = 5
                    })
                end
            end
        })

        -- Nút hỗ trợ với thông tin Discord
        KeyGroupbox:AddButton({
            Text = "Join Discord",
            Func = function()
                setclipboard("https://discord.gg/WmMp3S5ZYc")
                Library:Notify({
                    Title = "Copied to Clipboard",
                    Description = "Discord server link has been copied to your clipboard",
                    Time = 16
                })
            end
        })

        InfoGroupbox:AddLabel({
            Text = "Common Issues:\n• HWID LOCKED: Your key is linked to another device\n• KEY INCORRECT: The provided key doesn't exist\n• KEY INVALID: Invalid key format\n• KEY EXPIRED: Your key has expired\n• KEY BANNED: Key banned from the system",
            DoesWrap = true
        })
    else
        local InfoGroupbox = MainTab:AddLeftGroupbox("Unsupported Game")
        
        InfoGroupbox:AddLabel({
            Text = "PhatDepZai Hub does not currently support this game.\nYou can close this loader manually.",
            DoesWrap = true
        })
    end
    
    local InfoGroupbox = SettingsTab:AddLeftGroupbox("Information")
    local ConfigGroupbox = SettingsTab:AddRightGroupbox("Configuration")
    
    InfoGroupbox:AddLabel({
        Text = "Current Game: " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. 
               "\nGame ID: " .. game.GameId .. 
               "\nVersion: 1.0.0\nDeveloped by Nebula Team",
        DoesWrap = true
    })
    
    InfoGroupbox:AddButton({
        Text = "Copy Game ID",
        Func = function()
            setclipboard(tostring(game.GameId))
            Library:Notify({
                Title = "Game ID Copied",
                Description = "Game ID: " .. game.GameId .. " has been copied to clipboard",
                Time = 5
            })
        end
    })
    
    local AutoSaveToggle = ConfigGroupbox:AddToggle("AutoSaveKey", {
        Text = "Automatically Save Key", 
        Default = true,
        Callback = function(Value)
            print("Auto Save Key:", Value)
        end
    })
end

Library:Notify({
    Title = "PhatDepZai Hub",
    Description = "Loader successfully loaded!",
    Time = 5
})
