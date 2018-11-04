#!/bin/bash
fun_set_text_color(){
    COLOR_RED='\E[1;31m'
    COLOR_GREEN='\E[1;32m'
    COLOR_YELOW='\E[1;33m'
    COLOR_BLUE='\E[1;34m'
    COLOR_PINK='\E[1;35m'
    COLOR_PINKBACK_WHITEFONT='\033[45;37m'
    COLOR_GREEN_LIGHTNING='\033[32m \033[05m'
    COLOR_END='\E[0m'
}
main(){
    echo -e "${COLOR_YELOW}====== Initialized build environment for ledewrt =======${COLOR_END}"
    if [ -d "/home/ASUSWRT/asuswrt/tools" ]; then
        if [ ! -d "/home/ASUSWRT/asuswrt/tools/openwrt-gcc463.arm" ]; then
            cd /home/ASUSWRT/asuswrt/tools
            tar -jvxf /home/ASUSWRT/asuswrt/tools/openwrt-gcc463.arm.tar.bz2
            cd /home/ASUSWRT
        fi
    else
        echo -e "${COLOR_RED}[error] /home/ASUSWRT/asuswrt/ not found${COLOR_END}"
        return 1 
    fi
    if [ -d "/home/ASUSWRT/asuswrt/tools/lib" ] && [ -d "/home/ASUSWRT/asuswrt/tools/openwrt-gcc463.arm" ]; then
        if [ ! -L /opt/lib ] || [ ! -L /opt/openwrt-gcc463.arm ]; then
            echo -e -n "${COLOR_PINK}link qca & qca-arm${COLOR_END}"
            ln -s /home/ASUSWRT/asuswrt/tools/lib /opt/lib
            ln -s /home/ASUSWRT/asuswrt/tools/openwrt-gcc463.arm /opt/openwrt-gcc463.arm
            if [ -L /opt/lib ] && [ -L /opt/openwrt-gcc463.arm ];then
                echo -e " ${COLOR_GREEN}done${COLOR_END}"
            else
                echo -e " ${COLOR_RED}failed${COLOR_END}"
                return 1
            fi
        fi
    else
        echo -e "${COLOR_RED}[error] /home/ASUSWRT/asuswrt/ not found${COLOR_END}"
        return 1
    fi
    echo -e -n "${COLOR_PINK}setting Environment...${COLOR_END}"
    export PATH=$PATH:/opt/openwrt-gcc463.arm/bin
    export STAGING_DIR=/opt/openwrt-gcc463.arm
    echo -e " ${COLOR_GREEN}done${COLOR_END}"
    #echo "$PATH"
}
fun_set_text_color
main
