#!/usr/bin/env bashio
exec 2<&1

CONF=$(bashio::config 'nginx')
echo "$CONF" > /etc/nginx/http.d/default.conf

# start server
echo "Running nginx..."
nginx -V
nginx -t
exec nginx -g "daemon off; error_log stderr; pid /var/run/nginx.pid;"
