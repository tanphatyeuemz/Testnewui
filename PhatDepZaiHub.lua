loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

local Window = MakeWindow({
    Hub = {
        Title = "PhatDepZai Hub",
        Animation = "Welcome To My Hub :>"
    },
    Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "Press Key",
        KeyLink = "https://anhbasex.com",
        Keys = {"Concumauhong"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Running the Script...",
            Incorrectkey = "The key is incorrect",
            CopyKeyLink = "Copied to Clipboard"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=133634881016886",
    Size = {60, 60},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

------ Tab
local Tab1o = MakeTab({Name = "Main"})
local Tab2o = MakeTab({Name = "Setting Farm"})
local Tab3o = MakeTab({Name = "Race V4"})

------- BUTTONS in Tab1o (Main)
AddButton(Tab1o, {
    Name = "Farm Level",
    Callback = function()
        -- i will add my code farm level (will coming soon)
        
end

})

AddButton(Tab1o, {
    Name = "Farm Bone",
    Callback = function()
        -- Add the script or function for Farm Bone here
    end
})

AddButton(Tab1o, {
    Name = "Farm Kata",
    Callback = function()
        -- Add the script or function for Farm Kata here
    end
})

------- BUTTONS in Tab2o (Setting Farm)
AddButton(Tab2o, {
    Name = "Get Cdk",
    Callback = function()
        -- Add the script or function for Get Cdk here
    end
})

AddButton(Tab2o, {
    Name = "Get Sgt",
    Callback = function()
        -- Add the script or function for Get Sgt here
    end
})

------- BUTTONS in Tab3o (Race V4)
AddButton(Tab3o, {
    Name = "Chọn người chơi mà bạn ko muốn kill",
    Callback = function()
        AddButton(Tab3o, {
    Name = "Chọn người chơi mà bạn ko muốn kill",
    Callback = function()
        -- Tạo một bảng để lưu trữ người chơi không muốn giết
        local playersToAvoid = {}

        -- Hàm để hiển thị danh sách người chơi trong server và cho phép chọn 1 người
        local function showPlayerList()
            local playerNames = {}
            for _, player in ipairs(game.Players:GetPlayers()) do
                table.insert(playerNames, player.Name)
            end
            
            -- Hiển thị danh sách tên người chơi trong một Dropdown (chỉ cho phép chọn 1 người)
            Dropdown = AddDropdown(Tab3o, {
                Name = "Chọn người chơi không muốn giết",
                Options = playerNames,
                MultiSelect = false,  -- Chỉ cho phép chọn 1 người
                Callback = function(selectedPlayer)
                    -- Thêm người chơi vào danh sách tránh
                    if #playersToAvoid == 0 then
                        table.insert(playersToAvoid, selectedPlayer)
                        print(selectedPlayer .. " đã được thêm vào danh sách không giết.")
                    else
                        print("Chỉ có thể chọn một người chơi để không giết.")
                    end
                end
            })
        end

        -- Hàm kiểm tra và tự động giết người chơi
        local function autoKillPlayer()
            for _, player in ipairs(game.Players:GetPlayers()) do
                if not table.find(playersToAvoid, player.Name) then
                    -- Thực hiện hành động giết người chơi này
                    -- Ví dụ: player:TakeDamage(player.Health) -- Hoặc các hành động khác
                    print("Giết " .. player.Name)
                else
                    print(player.Name .. " được bỏ qua.")
                end
            end
        end

        -- Gọi hàm showPlayerList để tạo dropdown và chọn người chơi
        showPlayerList()

        -- Thực hiện auto kill player, bạn có thể gọi hàm này sau một khoảng thời gian hoặc sự kiện nào đó
        -- Ví dụ, mỗi 5 giây kiểm tra và thực hiện tự động
        while wait(5) do
            autoKillPlayer()
        end
    end
})


AddButton(Tab3o, {
    Name = "Auto Finish Train",
    Callback = function()
        -- Add the script or function for Auto Finish Train here
    end
})

AddButton(Tab3o, {
    Name = "Auto Kill Player After Trial",
    Callback = function()
        -- Add the script or function for Auto Kill Player After Trial here
    end
})

-- Remove any redundant or old elements you no longer need.
