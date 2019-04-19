#!/bin/bash

# exit immediately if an error happens
set -e

# setup environment
. ${ENV_EXPORT_SCRIPT}

# go to cache directory
mkdir -p ${CACHE_DIR}
cd ${CACHE_DIR}


# based on HOL4 developers/install-poly.sh
# --------------------------------------------
POLY_BASE="https://github.com/polyml/polyml"
POLY_VERSION=${POLY_VERSION:-v5.7.1}

PREFIX=${CACHE_DIR}/polyml


# prepare directories
mkdir polyml_src
mkdir polyml

# download polyml
wget -qO- ${POLY_BASE}/archive/${POLY_VERSION}.tar.gz | \
  tar xvz -C polyml_src --strip-components 1

# compile polyml
cd polyml_src
echo "*** Configuring PolyML for prefix: ${PREFIX}"
./configure --prefix=$PREFIX
make

# install polyml
make install

