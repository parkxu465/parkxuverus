#!/bin/sh
yes | pkg update -y
yes | pkg upgrade -y
yes | pkg install libjansson wget nano -y

mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
wget https://raw.githubusercontent.com/parkxu465/parkxuverus/main/config.json
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh
chmod +x ccminer start.sh
echo "cd ccminer/&&/start.sh" >> ../usr/etc/bash.bashrc
