import sys
import socket
from datetime import datetime

#define our target
if len(sys.argv) == 2:
    target = socket.gethostbyname(sys.argv[1]) #translate hostname to ip
else: 
    print("Invalid amount of arguments")
    print("Syntax: ipscanner.py <ip>")

#add a banner
print("-" * 50)
print("Scanning target "+target)
print("Time started: "+str(datetime.now()))
print("-" * 50)

try: 
    for port in range(50,85):
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        socket.setdefaulttimeout(1)
        result = s.connect_ex((target,port)) #returns an error indicator
        if result == 0:
            print ("Port {} is open".format(port))
        s.close()

except KeyboardInterrupt:
    print("Exiting program.")
    sys.exit()
except socket.gaierror:
    print("Hostname could not be resolved.")
    sys.exit()
except socket.error:
    print("Couldn’t connect to server.")
    sys.exit()
