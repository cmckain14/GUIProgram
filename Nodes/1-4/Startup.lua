if fs.exists("NodeMain") then
	fs.delete("NodeMain")
	end     
resp = http.get("https://raw.githubusercontent.com/cmckain14/GUIProgram/master/Nodes/1-4/NodeMain.lua")
if resp then
	handler=io.open("NodeMain","w")
	handler:write(resp.readAll())
	handler:close()
else
	error("Unable to get NodeMain.")
	end
shell.run("NodeMain")
	
