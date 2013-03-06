os.setComputerLabel()
term.clear()
term.setCursorPos(1,1)
if fs.exists("/config") then fs.delete("/config") end
h = fs.open("config","w")
print("Rednet modem is on what side?")
term.setCursorPos(1,2)
h.write("modem = "..read())
h.close()

if fs.exists("/conServer2") then fs.delete("/conServer2") end
if fs.exists("/startup") then fs.delete("/startup") end
if fs.exists("/turtleFunctions") then fs.delete("/turtleFunctions") end

shell.run("cp","/disk/conServer2","conServer2")
shell.run("cp","/disk/startup2","startup")
shell.run("cp","/disk/turtleFunctions","turtleFunctions")
shell.run("reboot")