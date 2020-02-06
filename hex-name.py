import re
import os
import sys


s = sys.argv[1]
n = len(s)
clean = []
b = ""

		

def main():
	global clean
	global b
	global c
	for i in range(0, n):
		clean = hex(ord(s[i]))[2:4]
		#print(clean,end='')
		print(clean,end='')
		b += clean
	#for i in range(n):
	#	clean = hex(ord(s[i]))[2:4]
	#for i in range(0, n):
		#clean = hex(ord(s[i]))[2:4]
		#print(clean,end='')
		#b = print(clean,end='')
	
	#print(f)
	print("")
	os.system("hexdump -ve \'1/1 \"%.2X\"\' minecraft-pi > mcpi.txt")
	os.system('sed -i ''"s/53746576655069/'+ str(b) +'/g" mcpi.txt')
	os.system("xxd -r -p mcpi.txt > minecraft-pi")
	os.system("chown pi:pi minecraft-pi")
	os.system("chmod a+x minecraft-pi")


main()
'''
os.system("")
os.system("")
os.system("")
os.system("")
hexdump -ve '1/1 "%.2X"' minecraft-pi > mcpi.txt;
sed -i "s/53746576655069/31323334353637/g" mcpi.txt;
xxd -r -p mcpi.txt > minecraft-pi.bin;
cp minecraft-pi.bin minecraft-pi;
chown pi:pi minecraft-pi;
chmod a+x minecraft-pi;
'''
