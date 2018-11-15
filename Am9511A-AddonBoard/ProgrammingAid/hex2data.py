#!python3
""" Export data from Intel HEX to BASIC (CSV starting with line number and 'DATA' statement) """
import sys
import argparse
parser = argparse.ArgumentParser()

if sys.stdin.isatty():
    parser.add_argument("fname", help="file in intel hex format", type=str)
parser.add_argument("-n","--num",help="first line number",type=int)
parser.add_argument("-i","--inc",help="line number increment",type=int)
args=parser.parse_args()

if args.num == None:
    lnum = 1000         #Set defalut line number
else:
    lnum = args.num
if args.inc == None:
    inc = 10            #Set default line number increment
else:
    inc = args.inc

hex_file = open(args.fname, "r")
for str in hex_file:            #Read the file in Intel HEX format line by line
    cnt = int(str[1:3],16)      #Get the byte count (2 hex digits indicating the number of bytes in the data field)
    str = str[9:-2]             #Skip start code, byte count and address and get the whole data field
    idx = 0                     #Character position pointer (in str)
    s = ''                      #Prepare an empty scratchpad
    for n in range(cnt):        #n-th byte
        s=s+str[idx:idx+2]+','  #Add 1 byte (2 hex digits) and ',' to the scratchpad
        idx += 2                #Advance the character position pointer 2 characters (i.e. 1 byte) forward
        if n % 8 == 7:          #8 bytes per 1 BASIC-line containng one DATA statement
                s = s[:-1]      #Remove the last (unnecessary) ',' from the scratchpad
                print(lnum, 'DATA ' + s)    #Compose one BASIC-line starting with line number and DATA statement
                lnum += inc     #Increse the line number by inc
                s = ''          #Empty the scratchpad for next BASIC-line

    s = s[:-1]                  #Less than 8 bytes remaining
    if s != '':
        print(lnum,'DATA ' + s)
        lnum += inc
        s = ''

hex_file.close()
