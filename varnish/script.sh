#!/bin/bash

sed 's/{{BACKEND_PORT_80_TCP_ADDR}}/'$BACKEND_PORT_80_TCP_ADDR'/ s/{{BACKEND_PORT_80_TCP_PORT}}/'$BACKEND_PORT_80_TCP_PORT'/' \
     /etc/varnish/default.vcl.tpl > /etc/varnish/default.vcl

/usr/sbin/varnishd -D FOREGROUND
