#! /bin/bash

set -e

# Prepare binary
./activator clean stage

# copy to the container folder
mkdir -p ./container
mkdir -p ./container/stage

cp -r 										  \
  ./target/universal/stage  \
  ./container
