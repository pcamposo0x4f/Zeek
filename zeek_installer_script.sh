#!/bin/sh
## update & upgrade ##
sudo apt update
sudo apt upgrade -y

read -p 'Presiona [Enter] para continuar...'

## install zeek dependecies ##
sudo apt install cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev -y

## Download Zeek Source ##
git clone --recursive https://github.com/zeek/zeek

## Compiling Zeek Source ##
cd zeek
sudo ./configure
sudo make
sudo make install
