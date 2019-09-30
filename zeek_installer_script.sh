#!/bin/sh
## Instalacion de Repositorios y Claves
sudo wget -nv http://download.opensuse.org/repositories/network:bro/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/network:/bro/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/bro.list"
## Upgrade && Update
sudo apt update
sudo apt upgrade -y
sudo apt autoremove

## Instalacion Bro
sudo apt install bro -y
sudo apt autoremove -y

## Instalacion de Splunk
sudo wget -O splunk-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.3.1.1&product=splunk&filename=splunk-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb&wget=true'
sudo dpkg -i splunk-7.3.1.1-7651b7244cf2-linux-2.6-amd64.deb

## Instalacion de GeoIP
sudo apt-get install libmaxminddb-dev
sudo wget https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz
sudo tar zxf GeoLite2-City.tar.gz
sudo mv GeoLite2-City_20190924/GeoLite2-City.mmdb /usr/share/GeoIP/
