#!/bin/bash

# exit immediately if an error happens
set -e

# setup environment
. ${ENV_EXPORT_SCRIPT}

# compile the project
# -------------------------------
cd src
${CACHE_DIR}/HOL/bin/Holmake --qof

