#!/bin/bash

ipaddr=$(dig +short apache)

sed -i "s/IPAPACHE/$ipaddr/g" /etc/varnish/default.vcl

varnishd -F -f /etc/varnish/default.vcl -s malloc,256m -a 0.0.0.0:6081
