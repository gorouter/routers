#!/bin/bash

#为扩展R7800可用系统空间，去掉官方netgear分区
cp /root/R7800/4.4_qcom-ipq8065-r7800.dts /home/NETGEAR/r7800/target/linux/ipq806x/files-4.4/arch/arm/boot/dts/qcom-ipq8065-r7800.dts
cp /root/R7800/4.9_qcom-ipq8065-r7800.dts /home/NETGEAR/r7800/target/linux/ipq806x/files-4.9/arch/arm/boot/dts/qcom-ipq8065-r7800.dts

#构建配置
cd /home/NETGEAR/r7800

#make download
#make -j1 V=s
