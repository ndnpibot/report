BASE=/home/pi/report
echo 1 > $BASE/debug
$BASE/ip_report.sh eth0 > $BASE/current_addr 2>&1
echo 2 >> $BASE/debug
$BASE/ip_report.sh wlan0 >> $BASE/current_addr 2>&1
echo 1 >> $BASE/debug
cd $BASE
git pull && git add -A && git commit -m 'update addr' && git push
