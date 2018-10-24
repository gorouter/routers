
## Asuswrt / Merlin 固件交叉编译环境

> 本镜像基于 ubuntu 16.04 制作，参考了 `mritd/asuswrt-merlin-build` 镜像(感谢作者[mritd](https://github.com/mritd))；本镜像默认安装了大部分编译所需依赖包，**且已打包 Asuswrt BRT-AC828 固件源码，必要时可从 [ASUS官网](https://www.asus.com/us/Business-Networking/BRT-AC828/HelpDesk_Download) 或 [Merlin Release](https://github.com/RMerl/asuswrt-merlin/releases) 重新下载源码或者其它型号固件源码，并挂载到 `/home/ASUSWRT` 目录(如不想挂载，镜像内也提供了下载脚本)，编译前请先执行 `/root/buildevn_*.sh` 初始化相关环境变量**

> 2017.11.22 默认对 *`BRT-AC828`* 进行支持及配置
