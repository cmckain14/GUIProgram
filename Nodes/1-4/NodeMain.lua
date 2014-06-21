 -- Functions
function getGUI(name,pastebin)
	local file = io.open(name, "r")      
	if file == nil then
		resp = http.get("http://pastebin.com/raw.php?i="..pastebin)
		if resp then
			handler=io.open(name,"w")
			handler:write(resp.readAll())
			handler:close()
			os.loadAPI(name)
		else
			error("Unable to get GUI.")
			end
		end
	if file ~= nil then
		os.loadAPI(name)
		end
end
function Set(list)
	local set = {}
	for _, l in ipairs(list) do set[l] = true end
	return set
end
function color(color) --After each use, please use 'color(white)' to reset color.
	local items = Set { "white", "black", "lgray", "gray", "brown", "yellow", "orange", "red", "magenta", "purple", "blue", "lblue", "cyan", "lime", "green" }
	if items[color] then
		term.setTextColor(color)
		return true
	elseif not items[color] then
		return false
		end
end
function isOdd(n)
	if (n % 2 == 0) then
		return false
	else
		return true
		end
end
function barfor1v2()
	local percent = math.random(1,5)
	repeat 
		bar:update(percent)
		if percent <= 25 and percent >= 0 then
			change = math.random(1,49)
		elseif percent <= 50 and percent >= 25 then
			change = math.random(1,39)
		elseif percent <= 75 and percent >= 50 then
			change = math.random(1,24)
		elseif percent < 100 and percent >= 75 then
			change = math.random(1,14)
			end
		percent = percent + change
		local s = math.random(1,5)
		if e == 1 then
			e = e + 1
			s = 1
			end
		if percent >= 100 and e == 0 then
			percent = 100
			e = 1
			end
		sleep(s)
	until e == 2
end
function termsignal()
	tsactive = true
	while tsactive do 
		local event, scancode = os.pullEvent("key")
		if scancode == 28 then
			tsactive = false
			end
		end
end
function createintro2tables()
	i2first = {}
	i2second = {}
	i2third = {}
	i2first["bcolor"] = gray
	i2second["bcolor"] = gray
	i2third["bcolor"] = gray
end
function printstatus(lx,ly,f,s) --Do not add spaces.
	term.setBackgroundColor(black)
	term.setTextColor(white)
	term.setCursorPos(lx,ly)
	term.setTextColor(lgray)
	print(f)
	term.setTextColor(white)
	write(" "..s)
end
function intro1v1()
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
function intro1v2()
	term.clear()
	bar = gui.createBar("intro")
	t = 25
	local w,h = term.getSize()
	if isOdd(w) then
		w = w + 1
		end
	local w = math.floor(w / 2 * .5)
	local h = math.floor(h / 2 + .5)
	--t = tonumber(t)
	bar:draw(w,h,t,white,green,true,black,white)
	term.setCursorPos(1,1)
	e = 0
	sleep(2)
	parallel.waitForAny( barfor1v2, termsignal )
	percent = nil
	change = nil
	booting = {}
	booting[1] = false
	booting[2] = false
	booting[3] = false
end
function intro2()
	term.clear()
	term.setCursorPos(1,1)
	local Header = window.create(term.current(),1,1,51,3)
	Header.setBackgroundColor(green)
	Header.clear()
	local t,a = 51,3
	local t2,a2 = 1,2
	local text = string.format("%s %s", name, "Client: Intro Screen") 
	Header.setCursorPos(math.ceil((t / 2) - (text:len() / 2)), a2)
	Header.write(text)
	term.setBackgroundColor(black)
	intro2 = false
	e = 1
	createintro2tables()
	local First = window.create(term.current(),1,5,23,1)
	First.setBackgroundColor(i2first["bcolor"])
	First.clear()
	local Second = window.create(term.current(),1,7,23,1)
	Second.setBackgroundColor(i2second["bcolor"])
	Second.clear()
	local Third = window.create(term.current(),1,9,23,1)
	Third.setBackgroundColor(i2third["bcolor"])
	Third.clear()
	First.write("First Message:")
	fx,fy = First.getCursorPos()
	Second.write("Response Sent:")
	sx,sy = Second.getCursorPos()
	Third.write("Instructions:")
	tx,ty = Third.getCursorPos()
	repeat
		if e <= 9 then
			Header.setCursorPos(51,1)
		elseif e >= 10 and e <= 99 then
			Header.setCursorPos(50,1)
		elseif e == 100 then
			e = 1
			end
		Header.write(e)
		e = e + 1
		b1 = tostring(booting[1])
		if b1 == "true" then
			b1 = "     true"
			b1c = green
		elseif b1 == "false" then
			b1 = "    false"
			b1c = red
			end
		b2 = tostring(booting[2])
		if b2 == "true" then
			b2 = "     true"
			b2c = green
		elseif b2 == "false" then
			b2 = "    false"
			b2c = red
			end
		b3 = tostring(booting[3])
		if b3 == "true" then
			b3 = "      true"
			b3c = green
		elseif b3 == "false" then
			b3 = "     false"
			b3c = red
			end
		term.setCursorPos(1,5)
		term.setBackgroundColor(colors.black)
		First.setCursorPos(fx,fy)
		First.setTextColor(b1c)
		First.write(b1)
		Second.setCursorPos(sx,sy)
		Second.setTextColor(b2c)
		Second.write(b2)
		Third.setCursorPos(tx,ty)
		Third.setTextColor(b3c)
		Third.write(b3)
		sleep(1)
		if intro22 == true then
			intro2 = true
			end
		if booting[1] == true and booting[2] == true and booting[3] == true then
			intro22 = true
			end
	until intro2 == true
end
function clientscreen()
	screen = 1
	term.clear()
	term.setCursorPos(1,1)
	Header = nil
	shell.run('clear')
	local Header2 = window.create(term.current(),1,1,51,3)
	Header2.setBackgroundColor(green)
	Header2.clear()
	local t,a = 51,3
	local t2,a2 = 1,2
	active = true
	Header2.clear()
	local text = "Fort Client: Status Page"
	Header2.setCursorPos(math.ceil((t / 2) - (text:len() / 2)), a2)
	Header2.setTextColor(white)
	Header2.write(text)
	if screen == 1 then	
		printstatus(1,5,"Name:",name)
		printstatus(1,7,"ID:",id)
	end
end
function startuping()
	sleep(3)
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
if term.isColor() then
	white = colors.white
	black = colors.black
	lgray = colors.lightGray
	gray = colors.gray
	brown = colors.brown
	yellow = colors.yellow
	orange = colors.orange
	red = colors.red
	magenta = colors.magenta
	purple = colors.purple
	blue = colors.blue
	lblue = colors.lightBlue
	cyan = colors.cyan
	lime = colors.lime
	green = colors.green
end
if not term.isColor() then
	lgray = colors.white
	gray = colors.black
	brown = colors.white
	yellow = colors.white
	orange = colors.white
	red = colors.white
	magenta = colors.white
	purple = colors.white
	green = colors.white
	blue = colors.black
	lblue = colors.white
	cyan = colors.white
	lime = colors.white
	green = colors.white
end
 -- Config
name = os.getComputerLabel()
id = os.getComputerID()
rnside = "right"
m1 = 1 --Server->Client
r1 = 1.1--Client->Server
serverid = 0
 -- Intro Code
gg = getGUI("gui","qz7KGw3R")
m1 = tostring(m1)
r1 = tostring(r1)
intro1v2()
parallel.waitForAll( intro2, startuping )
clientscreen()
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