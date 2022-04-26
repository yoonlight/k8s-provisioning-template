#!/bin/sh

cd /etc/apt && \
sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' sources.list
apt update