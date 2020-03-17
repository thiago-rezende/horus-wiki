#!/bin/sh
set -e
envsubst '${DOMAIN}' </usr/src/app/nginx.conf.template >/etc/nginx/nginx.conf
nginx -g "daemon off;"
exec "$@"
