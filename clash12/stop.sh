#!/bin/sh
iptables -t nat -D PREROUTING CLASH  >/dev/null 2>&1
iptables -t nat -D OUTPUT CLASH  >/dev/null 2>&1

iptables -t nat -D PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 1053

/bin/iptables -t nat -F CLASH >/dev/null 2>&1
/bin/iptables -t nat -X CLASH >/dev/null 2>&1
/sbin/ipset destroy chnroute >/dev/null 2>&1


pid=$(ps | awk '/[c]lash /{print $1}')

if [ "$pid" == "" ]; then
    echo "Clash is not Running"
else
    echo "Clash Killed"
    kill $pid
fi