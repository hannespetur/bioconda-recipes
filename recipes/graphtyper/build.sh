#!/usr/bin/env bash

# Generate build
mkdir -p build
cd build
cmake -DBOOST_ROOT=$PREFIX -DBoost_USE_STATIC_LIBS=OFF ..

# Build
VERBOSE=1 make graphtyper

# Install
mkdir -p $PREFIX/bin
cp bin/graphtyper $PREFIX/bin/graphtyper
