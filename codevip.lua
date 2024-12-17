-- Script đặt trong `ServerScriptService`
local Players = game:GetService("Players")

-- Hàm kick player với lý do cụ thể
local function kickPlayer(player)
    local reason = "Bạn đã bị kick khỏi game vì vi phạm nội quy." -- Lý do bị kick
    player:Kick(reason)
end

-- Gắn sự kiện khi người chơi vào game
Players.PlayerAdded:Connect(function(player)
    -- Kiểm tra điều kiện và kick
    if player.Name == "PlayerNameViPham" then -- Thay bằng tên cụ thể hoặc điều kiện khác
        kickPlayer(player)
    end
end)
