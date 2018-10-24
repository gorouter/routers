#!/bin/bash

git clone https://github.com/gorouter/src_netgear_toolchain.git
git clone https://github.com/SVoxel/R7800.git 

mv ./R7800 /home/NETGEAR/r7800
rm -rf /home/NETGEAR/r7800/.git

rm -f /home/NETGEAR/r7800/include/prereq-build.mk
cp ./src_netgear_toolchain/include/prereq-build.mk /home/NETGEAR/r7800/include
mv ./src_netgear_toolchain/dl /home/NETGEAR/r7800/
mv ./src_netgear_toolchain/toolchain /home/NETGEAR/r7800/
rm -rf ./src_netgear_toolchain

cd /home/NETGEAR/r7800
cp ./configs/defconfig-r7800 .config
