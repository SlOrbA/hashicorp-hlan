#!/bin/bash

APP=terraform
VER=0.12.9
OLD_WORKDIR=$(pwd)
APPVER=${APP}-$(echo ${VER} | tr '.' '_')


cd /opt/${APP}/
wget https://releases.hashicorp.com/${APP}/${VER}/${APP}_${VER}_linux_arm.zip || exit "unable load"
cd bin
unzip ../${APP}_${VER}_linux_arm.zip
mv ${APP} ${APPVER}
ln -s ${APPVER} ${APP}


