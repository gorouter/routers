FROM i386/ubuntu:16.04 

LABEL maintainer="ljjun <wisbyme@gmail.com>"

ENV FORCE_UNSAFE_CONFIGURE 1

COPY buildenv_merlin.sh /root/buildenv_merlin.sh 
COPY buildenv_asuswrt.sh /root/buildenv_asuswrt.sh 
COPY download_merlin.sh /root/download_merlin.sh 
COPY download_asuswrt.sh /root/download_asuswrt.sh

COPY BRT-AC828/commit_ac828.sh  /root/commit_ac828.sh

COPY PUBLICssh/id_rsa /root/id_rsa
COPY PUBLICssh/id_rsa.pub /root/id_rsa.pub
COPY PUBLICssh/known_hosts /root/known_hosts

RUN dpkg --add-architecture i386 \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
       sudo net-tools cron e2fsprogs wget vim openssl curl psmisc git \
       heirloom-mailx autoconf automake bison bzip2 bsdtar diffutils sed file flex g++ libslang2 \
       gawk gcc-multilib gettext gperf groff-base zsh libncurses5-dev libexpat1-dev libelf-dev \
       libssl-dev libtool libtool-bin libxml-parser-perl make patch perl pkg-config python \
       shtool tar texinfo unzip zlib1g zlib1g-dev intltool autopoint libltdl-dev libelf1 \
       gengetopt mtd-utils sharutils u-boot-tools libstdc++5 xsltproc dos2unix tofrodos \
       device-tree-compiler gitk cmake autogen qemu \
       
    && apt-get autoremove -y \
    && apt-get autoclean -y \
   #&& rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   #&& /sbin/install_clean \
   
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    
    && mkdir -p /home/ASUSWRT/tmp /root/BRT-AC828 /root/.ssh \
    && mv /root/commit_ac828.sh /root/BRT-AC828 \
    
    && mv /root/id_rsa /root/.ssh/ \
    && mv /root/id_rsa.pub /root/.ssh/ \
    && mv /root/known_hosts /root/.ssh/ \
    
    && chmod +x /root/*.sh \
    && chmod +x /root/BRT-AC828/*.sh \
    && chmod 600 /root/.ssh/* \
    
    && git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && echo ". ~/buildenv_merlin.sh" >> /root/.zshrc \
    && chsh -s /bin/zsh \
    
    && cd /home/ASUSWRT \
    && /root/download_asuswrt.sh \
    && /root/buildenv_asuswrt.sh 

CMD ["zsh"]
WORKDIR /home/ASUSWRT

