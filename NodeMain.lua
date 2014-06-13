function intro()
	clear()
	textutils.slowPrint("Booting up "..name)
	x,y = term.getCursorPos()
	for i=1,5 do
		term.setCursorPos(x,y)
		write("    ")
		term.setCursorPos(x,y)
		textutils.slowPrint("...")
              end --Spaced
end
function send(m)
	rednet.send(0,m)
	end
while true do
	id,message = rednet.receive()
	sleep(.1)
	if id == 0 and message ~= nil then
		if message == "1st place Packet!" then
			send("Good job!")
		elseif message == "Are you still there?" then
			send("Yep!")
		elseif message == "Reboot." then
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
			
