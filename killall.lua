for i,v in pairs(game.Players:GetChildren()) do
	if v.leaderstats.fatness.Value <= game.Players.LocalPlayer.leaderstats.fatness.Value - 5 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
		wait(.1)
	end
end