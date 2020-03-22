#!/usr/bin/env bash

OPENSSL_VERSION=${1:-openssl-1.1.1e}

curl -O https://www.openssl.org/source/$OPENSSL_VERSION.tar.gz
tar xf $OPENSSL_VERSION.tar.gz
cd $OPENSSL_VERSION
export DIST_DIR=${OPENSSL_VERSION}-dist
../build_openssl_dist.sh
