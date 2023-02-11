# Windows-HostPinger
 Ping a list of devices and share the results.
This will handle all possible ping responses preventing false positives.
This looks for "TTL=" to confirm it recieved a response. 
Avoide the ttl expired in transit false positive.

Can be output to a file or to the command line. 
Output to command line is in Pinger1. 

The original example can be found here:
https://stackoverflow.com/questions/51375651/pinging-to-multiple-servers-via-windows-batch-script