BIN=./ASIAgent_test_online
INTERVAL=60
LOCK=/opt/NECLA/Agent/run/Agent.lock

echo "make sure to be root"
service NEC-Agent stop
service NEC-Agent status
sudo sh /opt/NECLA/Agent/bin/audit-rules.sh add
sudo sh /opt/NECLA/Agent/bin/audit-rules.sh enable
sudo sh /opt/NECLA/Agent/bin/audit-rules.sh status
while [ 1 ] 
do 
    rm -f $LOCK
    $BIN -f
    echo "Waiting for $INTERVAL seconds before re-spawn"
    sleep $INTERVAL
done

#sudo sh /opt/NECLA/Agent/bin/audit-rules.sh remove
#sudo sh /opt/NECLA/Agent/bin/audit-rules.sh disable
#sudo sh /opt/NECLA/Agent/bin/audit-rules.sh status
