#!/bin/bash

cd /home/ASUSWRT
git clone git@github.com:gorouter/public_routers.git
cd ./public_routers

git remote set-url origin git@github.com:gorouter/public_routers.git 
git config --global user.email "kenlea@126.com" 
git pull 

mkdir -p ./ASUSWRT/AC828
cp -f /home/ASUSWRT/asuswrt/bin/.img /home/LEDEWRT/public_routers/ASUSWRT/AC828/ 
cp -f /home/ASUSWRT/asuswrt/bin/.tar /home/LEDEWRT/public_routers/ASUSWRT/AC828/
git add --all
git commit -m "BRT-AC828 firmware"
git push

#cd /home/ASUSWRT
#rm -rf ./public_routers

#cd /home/ASUSWRT/asuswrt
#make clean && make dirclean && make distclean

