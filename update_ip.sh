#! /bin/bash
BASE=/home/pi/report
# echo `ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'` > $BASE/current_addr
# echo `ifconfig wlan0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'` >> $BASE/current_addr
hostname -I > $BASE/current_addr
cd $BASE
git pull && git add -A && git commit -m 'update addr' && git push
