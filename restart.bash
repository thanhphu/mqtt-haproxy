#!/bin/bash

HAPROXY="/etc/haproxy"
PIDFILE="/var/run/haproxy.pid"
CONFIG="/etc/haproxy/haproxy.cfg"

cd "$HAPROXY"
pkill -9 -f haproxy
haproxy -f $CONFIG -p "$PIDFILE"


