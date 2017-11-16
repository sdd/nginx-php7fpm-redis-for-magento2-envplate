#!/bin/bash

/usr/local/bin/ep -v /etc/nginx/conf.d/default.conf

# Start services
service php7.0-fpm start

nginx -g 'daemon off;'
