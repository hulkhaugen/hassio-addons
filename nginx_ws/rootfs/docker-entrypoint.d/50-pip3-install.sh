#!/bin/sh
# shellcheck shell=sh disable=SC1091

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

# Install pip packages
if [ -s "${PIP_FILE}" ]; then

    # Install python3 if not defined in apk.txt
    echo "${SCRIPT}: ${PIP_FILE} found, making sure ${PY3_PACK} and ${PIP_PACK} is installed"
    if ! grep -q "${PY3_PACK}" "${APK_FILE}"; then
        apk add --no-cache "${PY3_PACK}"
    fi

    # Install py3-pip if not defined in apk.txt
    if ! grep -q "${PIP_PACK}" "${APK_FILE}"; then
        apk add --no-cache "${PIP_PACK}"
    fi

    # Continue install pip3 dependencies defined in requirements.txt
    echo "${SCRIPT}: Installing dependencies defined in ${PIP_FILE}"
    pip3 install --no-cache-dir -r "${PIP_FILE}" --break-system-packages

elif [ -f "${PIP_FILE}" ]; then
    echo "${SCRIPT}: Nothing defined in ${PIP_FILE}"

else
    echo "${SCRIPT}: No dependencies file found, creating placeholder at ${PIP_FILE}"
    touch "${PIP_FILE}"
fi
