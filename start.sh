#!/bin/bash
sleep 2
/root/vpnserver/vpnserver start
sleep 3
#connect
ifconfig tap_gzqcloud 172.16.255.2 netmask 255.255.255.252
