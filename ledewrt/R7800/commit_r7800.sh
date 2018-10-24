#!/bin/bash

cd /home/LEDEWRT
git clone git@github.com:gorouter/public_routers.git
cd ./public_routers

git remote set-url origin git@github.com:gorouter/public_routers.git 
git config --global user.email "kenlea@126.com" 
git pull 

mkdir -p ./LEDEWRT/R7800
cp -f /home/LEDEWRT/ledewrt/bin/targets/ipq806x/generic/lede-ipq806x-R7800-squashfs-factory.img /home/LEDEWRT/public_routers/LEDEWRT/R7800/ 
cp -f /home/LEDEWRT/ledewrt/bin/targets/ipq806x/generic/lede-ipq806x-R7800-squashfs-sysupgrade.tar /home/LEDEWRT/public_routers/LEDEWRT/R7800/
git add --all
git commit -m "R7800 firmware"
git push

#cd /home/LEDEWRT
#rm -rf ./public_routers

#cd /home/LEDEWRT/ledewrt
#make clean && make dirclean && make distclean

#cp /root/R7800/config_all_r7800 /home/LEDEWRT/ledewrt/.config
#make donwload
