#! /bin/bash

BASE=/home/pi/report

$BASE/ip_report.sh > $BASE/current_addr
cd $BASE
git pull && git add -A && git commit -m 'update addr' && git push
