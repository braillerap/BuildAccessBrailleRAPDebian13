#!/bin/bash

export HOST_UID=$(id -u)
export HOST_GID=$(id -g)
export BRANCH="debian13"

if [ $# -gt 0 ]
 then
  export BRANCH="$1"
  printf "Setting branch to:%s\n" "$BRANCH"
 fi

docker run --rm -it --name accessbrap_build-debian13 -e BRANCH_BUILD="$BRANCH" -v ./dist/:/home/builduser/dist  sgngodin/buildaccessbraillerapdebian13
