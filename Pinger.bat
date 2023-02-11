@Echo Off

Set "ServerList=ips.txt"
Set "LogFile=PingResults.txt"

If Not Exist "%ServerList%" Exit /B
>"%LogFile%" (For /F UseBackQ %%A In ("%ServerList%"
) Do Ping -n 1 %%A|Find "TTL=">Nul&&(Echo Yes [%%A])||Echo No [%%A])