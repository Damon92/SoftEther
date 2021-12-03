#!/bin/bash
DATE=`date +%Y%m%d%H%M%S`
ping -c 20 -i 0.3 192.168.255.17 &> /dev/null
if [ $? -eq 0 ]; then
        echo "$DATE is UP" >> /root/check.log
else
        echo "$DATE is DOWN" >> /root/check.log
        /etc/init.d/network restart
fi
