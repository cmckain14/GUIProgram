function scp(x,y)
	monitor.setCursorPos(x,y)
	end
function watch(c,pos1,pos2)
	if not type(pos1) == "number" or type(pos2) == "number" then
		pos1 = tonumber(pos1)
		pos2 = tonumber(pos2)
		end
	scp(pos1,pos2)
	text = c["text"]
	if text == nil then
		print("You idiot!")
		end
	monitor.write(text)
	local length = string.len(text)
	local l = tonumber(length)
	l = l + pos1
	if c == c1 then 
		c1[1] = pos1 
		c1[2] = l 
		c1["y"] = pos2 
	elseif c == c2 then
		c2[1] = pos1 
		c2[2] = l 
		c2["y"] = pos2 
	elseif c == c3 then
		c3[1] = pos1 
		c3[2] = l 
		c3["y"] = pos2 
	elseif c == c4 then
		c4[1] = pos1 
		c4[2] = l 
		c4["y"] = pos2 
	end
	end
c1 = {}
c2 = {}
c3 = {}
c4 = {}
c1["text"] = "[Clear]"
c2["text"] = "[Exit]"
c3["text"] = "[Open]"
c4["text"] = "[Close]"
cb = peripheral.wrap("top")
monitor = peripheral.wrap("left")
monitor.setTextColor(colors.white)
monitor.clear()
watch(c1,1,1)
watch(c2,13,1)
watch(c3,1,12)
watch(c4,12,12)
x = 3
repeat
	event, side, xPos, yPos = os.pullEvent("monitor_touch")
	print(event .. " => Side: " .. tostring(side) .. ", " ..
	"X: " .. tostring(xPos) .. ", " ..
	"Y: " .. tostring(yPos))
	print(xPos >= c2[1])
	print(xPos <= c2[2])
	print(yPos == c2["y"])
	if xPos >= c2[1] and xPos <= c2[2] and yPos == c2["y"] then
		if x == 2 then
			monitor.setCursorPos(13,1)
			monitor.setTextColor(colors.green)
			monitor.write(c2["text"])
			x = x - 1
			end
		if x == 3 then
			monitor.setCursorPos(13,1)
			monitor.setTextColor(colors.red)
			monitor.write(c2["text"])
			x = x - 1
			end
		end
until x == 1
