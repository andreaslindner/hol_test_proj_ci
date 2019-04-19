#!/bin/bash

# exit immediately if an error happens
set -e

# go to cache directory
mkdir -p ${CACHE_DIR}
cd ${CACHE_DIR}

# clone the right HOL4 branch
git clone -b for_holba --single-branch git://github.com/kth-step/HOL.git
cd HOL

# compile HOL4
poly < tools/smart-configure.sml
bin/build --nograph

