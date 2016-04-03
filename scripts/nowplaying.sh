#!bin/bash

status=`ncmpcpp --now-playing | grep "Connection refused"`
nowplaying=`ncmpcpp --now-playing | cut -c 7-`
if [ "$status" = "" ]
then
	if [ "$nowplaying" = "" ]
	then
		echo "None ";
	else
		echo "$nowplaying ";
	fi
else
	echo "None ";
fi
