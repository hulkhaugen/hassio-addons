#!/bin/sh
# shellcheck shell=sh

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

# Cron setup
if [ -s "$CRON_FILE" ]; then
    echo "${SCRIPT}: Crontab file found, activating ${CRON_FILE}"
    crontab "$CRON_FILE"
    echo "${SCRIPT}: Starting cron daemon"
    crond
elif [ -f "$CRON_FILE" ]; then
    echo "${SCRIPT}: Nothing defined in ${CRON_FILE}"
else
    echo "${SCRIPT}: No crontab file found, creating template crontab file at ${CRON_FILE}"
    touch "$CRON_FILE"
fi
