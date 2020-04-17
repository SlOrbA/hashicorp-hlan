#!/bin/bash

APP=vault
VER=1.2.3
OLD_WORKDIR=$(pwd)
APPVER=${APP}-$(echo ${VER} | tr '.' '_')


cd /opt/${APP}/
wget https://releases.hashicorp.com/${APP}/${VER}/${APP}_${VER}_linux_arm.zip || exit "unable to load"
cd bin
unzip ../${APP}_${VER}_linux_arm.zip
mv ${APP} ${APPVER}
ln -s ${APPVER} ${APP}


