dim wsa
set wsa=createobject("wscript.shell")
wsa.run "cmd /c netsh interface ipv4 set address name=""��̫��"" static 192.168.21.254 255.255.255.0 192.168.21.1",0
MsgBox "�ر�",,"���Ǹɵ�"
wsa.run "cmd /c netsh interface ipv4 set address name=""��̫��"" static 192.168.21.4 255.255.255.0 192.168.21.1",0