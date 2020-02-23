#!/bin/sh

#author: github.com/xniclaserdx

while [ true ] # while running the device will do following tasks in interval

do

 tempok=30 # variable, used to compare moment temp with set temp  
 templog="/direction/templog.txt" # place a direction to paste a log in

 d=`date +%Y-%m-%d-%H-%M-%S` #log 
 
 tempx=`echo "scale=0; $(grep 't=' /sys/bus/w1/devices/w1_bus_master1/yourid/w1_slave | awk -F't=' '{print $2}')/1000" | bc -l` # formula will convert the input of the sensors into metric Celsius; place id of your sensor in it
 
 echo $d ----------    $tempx C° # will output time and converted temp
 echo $d ----------    $tempx C° >> $templog # will log the time and converted temp

 if [ $tempx -ge $tempok ] # comparison for possible action that will be done in the designated interval
  then
	
 fi
 
 sleep 60 # change this for editing the interval period
 
 done
