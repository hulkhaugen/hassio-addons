#!/bin/sh
# shellcheck shell=sh disable=SC1091

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

# Modifying log files destination
echo "${SCRIPT}: Setting NGINX global log destination to ${LOGS_DIR}"
sed -i "s#/var/log/nginx/#${LOGS_DIR}/#g" /etc/nginx/nginx.conf

# Modifying configuration files destination
echo "${SCRIPT}: Setting ${NGINXDIR} as folder for server configurations"
sed -i "s#/etc/nginx/conf.d#${NGINXDIR}#" /etc/nginx/nginx.conf

# Checking existence of configuration files, generating if none
if [ -z "$(ls -A "${NGINXDIR}"/*.conf 2>/dev/null)" ]; then
    echo "${SCRIPT}: No configuration files found, creating ${SITE_CFG}"
    cat <<EOF >"${SITE_CFG}"
server {
  listen 80 default_server;
  listen [::]:80 default_server;
  access_log ${LOGS_DIR}/${SITENAME}.access.log;
  error_log ${LOGS_DIR}/${SITENAME}.error.log;
  server_name ${SITE_URL};
  root ${HTML_DIR};
  index index.html;
#  location /images/ {
#    alias /media/images/;
#    try_files \$uri =404;
#  }
# location /top_secret/ {
#   alias /share/my_secrets/;
#   autoindex on;
#   auth_basic "Restricted Access";
#   auth_basic_user_file ${HTPASSWD};
# }
}
EOF
else
    echo "${SCRIPT}: Configuration file(s) found in ${NGINXDIR}"
fi

# Checking existence of index file, generating if none
for index in "${HTML_DIR}/index"*; do
    if [ ! -f "${index}" ]; then
        echo "${SCRIPT}: No index file found, copying default NGINX welcome site to ${HTML_DIR}"
        cp -r "/usr/share/nginx/html/index.html" "${HTML_DIR}/index.html"
        sed -i "20s#.*#<p>Check out <a href=\"https://github.com/hulkhaugen/hassio-addons/blob/main/nginx_ws/DOCS.md\">NGINX Web Server Add-on DOCS.md</a> for Add-on specific info.</p>#" "${HTML_DIR}/index.html"
    fi
done

# Checking existence of .htpasswd file, generating if none
if [ ! -f "${HTPASSWD}" ]; then
    echo "${SCRIPT}: ${HTPASSWD} not found, generating default"
    echo "${SCRIPT}: Default username: \"user\""
    echo "${SCRIPT}: Default password: \"password\""
    echo "${SCRIPT}: WARNING: REPLACE THE .htpasswd FILE IF YOU INTEND TO ENABLE THIS FEATURE"
    echo "user:\$apr1\$5t0fhqlk\$wlo9IyPjYDwmAjq6hDRzn0" >"${HTPASSWD}"
fi
