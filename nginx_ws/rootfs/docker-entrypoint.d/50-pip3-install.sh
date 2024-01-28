#!/bin/sh
# shellcheck shell=sh

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

# Install pip packages
if [ -s "$PIP_FILE" ]; then
    echo "${SCRIPT}: ${PIP_FILE} found, making sure ${PY3_PACK} and ${PIP_PACK} is installed"
    # Install python3 if not defined in apk.txt
    if ! grep -q "$PY3_PACK" "$APK_FILE"; then
        apk add --no-cache "$PY3_PACK"
    fi
    # Install py3-pip if not defined in apk.txt
    if ! grep -q "$PIP_PACK" "$APK_FILE"; then
        apk add --no-cache "$PIP_PACK"
    fi
    echo "${SCRIPT}: Installing dependencies defined in ${PIP_FILE}"
    # Install pip3 dependencies defined in requirements.txt
    pip3 install --no-cache-dir -r "$PIP_FILE"
elif [ -f "$PIP_FILE" ]; then
    echo "${SCRIPT}: Nothing defined in ${PIP_FILE}"
else
    echo "${SCRIPT}: No dependencies file found, creating placeholder at ${PIP_FILE}"
    touch "$PIP_FILE"
fi
