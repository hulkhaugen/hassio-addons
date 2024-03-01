#!/bin/sh
# shellcheck shell=sh disable=SC1091

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

# Cron setup
if [ -s "${CRON_TAB}" ]; then
    echo "${SCRIPT}: Crontab file found, activating ${CRON_TAB}"
    crontab "${CRON_TAB}"
    echo "${SCRIPT}: Starting cron daemon"
    crond
elif [ -f "${CRON_TAB}" ]; then
    echo "${SCRIPT}: Nothing defined in ${CRON_TAB}"
else
    echo "${SCRIPT}: No crontab file found, creating template crontab file at ${CRON_TAB}"
    touch "${CRON_TAB}"
fi
