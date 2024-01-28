#!/bin/sh
# shellcheck shell=sh

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

# NGINX Setup
echo "${SCRIPT}: Setting NGINX global log destination to ${LOGS_DIR}"
sed -i "s#/var/log/nginx/#${LOGS_DIR}/#g" /etc/nginx/nginx.conf
echo "${SCRIPT}: Setting ${NGINX_DIR} as folder for server configurations"
sed -i "s#/etc/nginx/conf.d#${NGINX_DIR}#" /etc/nginx/nginx.conf
for index in "${HTML_DIR}/index"*; do
    if [ ! -f "$index" ]; then
        echo "${SCRIPT}: No index file found, copying default NGINX welcome site to ${HTML_DIR}"
        cp -r /usr/share/nginx/html/index.html "${HTML_DIR}/index.html"
        sed -i "20s#.*#<p>Check out <a href=\"https://github.com/hulkhaugen/hassio-addons/blob/main/nginx_ws/DOCS.md\">NGINX Web Server Add-on DOCS.md</a> for Add-on specific info.</p>#" "${HTML_DIR}/index.html"
    fi
done
if [ -z "$(ls -A "${NGINX_DIR}"/*.conf 2>/dev/null)" ]; then
    echo "${SCRIPT}: No configuration files found, creating ${NGINX_FILE}"
    cat <<EOF >"${NGINX_FILE}"
server {
  listen 80 default_server;
  listen [::]:80 default_server;
  access_log ${LOGS_DIR}/${SITENAME}.access.log;
  error_log ${LOGS_DIR}/${SITENAME}.error.log;
  server_name ${SITE_URL};
  root ${HTML_DIR};
  index index.html;
#  location /images/ {
#    alias /data/images/;
#    try_files \$uri =404;
#  }
}
EOF
else
    echo "${SCRIPT}: Configuration file(s) found in ${NGINX_DIR}"
fi
