#!/bin/sh
## Instalacion de Requisitos
sudo apt update
sudo apt upgrade -y
sudo apt-get install libmaxminddb-dev cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev gdb -y

## Descarga de los fuentes
sudo git clone --recursive https://github.com/zeek/zeek

## Descarga de Base de Datos de GeoIP
sudo wget https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz
sudo mv GeoLite2-City_20190924/GeoLite2-City.mmdb /usr/share/GeoIP/

## Instalacion Zeek

cd zeek/
sudo ./configure --with-geoip=/usr/share/GeoIP/GeoLite2-City.mmdb
sudo make
sudo make install
