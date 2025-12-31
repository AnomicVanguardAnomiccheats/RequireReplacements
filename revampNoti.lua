local v10 = game.Players.LocalPlayer
local v_u_5 = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local v_u_3 = game:GetService("TweenService")
local NotificationText = ReplicatedStorage.NotificationHandler.NotificationText
local NotificationFrame = v10.PlayerGui:WaitForChild("AlwaysActiveHolder").NotificationFrame
function v1.SendNotification(_, p7, p8, p9)
    local v_u_11 = NotificationText:Clone()
    v_u_11.TextColor3 = p9 or v_u_11.TextColor3
    v_u_11.Text = p8
    v_u_11.Parent = NotificationFrame
    task.delay(3, function()
        v_u_3:Create(v_u_11, TweenInfo.new(1), {
            ["TextTransparency"] = 1
        }):Play()
    end)
    v_u_5:AddItem(v_u_11, 4)
end
return v1
