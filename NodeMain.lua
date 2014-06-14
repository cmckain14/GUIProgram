 -- Functions
function Set (list)
	local set = {}
	for _, l in ipairs(list) do set[l] = true end
	return set
end
function color(color) --After each use, please use 'color(white)' to reset color
	local items = Set { "white", "black", "lgray", "gray", "brown", "yellow", "orange", "red", "magenta", "purple", "blue", "lblue", "cyan", "lime", "green" }
	if items[color] then
		term.setTextColor(color)
		return true
	elseif not items[color] then
		return false
		end
end
function intro1()
	term.clear()
	term.setCursorPos(1,1)
	introduction = string.format("%s %q", "Booting up", name)
	lll = string.len(introduction)
	textutils.slowPrint(introduction)
	local l = lll + 1
	x,y = l,1
	for i=1,15 do
		term.setCursorPos(x,y)
		write("    ")
		term.setCursorPos(x,y)
		if i < 14 then
			textutils.slowPrint("....")
		elseif i >= 14 then
			textutils.slowPrint("...")
			end
		end
	booting = {}
	booting[1] = false
	booting[2] = false
	booting[3] = false
end
function intro2()
	term.clear()
	term.setCursorPos(1,1)
	intro2 = false
	e = 1
	repeat
		if e <= 9 then
			term.setCursorPos(51,1)
		elseif e >= 10 and e <= 99 then
			term.setCursorPos(50,1)
		elseif e == 100 then
			e = 1
			end
		print(e)
		e = e + 1
		b1 = tostring(booting[1])
		if b1 == "true" then
			b1 = "true "
			end
		b2 = tostring(booting[2])
		if b2 == "true" then
			b2 = "true "
			end
		b3 = tostring(booting[3])
		if b3 == "true" then
			b3 = "true "
			end
		term.setCursorPos(1,1)
		print("First Message: "..b1)
		print("Response Sent: "..b2)
		print("Directions Received: "..b3)
		sleep(1)
		if intro22 == true then
			intro2 = true
			end
		if booting[1] == true and booting[2] == true and booting[3] == true then
			intro22 = true
			end
	until intro2 == true
end
function startuping()
	rednet.open(rnside)
	needmessage = true
	while needmessage do
		id,message = rednet.receive()
		sleep(.1)
		if id == 0 and message ~= nil then
			if message == m1 then
				booting[1] = true
				sleep(.5)
				send(r1)
				booting[2] = true
			--elseif message == direction then
				--send("Okay.")
				sleep(.2)
				booting[3] = true
				needmessage = false
				end
			end
		end	
end
function send(m)
	rednet.send(serverid,m)
	end
 -- Terminal Colors
colors = {}
if term.isColor() then
	colors["white"] = colors.white
	colors["black"] = colors.black
	colors["lgray"] = colors.lightGray
	colors["gray"] = colors.gray
	colors["brown"] = colors.brown
	colors["yellow"] = colors.yellow
	colors["orange"] = colors.orange
	colors["red"] = colors.red
	colors["magenta"] = colors.magenta
	colors["purple"] = colors.purple
	colors["blue"] = colors.blue
	colors["lblue"] = colors.lightBlue
	colors["cyan"] = colors.cyan
	colors["lime"] = colors.lime
	colors["green"] = colors.green
end
if not term.isColor() then
	colors["lgray"] = colors.white
	colors["gray"] = colors.black
	colors["brown"] = colors.white
	colors["yellow"] = colors.white
	colors["orange"] = colors.white
	colors["red"] = colors.white
	colors["magenta"] = colors.white
	colors["purple"] = colors.white
	colors["green"] = colors.white
	colors["blue"] = colors.black
	colors["lblue"] = colors.white
	colors["cyan"] = colors.white
	colors["lime"] = colors.white
	colors["green"] = colors.white
end
 -- Config
name = os.getComputerLabel()
rnside = "right"
m1 = 1 --Server->Client
r1 = 1.1--Client->Server
serverid = 0
 -- Intro Code
m1 = tostring(m1)
r1 = tostring(r1)
intro1()
parallel.waitForAll( intro2, startuping )
 -- Receive Commands
while true do
	id,message = rednet.receive()
	sleep(.1)
	if id == 0 and message ~= nil then
		if message == "Are you still there?" then
			send("Yep!")
			end
		if message == "Reboot." then
			send("Ok.")
			reboot = true
		   	return false
		else 
			send("Sorry, didn't catch that.")
			end
		end
	end
if reboot == true then
	os.reboot()
	end
			
