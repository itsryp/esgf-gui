spawn(function()
    while wait() do
        for i,food in pairs(workspace.Cakes:GetChildren()) do
            if food:IsA("Part") then
                
                pcall(function()
                    local function checkforplr()
                        for i,plr in pairs(game.Players:GetChildren()) do
                            if plr.leaderstats.fatness.Value > game.Players.LocalPlayer.leaderstats.fatness.Value then
                                if (food.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                    return true
                                end
                            end
                        end
                    end
                    
                    if checkforplr() == true then
                        --skip
                    else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = food.CFrame + Vector3.new(0,2,0)
                        game.Players.LocalPlayer.Character.Humanoid.Jump = true
                        task.wait(.1)
                    end
                end)
            end
        end
    end
end)


spawn(function()
    while wait() do
        for i,v in pairs(game.Players:GetChildren()) do
            if v.leaderstats.fatness.Value <= game.Players.LocalPlayer.leaderstats.fatness.Value - 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                wait(.1)
            end
        end
    end
end)
