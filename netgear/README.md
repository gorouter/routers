## Netgear 固件交叉编译环境

> 本镜像基于 ubuntu 14.04 制作；本镜像默认安装了大部分编译所需依赖包，**且已打包 Netgear R7800 固件源码，必要时可从 [NETGEAR官网](https://kb.netgear.com/2649/NETGEAR-Open-Source-Code-for-Programmers-GPL) 生新下载源码或其它型号固件源码，并挂载到 `/home/NETGEAR` 目录(如不想挂载，镜像内也提供了下载脚本)，编译前请先执行 `/root/buildevn_*.sh` 初始化相关环境变量**

> 2017.11.22 默认对 [*`Voxel'R7800`*](https://github.com/SVoxel/R7800) 的官改固件进行支持和配置
