# BuildAccessBrailleRAPDebian13
A docker configuration to build AccessBrailleRAP for Debian 13 base os

# usage

## building docker image
    export HOST_UID=$(id -u)
    export HOST_GID=$(id -g)

    docker build  UID=$HOST_UID --build-arg GID=$HOST_GID -t buildaccessbraillerapdebian13 .

## use docker image to build AccessBrailleRAP
    docker run --rm -it --name accessbrap_build_debian13 -e BRANCH_BUILD=<branch|main> -v ./dist/:/home/builduser/dist buildaccessbraillerapdebian13

    you will find the binary .deb package in ./dist folder
