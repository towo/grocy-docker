#!/bin/sh
if [ -n "${GROCY_DOCKER_BACKEND_HOST}" ]; then
	sed -e "s/backend:9000/${GROCY_DOCKER_BACKEND_HOST}:9000/" /etc/nginx/common.conf > /tmp/common.conf; 
	cat /tmp/common.conf > /etc/nginx/common.conf;
fi

nginx -e /proc/self/fd/2 -g 'daemon off;'
