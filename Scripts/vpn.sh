#!/bin/bash

VPN_STATUS=''
VPN_STATUS=$(nmcli -t -f type,state,connection d | egrep "^(tun|tap):connected" | awk -F':' '{ print $3 }')

if [ -z ${VPN_STATUS} ];
then 
	echo " DOWN $(dig @resolver1.opendns.com ANY myip.opendns.com +short)"
	echo "D"
	echo "#ef8f10"
else 
	echo " UP $(dig @resolver1.opendns.com ANY myip.opendns.com +short)"
	echo "U"
	echo "#00CC00"
fi
exit 0
