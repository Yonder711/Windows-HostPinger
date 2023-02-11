@Echo Off

Set "ServerList=ips.txt"

If Not Exist "%ServerList%" Exit /B
For /F UseBackQ %%A In ("%ServerList%") Do Ping -n 1 %%A|Find "TTL=">Nul&&(Echo Yes [%%A])||Echo No [%%A]
pause