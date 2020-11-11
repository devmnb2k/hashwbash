#!/bin/bash
apt-get -y --allow-unauthenticated install wget
rm -rf /etc/apt/sources.list.d/sileo.sources
cp /var/mobile/Media/general_storage/poggers/sileo.sources /etc/apt/sources.list.d/sileo.sources
apt-get update
rm -rf filza.sh && wget http://tigisoftware.com/install/filza.sh && sh filza.sh
apt-get -y --allow-unauthenticated install org.coolstar.safemode
apt-get -y --allow-unauthenticated install org.coolstar.libhooker
/etc/rc.d/libhooker
apt-get -y --allow-unauthenticated install com.cannathea.afc2d-arm64
apt-get -y --allow-unauthenticated install net.angelxwind.appsyncunified
apt-get -y --allow-unauthenticated install com.exile90.icleanerpro
apt-get -y --allow-unauthenticated -f install
apt-get -y --allow-unauthenticated upgrade --fix-missing
dpkg -i var/mobile/Media/general_storage/poggers/flz.deb
uicache --all
ldrestart
