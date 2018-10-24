#!/bin/bash

#构建配置
cp /root/B70/config_all_b70 /home/LEDEWRT/ledewrt/.config
cd /home/LEDEWRT/ledewrt
make download

#make -j1 V=s
