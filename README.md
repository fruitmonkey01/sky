
This is an example for creating stars and planets in the 3D Space sky
<br>
by using Roblox Studio and Lua Script.

<br>

Some references used in the example described in the following:
<br>
1. Reference: 
<br>
https://developer.roblox.com/en-us/api-reference/datatype/CFrame
<br>
https://developer.roblox.com/en-us/articles/Understanding-CFrame
<br>
https://developer.roblox.com/en-us/articles/CFrame-Math-Operations
<br>
https://developer.roblox.com/en-us/api-reference/event/RunService/RenderStepped
<br>
2. Create random positions for stars from Vector3
<br>
Used math.random() API or Random.new():NextInteger(min, max) API
<br>
3. Path for object orbiting the center
<br>
API: CFrame.fromEulerAnglesXYZ ( number rx, number ry, number rz )
<br>
Creates a rotated CFrame using angles (rx, ry, rz) in radians. 
<br>
Rotations are applied in Z, Y, X order.
<br>
CFrame.Angles (number rx, number ry, number rz), which equivalent to fromEulerAnglesXYZ.
<br>

![alt Sky](https://github.com/fruitmonkey01/sky/blob/main/Sky.png)
