#!/bin/sh
# shellcheck shell=sh disable=SC1091

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

# Install apk packages
if [ -s "$APK_FILE" ]; then
    echo "${SCRIPT}: Installing packages defined in ${APK_FILE}..."
    apk add --no-cache "$(cat "${APK_FILE}")"
elif [ -f "$APK_FILE" ]; then
    echo "${SCRIPT}: Nothing defined in ${APK_FILE}"
else
    echo "${SCRIPT}: No apk file found, creating placeholder at ${APK_FILE}"
    touch "$APK_FILE"
fi
