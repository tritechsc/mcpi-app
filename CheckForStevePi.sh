#!/bin/bash
# This simple command checks if minecraft-pi includes the string "StevePi"
# This string will eventually be changed using bash.
# Please do not change code in this folder.
# Copy mcpi-app to something like mcpi-myapp
# cp -fR mcpi-app mcpi-myapp
# Then modify mcpi-myapp
#
# Run this script in bash
strings minecraft-pi | grep StevePi
#
# Now print a message
# Notice the space between [[ "$n" == "$spi" ]]
#name="$(strings minecraft-pi \| grep StevePi)"
n=$(strings minecraft-pi | grep StevePi)
spi="StevePi"
#echo $n $spi
if [[ "$n" == "$spi" ]];then
		echo "StevePi is the name of this minecraft-pi"
fi


