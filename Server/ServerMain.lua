function scp(x,y)
   monitor.setCursorPos(x,y)
end
function tn(q)
   local q = tonumber(q)
end
function errormessage(text)
   term.setTextcolor(red)
   print(text)
   term.setTextcolor(white)
end
function printerror(code,response,line)
   if code == 0 then --watchnumber()
      errormessage("Error: Non-number type detected!")
   elseif code == 1 then --wtm()
      errormessage("Error: One of the slots is blank.")
   end
   if response == 0 then
      error("Fatal error on line "..line..".")
   elseif response == 1 then
      print("Non-fatal error on line "..line..".")
   end
end
function watchnumber(w,l)
   local tw = type(w)
   if not tw == "number" then
		local s,r = pcall(tn(w))
		if not s then
			print(r) --Not needed
			printerror(0,0,1)
			end
		end	
end
function wtm(c,pos1,pos2)
   if trt == nil then
      trt = 0
   end
   if not type(pos1) == "number" or type(pos2) == "number" then
      pos1 = tonumber(pos1)
      pos2 = tonumber(pos2)
   end
   scp(pos1,pos2)
   text = c["text"]
   if text == nil then
      if trt == 0 then
         printerror(1,1,33)
         trt = trt + 1
      elseif trt == 1 then
         printerror(1,0,33)
         trt = nil
      end
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
function s2cb()
	if xPos >= c3[1] and xPos <= c3[2] and yPos == c3["y"] and ooooo == nil then --Back
		screen = 1
		print("Screen 1!")
		done = true
	end
end	
function checks2cb()
	repeat
		if done == true then
			imdone = true
			end
	until imdone == true
end
function ping(i,timeout)
	rednet.open(rnside)
	local function gg()
		id,message = rednet.receive(timeout)
		end
    if not i == nil then
        rednet.send(i,m1)
        parallel.waitForAny( gg, checks2cb )
        if id == nil or message == nil then
          status[i] = "Timed out."
        elseif id == i and message == r1 then
          status[i] = "Connected."
        end
   end
end
function writing()
	wtm(c1,c1x,c1y)
	wtm(c2,c2x,c2y)
	wtm(c3,c3x,c3y)
	wtm(c4,c4x,c4y)
end
function massping()
	ping(cc[1],15)
	ping(cc[2],15)
	ping(cc[3],15)
	ping(cc[3],15)
end
function clearline(xx,yy)
	scp(xx,yy)
	monitor.write("                       ")
end
function main()
	repeat 
		event, side, xPos, yPos = os.pullEventRaw()
		if event == "terminate" then
			monitor.clear()
			monitor.setCursorPos(1,1)
			sleep(2)
			monitor.setBackgroundColor(black)
			running = false
		elseif event == "monitor_touch" then
			print(event .. " => Side: " .. tostring(side) .. ", " ..
			"X: " .. tostring(xPos) .. ", " ..
			"Y: " .. tostring(yPos))
			if screen == 1 then
				ooooo = nil
				if xPos >= c1[1] and xPos <= c1[2] and yPos == c1["y"] then --Reset
					monitor.clear()
					writing()
					end
				if xPos >= c2[1] and xPos <= c2[2] and yPos == c2["y"] then --Light,2=On,3=Off
					print(c2["xx"])
					if c2["xx"] == "On" then
						print("Off.")
						monitor.setCursorPos(c2x,c2y)
						monitor.setTextColor(red)
						monitor.write(c2["text"])
						redstone.setOutput(lightside,false)
						--watchnumber(c2["xx"],77)
						c2["xx"] = "Off"
						n = 0
						end
					if c2["xx"] == "Off" and n == nil then
						print("On.")
						monitor.setCursorPos(c2x,c2y)
						monitor.setTextColor(green)
						monitor.write(c2["text"])
						redstone.setOutput(lightside,true)
						--watchnumber(c2["xx"],77)
						c2["xx"] = "On"
						end
					n = nil	
					end
				if xPos >= c3[1] and xPos <= c3[2] and yPos == c3["y"] then --Nodes
					screen = 2
					print("Screen 2!")
					monitor.clear()
					ooooo = 2
					end
				if xPos >= c4[1] and xPos <= c4[2] and yPos == c4["y"] then --Exit
					monitor.clear()
					os.reboot()
					end
				end
			if screen == 2 then
				monitor.setTextColor(white)
				monitor.clear()
				monitor.setCursorPos(1,1) 
				monitor.write("Nodes:")
				monitor.setCursorPos(1,2)
				monitor.write("1: "..status[1])
				monitor.setCursorPos(1,5)
				monitor.write("2: "..status[2])
				monitor.setCursorPos(1,8)
				monitor.write("3: "..status[3])
				monitor.setCursorPos(1,11)
				monitor.write("4: "..status[4])
				monitor.setCursorPos(1,12)
				monitor.write("[Back]") --Location of "[Nodes]"
				if xPos >= c3[1] and xPos <= c3[2] and yPos == c3["y"] and ooooo == nil then
					screen = 1
					print("Screen 1!")
					monitor.clear()
					end
				ooooo = nil	
				end
			monitor.setTextColor(white)
			end
	until x == 1 or running == false
end
function t()
	local running = true
	while running do
		local event = os.pullEventRaw () 
		if event == "terminate" then 
			monitor.clear()
			monitor.setCursorPos(1,1)
			monitor.write("You terminated the program, good bye!")
			running = false
		end
	end
end
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
if not term.isColor() then
	white = colors.white
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
lightside = "top"
rnside = "right"
m1 = 1 --Server->Client
r1 = 1.1--Client->Server
c1 = {}
c2 = {}
c3 = {}
c4 = {}
c1["text"] = "[Reset]" --Upper left
c2["text"] = "[Light]" --Upper right
c3["text"] = "[Nodes]" --Lower left
c4["text"] = "[Reboot]" --Lower right
c1x,c1y = 1,1
c2x,c2y = 12,1
c3x,c3y = 1,12 
c4x,c4y = 11,12
f = "Pinging..."
status = {}
status[1] = f
status[2] = f
status[3] = f
status[4] = f
cc = {} --Node ids
cc[1] = 1
cc[2] = 2
cc[3] = 3
cc[4] = 4
monitor = peripheral.wrap("left")
monitor.setTextColor(white)
monitor.clear()
writing()
c1["xx"] = 3
watchnumber(c1["xx"],75)
c2["xx"] = "Off"
--watchnumber(c2["xx"],77)
c3["xx"] = 3
watchnumber(c3["xx"],79)
c4["xx"] = 3
watchnumber(c4["xx"],81)
screen = 1
monitor.setBackgroundColor(colors.red)
main()
