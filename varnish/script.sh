#!/bin/bash

sed -i "s/APACHE_PORT_80_TCP_ADDR/$APACHE_PORT_80_TCP_ADDR/g" /etc/varnish/default.vcl

varnishd -F -f /etc/varnish/default.vcl -s malloc,256m -a 0.0.0.0:6081
