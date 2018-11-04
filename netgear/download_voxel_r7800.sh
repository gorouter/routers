#!/bin/bash

git clone https://github.com/foundations/netgear_toolchain.git
git clone https://github.com/SVoxel/R7800.git 

mv ./R7800 /home/NETGEAR/r7800
rm -rf /home/NETGEAR/r7800/.git

rm -f /home/NETGEAR/r7800/include/prereq-build.mk
cp ./netgear_toolchain/include/prereq-build.mk /home/NETGEAR/r7800/include
mv ./netgear_toolchain/dl /home/NETGEAR/r7800/
mv ./netgear_toolchain/toolchain /home/NETGEAR/r7800/
rm -rf ./netgear_toolchain

cd /home/NETGEAR/r7800
cp ./configs/defconfig-r7800 .config
