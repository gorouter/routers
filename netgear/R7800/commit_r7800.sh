#!/bin/bash

cd /home/NETGEAR
git clone git@github.com:gorouter/public_routers.git
cd ./public_routers

git remote set-url origin git@github.com:gorouter/public_routers.git 
git config --global user.email "kenlea@126.com" 
git pull 

mkdir -p ./NETGEAR/R7800
cp -f /home/NETGEAR/r7800/bin/.img /home/LEDEWRT/public_routers/NETGEAR/R7800/ 
cp -f /home/NETGEAR/r7800/bin/.tar /home/LEDEWRT/public_routers/NETGEAR/R7800/
git add --all
git commit -m "R7800 firmware"
git push

#cd /home/NETGEAR
#rm -rf ./public_routers

#cd /home/NETGEAR/r7800
#make clean && make dirclean && make distclean

