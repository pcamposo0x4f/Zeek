#!/bin/sh
## update & upgrade ##
sudo apt update
sudo apt upgrade -y
## instalacion de dependencias para compilar ##
sudo apt install cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev -y

## Descarga de los fuentes de Zeek ##
git clone --recursive https://github.com/zeek/zeek

## Compilacion de Zeek ##
cd zeek
sudo ./configure
sudo make
sudo make install
