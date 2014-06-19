function setblock(x,y,z,h)
	repeat
		y = y + 1
		if gateopen == true then
			cb.setCommand("setblock -"..x.. " "..y.." "..z.." minecraft:fence")
		elseif gateopen == false then
			cb.setCommand("setblock -"..x.. " "..y.." "..z.." minecraft:air")
			end
		cb.runCommand()
	until y == h
end
--input = io.read()
--item = input
cb = peripheral.wrap("bottom")
mon = peripheral.wrap("top")
gateopen = false
mon.setTextColor(colors.black)
if gateopen == true then
	mon.setBackgroundColor(colors.green)
	mon.setCursorPos(1,1)
	mon.write("[O]")
elseif gateopen == false then
	mon.setBackgroundColor(colors.red)
	mon.setCursorPos(1,1)
	mon.write("[X]")
	end
mon.clear()
while true do
	event, side, xPos, yPos = os.pullEvent("monitor_touch")
	setblock(77,80,302,84)
	setblock(77,80,301,87)
	setblock(76,80,301,88)
	setblock(76,80,300,89)
	setblock(75,80,300,89)
	setblock(75,80,299,90)
	setblock(74,80,299,89)
	setblock(74,80,298,90)
	setblock(73,80,298,89)
	setblock(73,80,297,89)
	setblock(72,80,297,88)
	setblock(72,80,296,87)
	setblock(71,80,296,84)
	g = 0
	if gateopen == true then
		mon.setBackgroundColor(colors.red)
		gateopen = false
		g = 1 
	elseif gateopen == false and g == 0 then
		mon.setBackgroundColor(colors.green)
		gateopen = true
	end
	mon.clear()
end
