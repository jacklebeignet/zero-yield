-- This file will be injected into Infinite Yield, to add the commands Zero Yield has to offer 

CMDs[#CMDs + 1] = {NAME = 'hideplayers / hplyrs', DESC = 'Hides all charater models'}
CMDs[#CMDs + 1] = {NAME = 'showplayers / splyrs', DESC = 'Shows all charater models'}

addcmd("hideplayers", {"hplyrs"}, function(args, speaker)
	local players = game:GetService("Players")
	local player = players.LocalPlayer or players.PlayerAdded:Wait()

	for i, plr in pairs(players:GetPlayers()) do
		if plr.Name ~= speaker.Name then
			local char = plr.Character
			for i, child in pairs(char:GetChildren()) do
				if child:IsA("Part") or child:IsA("MeshPart") then
					child.Transparency = 1
				elseif child:IsA("Accessory") then
					child:FindFirstChild("Handle").Transparency = 1
				end
			end
		end
	end
end)

addcmd("showplayers", {"splyrs"}, function(args, speaker)
	local players = game:GetService("Players")
	local player = players.LocalPlayer or players.PlayerAdded:Wait()

	for _, plr in pairs(players:GetPlayers()) do
		if plr.Name ~= speaker.Name then
			local char = plr.Character
			if char then
				for _, child in pairs(char:GetChildren()) do
					if child:IsA("Part") or child:IsA("MeshPart") then
						child.Transparency = 0
					elseif child:IsA("Accessory") then
						local handle = child:FindFirstChild("Handle")
						if handle then
							handle.Transparency = 0
						end
					end
				end
			end
		end
	end
end)
