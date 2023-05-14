#!/bin/sh
if [ -n "$1" ]; then
	sed -e "s/backend:9000/$1:9000/" /etc/nginx/common.conf > /tmp/common.conf; 
	cp /tmp/common.conf /etc/nginx/common.conf;
fi

nginx -e /proc/self/fd/2 -g 'daemon off;'
