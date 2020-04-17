#!/bin/bash

APP=consul
VER=1.7.2
OLD_WORKDIR=$(pwd)
APPVER=${APP}-$(echo ${VER} | tr '.' '_')


cd /opt/${APP}/
wget https://releases.hashicorp.com/${APP}/${VER}/${APP}_${VER}_linux_armhfv6.zip || exit "unable to load"
cd bin
unzip ../${APP}_${VER}_linux_armhfv6.zip
mv ${APP} ${APPVER}
ln -s ${APPVER} ${APP}


