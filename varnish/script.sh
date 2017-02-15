#!/bin/bash

ipaddr=$(dig +short apache)

sed -i "s/IPAPACHE/$ipaddr/g" /etc/varnish/default.vcl

/usr/sbin/varnishd -a :80 -T localhost:6082 -f /etc/varnish/default.vcl -S /etc/varnish/secret -s malloc,256m
