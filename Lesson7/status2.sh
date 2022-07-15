#!/bin/bash
PID=`ps -aux | grep "apache2" | grep "root" | awk '{print $2}'`
NAME=`ps -aux | grep "apache2" | grep "root" | awk '{print $11}'`
if [ ! -z $PID ] 
then 
	sudo kill -18 $PID
	for i in {1..30}
       	do 
		echo "process $NAME $PID suspended"
		sleep 5
       	done
else 
	echo "Apache is not running"
fi
