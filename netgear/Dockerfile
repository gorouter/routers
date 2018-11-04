FROM ubuntu:14.04

LABEL maintainer="ljjun <wisbyme@gmail.com>"

ENV FORCE_UNSAFE_CONFIGURE 1

COPY buildenv.sh /root/buildenv.sh
COPY download_voxel_r7800.sh /root/download.sh

COPY R7800/4.4_qcom-ipq8065-r7800.dts /root/4.4_qcom-ipq8065-r7800.dts
COPY R7800/4.9_qcom-ipq8065-r7800.dts /root/4.9_qcom-ipq8065-r7800.dts
COPY R7800/make_r7800.sh /root/make_r7800.sh
COPY R7800/commit_r7800.sh  /root/commit_r7800.sh

COPY PUBLICssh/id_rsa /root/id_rsa
COPY PUBLICssh/id_rsa.pub /root/id_rsa.pub
COPY PUBLICssh/known_hosts /root/known_hosts

RUN dpkg --add-architecture i386 \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
       sudo net-tools cron e2fsprogs wget vim openssl curl psmisc git p7zip p7zip-full \
       heirloom-mailx autoconf automake bison bzip2 bsdtar diffutils sed file flex g++ libslang2 \
       gawk gcc-multilib gettext gperf groff-base zsh libncurses5-dev libexpat1-dev libelf-dev \
       libssl-dev libtool libxml-parser-perl make patch perl pkg-config python subversion \
       shtool tar texinfo unzip zlib1g zlib1g-dev intltool autopoint libltdl-dev libelf1 \
       build-essential sharutils libgmp-dev libmpfr-dev libmpc-dev libisl-dev libcloog-isl-dev \
       
    && apt-get autoremove -y \
    && apt-get autoclean -y \
   #&& rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   #&& /sbin/install_clean \
   
    && mkdir -p /home/NETGEAR/tmp /root/R7800 /root/.ssh \
    && mv /root/commit_r7800.sh /root/R7800 \
    && mv /root/make_r7800.sh /root/R7800 \
    && mv /root/4.4_qcom-ipq8065-r7800.dts /root/R7800 \
    && mv /root/4.9_qcom-ipq8065-r7800.dts /root/R7800 \
    
    && mv /root/id_rsa /root/.ssh/ \
    && mv /root/id_rsa.pub /root/.ssh/ \
    && mv /root/known_hosts /root/.ssh/ \
    
    && chmod +x /root/*.sh \
    && chmod +x /root/R7800/*.sh \
    && chmod 600 /root/.ssh/* \
    
    && git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && echo ". ~/buildenv.sh" >> /root/.zshrc \
    && chsh -s /bin/zsh \
    
    && cd /home/NETGEAR \
    && /root/download.sh 

CMD ["zsh"]
WORKDIR /home/NETGEAR
