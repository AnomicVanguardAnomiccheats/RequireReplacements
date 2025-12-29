local v10 = game.Players.LocalPlayer
local v_u_5 = game:GetService("Debris")
function v1.SendNotification(_, p7, p8, p9)
    local v_u_11 = script.NotificationText:Clone()
    v_u_11.TextColor3 = p9 or v_u_11.TextColor3
    v_u_11.Text = p8
    v_u_11.Parent = v10.PlayerGui:WaitForChild("AlwaysActiveHolder").NotificationFrame
    task.delay(3, function()
        v_u_3:Create(v_u_11, TweenInfo.new(1), {
            ["TextTransparency"] = 1
        }):Play()
    end)
    v_u_5:AddItem(v_u_11, 4)
end
