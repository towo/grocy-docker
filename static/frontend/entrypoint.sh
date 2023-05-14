#!/bin/sh
if [ -n "$1" ]; then
	sed -i -e "s/backend:9000/$1:9000/" /etc/nginx/common.conf;
fi

sudo -u nginx nginx -g 'daemon off;'
