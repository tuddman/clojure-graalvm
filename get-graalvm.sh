#!/bin/sh

GRAAL_VERSION=1.0.0-rc3
GRAALVM_URL=https://github.com/oracle/graal/releases/download/vm-${GRAAL_VERSION}/graalvm-ce-${GRAAL_VERSION}-linux-amd64.tar.gz \
GRAALVM_PKG=graalvm-ce-${GRAAL_VERSION}-linux-amd64.tar.gz \

curl -4 -L $GRAALVM_URL -o $GRAALVM_PKG 
