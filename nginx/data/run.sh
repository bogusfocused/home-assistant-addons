#!/usr/bin/env bashio
exec 2<&1
mkdir -p /share/nginx
rm -r /etc/nginx/http.d
ln -s /share/nginx /etc/nginx/http.d


# start server
echo "Running nginx..."
nginx -V
nginx -t
exec nginx -g "daemon off; error_log stderr; pid /var/run/nginx.pid;"
