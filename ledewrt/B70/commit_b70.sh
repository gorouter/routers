#!/bin/bash

cd /home/LEDEWRT
git clone git@github.com:gorouter/public_routers.git
cd ./public_routers

git remote set-url origin git@github.com:gorouter/public_routers.git 
git config --global user.email "kenlea@126.com" 
git pull 

mkdir -p ./LEDEWRT/B70
cp -f /home/LEDEWRT/ledewrt/bin/targets/ramips/mt7621/openwrt-ramips-mt7621-hc5962-squashfs-factory.bin /home/LEDEWRT/public_routers/LEDEWRT/B70/ 
cp -f /home/LEDEWRT/ledewrt/bin/targets/ramips/mt7621/openwrt-ramips-mt7621-hc5962-squashfs-sysupgrade.bin /home/LEDEWRT/public_routers/LEDEWRT/B70/
git add --all
git commit -m "B70 firmware"
git push

#cd /home/LEDEWRT
#rm -rf ./public_routers

#cd /home/LEDEWRT/ledewrt
#make clean && make dirclean && make distclean

#cp /root/B70/config_all_b70 /home/LEDEWRT/ledewrt/.config
#make donwload
