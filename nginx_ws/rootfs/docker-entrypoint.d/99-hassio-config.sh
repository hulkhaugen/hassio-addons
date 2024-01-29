#!/bin/sh
# shellcheck shell=sh disable=SC1091

set -e

# Global script variables
. /defaults/variables
SCRIPT=$(basename "$0")

echo "${SCRIPT}: Note that /config corresponds to ${SAMB_DIR} outside of the container"
