#!/bin/bash

#为扩展R7800可用系统空间，去掉官方netgear分区，需要覆盖此二文件。
#参考: https://forum.lede-project.org/t/tutorial-build-custom-netgear-r7800-firmware-for-a-larger-flash-size-root-space/5989]

cp /root/R7800/4.4_qcom-ipq8065-r7800.dts /home/LEDEWRT/ledewrt/target/linux/ipq806x/files-4.4/arch/arm/boot/dts/qcom-ipq8065-r7800.dts
cp /root/R7800/4.9_qcom-ipq8065-r7800.dts /home/LEDEWRT/ledewrt/target/linux/ipq806x/files-4.9/arch/arm/boot/dts/qcom-ipq8065-r7800.dts

#构建配置
cp /root/R7800/config_all_r7800 /home/LEDEWRT/ledewrt/.config
cd /home/LEDEWRT/ledewrt
make download

#make -j1 V=s
