import serial, os, string, math, httplib, urllib

# convert from degree+minutes to decimal degrees (see http://hamlib.sourceforge.net/manuals/1.2.2/html/API-reference/locator_8c.html)
def dmmm2dec(degrees,sw):
    deg= math.floor(degrees/100.0) #decimal degrees
    frac= ((degrees/100.0)-deg)/0.6 #decimal fraction
    ret = deg+frac #positive return value
    if ((sw=="S") or (sw=="W")):
        ret=ret*(-1) #flip sign if south or west
    return ret

def sendPOST(lat,long,alt):
    params = urllib.urlencode({'lat': lat, 'lng': long, 'alt': alt})
    f=urllib.urlopen("http://yahacom.ho.ua/POSTLocation.php",params)
    print f.read()


# open a connection to NMEA-compatible GPS device at 4800bps8N1 (in this case COM2)
ser = serial.Serial(port='COM3',baudrate=4800,bytesize=8, parity='N', stopbits=1,timeout=3)
while 1:
    # read lines until we find one with the GPS position in it
    line = ""
    while not(line.startswith("$GPGGA")):
        line= ser.readline()
    

    # calculate our lat+long
    tokens = line.split(",")

    if tokens[2] != "":
        lat = dmmm2dec(float(tokens[2]),tokens[3]) #[2] is lat in deg+minutes, [3] is {N|S|W|E}
        lng = dmmm2dec(float(tokens[4]),tokens[5]) #[4] is long in deg+minutes, [5] is {N|S|W|E}
        print(lat)
        print(lng)
        print(tokens[9])
        sendPOST(lat,lng,tokens[9])
    else:
        print("Not")
ser.close()
