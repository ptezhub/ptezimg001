dim wsa
set wsa=createobject("wscript.shell")
wsa.run "cmd /c netsh interface ipv4 set address name=""以太网"" static 192.168.21.254 255.255.255.0 192.168.21.1",0
MsgBox "关闭",,"不是干的"
wsa.run "cmd /c netsh interface ipv4 set address name=""以太网"" static 192.168.21.4 255.255.255.0 192.168.21.1",0