#! /bin/bash

if [[ -z $1 ]]; then
  echo "Need name of build"
  exit 1
fi

containername=$1

set -e

# Prepare binary
./activator clean stage

# copy to the container folder
mkdir ./container/stage

cp -r 										  \
  ./target/universal/stage  \
  ./container

docker build -t $1 ./container
