#!/usr/bin/env bash

apt-add-repository ppa:ubuntu-sdk-team/ppa
apt-get update
apt-get install -y \
    build-essential \
    qt5-default

wget http://lalescu.ro/liviu/fet/download/fet-5.26.2.tar.bz2
tar xvfj fet-5.26.2.tar.bz2
cd fet-5.26.2/
qmake fet.pro
make
make install
