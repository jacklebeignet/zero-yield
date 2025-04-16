-- This file will be injected into Infinite Yield, to add the commands Zero Yield has to offer 

CMDs[#CMDs + 1] = {NAME = 'hideplayers / hplyrs', DESC = 'Hides all charater models'}
CMDs[#CMDs + 1] = {NAME = 'showplayers / splyrs', DESC = 'Shows all charater models'}
CMDs[#CMDs + 1] = {NAME = 'fast', DESC = 'Increases the player\'s movement speed'}
CMDs[#CMDs + 1] = {NAME = 'slow', DESC = 'Decreases the player\'s movement speed'}
CMDs[#CMDs + 1] = {NAME = 'time', DESC = 'Sets the in-game time'}
CMDs[#CMDs + 1] = {NAME = 'day', DESC = 'Sets the in-game time to daytime'}
CMDs[#CMDs + 1] = {NAME = 'night', DESC = 'Sets the in-game time to nighttime'}

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

local defaultSpeed = 16

addcmd("fast", {}, function(args, speaker)
    local currentSpeed = player.Character.Humanoid.WalkSpeed
    local players = game:GetService("Players")
    local player = players.LocalPlayer or players.PlayerAdded:Wait()
    player.Character.Humanoid.WalkSpeed = currentSpeed + 1
end)

addcmd("slow", {}, function(args, speaker)
    local currentSpeed = player.Character.Humanoid.WalkSpeed    
    local players = game:GetService("Players")
    local player = players.LocalPlayer or players.PlayerAdded:Wait()
    if currentSpeed > 1 then
        player.Character.Humanoid.WalkSpeed = currentSpeed - 1
    end
end)

addcmd("time", {}, function(args, speaker)
    local time = tonumber(args[1])
    if time then
        game:GetService("Lighting").ClockTime = time
    end
end)

addcmd("day", {}, function(args, speaker)
    game:GetService("Lighting").ClockTime = 12
end)

addcmd("night", {}, function(args, speaker)
    game:GetService("Lighting").ClockTime = 0
end)
