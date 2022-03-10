-- Reference: 
-- https://developer.roblox.com/en-us/api-reference/datatype/CFrame
-- https://developer.roblox.com/en-us/articles/Understanding-CFrame
-- https://developer.roblox.com/en-us/articles/CFrame-Math-Operations
-- https://developer.roblox.com/en-us/api-reference/event/RunService/RenderStepped

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local planet_min_pos = 10
local planet_max_pos = 15

-- create random position from Vector3
-- by using math.random() API
-- Other method: Random.new():NextInteger(min, max) API
local function GetPosition(min, max)

	local x = math.random(min, max)
	local y = math.random(min, max)
	local z = math.random(min, max)

	return Vector3.new(x,y,z)
end

-- Create Center Part
local Center = Instance.new("Part")
Center.Parent = game.Workspace
Center.Name = "Center"
Center.Position = GetPosition(planet_min_pos, planet_max_pos)
Center.Shape = "Ball"
Center.Material = Enum.Material.Neon
Center.Size = Vector3.new(5, 5, 5)
Center.Color = Color3.new(1, 1, 0.4) -- Banana
Center.Anchored = true
Center.CanCollide = false

print("Center.Position: " .. tostring(Center.Position))

-- Create Object Part
local ObjPart = Instance.new("Part")
ObjPart.Parent = game.Workspace
ObjPart.Name = "ObjPart"
ObjPart.Size = Vector3.new(3, 3, 3)
ObjPart.Color = Color3.new(0.501961, 0.25095, 0.0100404) -- Moca
ObjPart.Shape = "Ball"
ObjPart.CanCollide = false

-- Orbit settings
local obj = game.Workspace.ObjPart
local center = game.Workspace.Center
local speed = 0.05
local radius = 10 -- number of studs
local i = 0
local angle = math.rad(0)

-- Path for object orbiting the center
-- API: CFrame.fromEulerAnglesXYZ ( number rx, number ry, number rz )
-- Creates a rotated CFrame using angles (rx, ry, rz) in radians. 
-- Rotations are applied in Z, Y, X order.
-- CFrame.Angles ( number rx, number ry, number rz )
-- Equivalent to fromEulerAnglesXYZ.
RunService.RenderStepped:Connect(function()
	i = i + 1
	obj.CFrame = center.CFrame * CFrame.Angles(angle, i * speed, 0) * CFrame.new(0, 0, radius)
	-- print("i: " .. tostring(i) .. ", obj.Position: " .. tostring(obj.Position))
end)

local start_min_bound = 6
local start_maz_bound = 100
local number_of_stars = 100

local function CreateStars()
	for count = 1, number_of_stars, 1 do
		local star = Instance.new("Part")
		star.Parent = game.Workspace
		star.Name = "Star" .. count
		star.Position = GetPosition(start_min_bound, start_maz_bound)
		star.Material = Enum.Material.Neon
		star.Size = Vector3.new(2, 2, 2)
		star.Color = Color3.new(1, 1, 1) -- white color
		star.Shape = "Ball"
		star.Anchored = true
		star.CanCollide = false
		print("Star " .. tostring(count) .. " at Position: " .. tostring(star.Position))
		wait(0.5)
	end
end


CreateStars()





