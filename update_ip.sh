#! /bin/bash
BASE=/home/pi/report
$BASE/ip_report.sh eth0 > $BASE/current_addr 2>&1
$BASE/ip_report.sh wlan0 >> $BASE/current_addr 2>&1
cd $BASE
git pull && git add -A && git commit -m 'update addr' && git push
