local totalfood = #workspace.Cakes:GetChildren()
local skippedfood = 0

local startfatness = game.Players.LocalPlayer.leaderstats.fatness.Value

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
				skippedfood += 1
			else
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = food.CFrame + Vector3.new(0,2,0)
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
				task.wait(.3)
			end
		end)
	end
end

local collectedfood = game.Players.LocalPlayer.leaderstats.fatness.Value - startfatness

print'-----------------------'
print("total food: "..totalfood)
print("collected food: "..collectedfood)
print("skipped food: "..skippedfood)
print'-----------------------'