#!/usr/bin/env sh
set -e

ip=`/sbin/ip route|awk '/default/ { print $3 }'`

if [ -n "$PORTS" ]; then
    for port in $(echo $PORTS | tr " " "\n")
    do
        sed "s/\$ip/$ip/g;s/\$port/$port/g;" port.ini.dist > /app/"$port.ini"
    done
fi

exec /usr/bin/supervisord -c /etc/supervisord.conf --nodaemon
