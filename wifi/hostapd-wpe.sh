#!/bin/bash
#Borrowed and modified from: http://blog.gojhonny.com/2015/08/pwning-wpa-enterprise-with-hostapd-on.html

apt-get update && apt-get install libssl-dev libnl-3-dev libnl-genl-3-dev
wget https://w1.fi/releases/hostapd-2.2.tar.gz
tar -zxf hostapd-2.2.tar.gz
git clone https://github.com/OpenSecurityResearch/hostapd-wpe.git
cd hostapd-2.2/
patch -p1 < ../hostapd-wpe/hostapd-wpe.patch
cd hostapd
sed -i 's/#CONFIG_LIBNL32=y/CONFIG_LIBNL32=y/g' ./.config
make
cd ../../hostapd-wpe/certs
./bootstrap
cd ../..
printf "\n[*] hostapd installed [*]\n"

