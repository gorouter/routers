#!/bin/bash

#cd /home/LEDEWRT
#git clone https://github.com/coolsnowwolf/lede.git

cd /home/LEDEWRT/ledewrt
git checkout master #f09c4d358773e212d80f186b51273b1332e35de8 
git pull

./scripts/feeds update -a 
./scripts/feeds install -a

#构建配置
cp /root/B70/config_all_b70 /home/LEDEWRT/ledewrt/.config
cd /home/LEDEWRT/ledewrt
make download

#make -j1 V=s
