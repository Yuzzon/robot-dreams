#!/bin/bash
PID=`ps -aux | grep "apache2" | grep "root" | awk '{print $2}'`
NAME=`ps -aux | grep "apache2" | grep "root" | awk '{print $11}'`
if [ ! -z $PID ] 
then 
        sudo kill -15 $PID
	echo “Process $NAME $PID stopped”	
	PID2=`sleep 10s | ps -aux | grep "apache2" | grep "root" | awk '{print $2}' `
	if [ ! -z $PID2 ]
	then	
		sudo kill -9 $PID2
		echo “Process $NAME $PID stopped with second attempt” 	
	else
	       echo "Process is already stopped"		
	fi
else 
	echo "Apache is not running"

fi
