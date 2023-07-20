local totalfood = #workspace.Cakes:GetChildren()

local startfatness = game.Players.LocalPlayer.leaderstats.fatness.Value

for i,food in pairs(workspace.Cakes:GetChildren()) do
	if food:IsA("Part") then
		
		pcall(function()
			repeat
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = food.CFrame + Vector3.new(0,2,0)
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
				game.RunService.RenderStepped:Wait()
				until food.Parent ~= workspace.Cakes
				game.RunService.RenderStepped:Wait()
		end)
	end
end

local collectedfood = game.Players.LocalPlayer.leaderstats.fatness.Value - startfatness

print'-----------------------'
print("total food: "..totalfood)
print("collected food: "..collectedfood)
print'-----------------------'