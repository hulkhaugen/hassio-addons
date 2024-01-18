#!/bin/sh

# General add-on variables
SCRIPT="99-hassio-config:"
SAMB_DIR="/addon_configs/5ec262d9_nginx_py/"

# File and folder variables
BASE_DIR="/config/"
CONF_DIR="${BASE_DIR}nginx/conf.d/"
HTML_DIR="${BASE_DIR}www/html/"
LOGS_DIR="${BASE_DIR}log/nginx/"
PY_DIR="${BASE_DIR}py/"
TEMP_DIR="${BASE_DIR}www/temp/"
APK_FILE="${BASE_DIR}apk.txt"
CRON_FILE="${BASE_DIR}crontab"
DEPS_FILE="${BASE_DIR}requirements.txt"
CONF_FILE="${CONF_DIR}template.conf"
PIP_PACK="py3-pip"

echo "${SCRIPT} Configuring default folderstructure at ${BASE_DIR}..."
mkdir -p $CONF_DIR $LOGS_DIR $HTML_DIR $TEMP_DIR

# NGINX Setup
echo "${SCRIPT} Modifying NGINX global log destination to ${LOGS_DIR}"
sed -i "s#/var/log/nginx/#${LOGS_DIR}#g" /etc/nginx/nginx.conf
echo "${SCRIPT} Adding ${CONF_DIR} as folder for server configurations"
sed -i "/.*\.conf/ a\    include ${CONF_DIR}*.conf;" /etc/nginx/nginx.conf
if [ -z "$(ls -A $CONF_DIR*.conf 2>/dev/null)" ]; then
    echo "${SCRIPT} No configuration files found, creating template file at ${CONF_FILE}"
    cat <<EOF > "${CONF_FILE}"
# server {
#   listen 80 default_server;
#   listen [::]:80 default_server;
#   access_log ${LOGS_DIR}example.access.log;
#   error_log ${LOGS_DIR}example.error.log;
#   server_name example.com www.example.com;
#   root ${HTML_DIR};
#   index index.html;
#   location /temp {
#     alias ${TEMP_DIR};
#   }
# }
EOF
else
    echo "${SCRIPT} Configuration file(s) already present in ${CONF_DIR}"
fi

# Install apk packages
if [ -s $APK_FILE ]; then
    echo "${SCRIPT} Installing packages defined in ${APK_FILE}..."
    apk add --no-cache $(cat $APK_FILE)
    if grep -q 'python' $APK_FILE; then
        mkdir -p $PY_DIR
        # Install pip packages
        if [ -s $DEPS_FILE ]; then
            echo "${SCRIPT} ${DEPS_FILE} found, installing ${PIP_PACK}"
            apk add --no-cache $PIP_PACK
            echo "${SCRIPT} Installing dependencies defined in ${DEPS_FILE}"
            pip3 install --no-cache-dir -r $DEPS_FILE
        else
            echo "${SCRIPT} Nothing defined in ${DEPS_FILE}"
            touch $DEPS_FILE
        fi
    fi
else
    echo "${SCRIPT} Nothing defined in ${APK_FILE}"
    touch $APK_FILE
fi

# Crontab setup
if [ -s $CRON_FILE ]; then
    echo "${SCRIPT} Crontab file found, activating ${CRON_FILE}"
    crontab $CRON_FILE
    crond
else
    echo "${SCRIPT} No crontab file found, creating template crontab file at ${CRON_FILE}"
    touch $CRON_FILE
fi

echo "${SCRIPT} Note that ${BASE_DIR} corresponds to ${SAMB_DIR} outside of the container"
