#!/bin/sh

CLOJURE_VERSION=1.9.0
CORE_SPECS_ALPHA_VERSION=0.2.36
SPEC_ALPHA_VERSION=0.2.168

for archive in \
  clojure/${CLOJURE_VERSION}/clojure-${CLOJURE_VERSION}.jar \
  core.specs.alpha/${CORE_SPECS_ALPHA_VERSION}/core.specs.alpha-${CORE_SPECS_ALPHA_VERSION}.jar \
  spec.alpha/${SPEC_ALPHA_VERSION}/spec.alpha-${SPEC_ALPHA_VERSION}.jar; do
  (
    cd target/classes && \
    jar xf ~/.m2/repository/org/clojure/$archive
  )
done
