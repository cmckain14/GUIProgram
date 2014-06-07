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
c1["text"] = "[Clear]" --Upper left
c2["text"] = "[Exit]" --Upper right
c3["text"] = "[Open]" --Lower left
c4["text"] = "[Close]" --Lower right
c1x,c1y = 1,1
c2x,c2y = 13,1
c3x,c3y = 1,12
c4x,c4y = 12,12
cb = peripheral.wrap("top")
monitor = peripheral.wrap("left")
monitor.setTextColor(colors.white)
monitor.clear()
watch(c1,c1x,c1y)
watch(c2,c2x,c2y)
watch(c3,c3x,c3y)
watch(c4,c4x,c4y)
x = 3
repeat
	event, side, xPos, yPos = os.pullEvent("monitor_touch")
	print(event .. " => Side: " .. tostring(side) .. ", " ..
	"X: " .. tostring(xPos) .. ", " ..
	"Y: " .. tostring(yPos))
	print(xPos >= c2[1])
	print(xPos <= c2[2])
	print(yPos == c2["y"])
        if xPos >= c1[1] and xPos <= c1[2] and yPos == c1["y"] then
                if x == 2 then
			monitor.setCursorPos(c1x,c2y)
			monitor.setTextColor(colors.green)
			monitor.write(c1["text"])
			x = x - 1
			end
		if x == 3 then
			monitor.setCursorPos(c1x,c2y)
			monitor.setTextColor(colors.red)
			monitor.write(c1["text"])
			x = x - 1
			end
	elseif xPos >= c2[1] and xPos <= c2[2] and yPos == c2["y"] then
		if x == 2 then
			monitor.setCursorPos(c2x,c2y)
			monitor.setTextColor(colors.green)
			monitor.write(c2["text"])
			x = x - 1
			end
		if x == 3 then
			monitor.setCursorPos(c2x,c2y)
			monitor.setTextColor(colors.red)
			monitor.write(c2["text"])
			x = x - 1
			end
        elseif xPos >= c3[1] and xPos <= c3[2] and yPos == c3["y"] then
        elseif xPos >= c4[1] and xPos <= c4[2] and yPos == c4["y"] then
        end
until x == 1
