#!/bin/bash

git clone https://github.com/coolsnowwolf/lede.git 
mv ./lede /home/LEDEWRT/ledewrt

#暂保留git以便重新下载源代码
#rm -rf /home/LEDEWRT/ledewrt/.git

cd /home/LEDEWRT/ledewrt

#可以在这里指定编译版本
#git checkout f09c4d358773e212d80f186b51273b1332e35de8

./scripts/feeds update -a 
./scripts/feeds install -a

#选择好router设置后执行以下命令进行编译(-j1 后面是线程数)
#make menuconfig
#make -j1 V=s 
