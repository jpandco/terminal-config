#!/bin/sh 

# Look for active procesess and return the pid's
run=`ps ax | grep httpd | grep -v grep | cut -c1-5 | paste -s -` 

if [ "$run" ]; 
then 
  echo "Apache is running" 
else 
  echo "Apache is not running"
fi