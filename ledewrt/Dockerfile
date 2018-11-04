FROM wisbyme/ubuntu18

LABEL maintainer="ljjun <wisbyme@gmail.com>"

ENV FORCE_UNSAFE_CONFIGURE 1

COPY buildenv.sh    /root/buildenv.sh
COPY download.sh    /root/download.sh

COPY R7800/config_all_r7800 /root/config_all_r7800
COPY R7800/4.4_qcom-ipq8065-r7800.dts /root/4.4_qcom-ipq8065-r7800.dts
COPY R7800/4.9_qcom-ipq8065-r7800.dts /root/4.9_qcom-ipq8065-r7800.dts
COPY R7800/make_r7800.sh /root/make_r7800.sh
COPY R7800/commit_r7800.sh  /root/commit_r7800.sh
COPY R7800/update_r7800.sh  /root/update_r7800.sh

COPY PUBLICssh/id_rsa /root/id_rsa
COPY PUBLICssh/id_rsa.pub /root/id_rsa.pub
COPY PUBLICssh/known_hosts /root/known_hosts

RUN dpkg --add-architecture i386 \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
       sudo net-tools cron e2fsprogs wget vim openssl curl psmisc git \
       autoconf automake bison bzip2 bsdtar diffutils sed file g++ libslang2 gawk \
       gcc-multilib gettext gperf groff-base zsh libncurses5-dev libexpat1-dev libelf-dev \
       libssl-dev libtool libtool-bin libxml-parser-perl make perl pkg-config python \
       shtool tar zlib1g zlib1g-dev intltool autopoint libltdl-dev libelf1 gengetopt \
       mtd-utils sharutils u-boot-tools libstdc++5 xsltproc dos2unix tofrodos \
       device-tree-compiler gitk cmake autogen qemu p7zip p7zip-full build-essential \
       asciidoc binutils libncurses5-dev libz-dev patch unzip lib32gcc1 libc6-dev-i386 \
       subversion flex uglifyjs git-core msmtp texinfo libglib2.0-dev xmlto qemu-utils \

    && apt-get autoremove -y \
    && apt-get autoclean -y \
   #&& rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   #&& /sbin/install_clean \
    
    && mkdir -p /home/LEDEWRT/tmp /root/R7800 /root/.ssh \
    && mv /root/commit_r7800.sh /root/R7800 \
    && mv /root/make_r7800.sh /root/R7800 \
    && mv /root/update_r7800.sh /root/R7800 \
    && mv /root/4.4_qcom-ipq8065-r7800.dts /root/R7800 \
    && mv /root/4.9_qcom-ipq8065-r7800.dts /root/R7800 \
    && mv /root/config_all_r7800 /root/R7800 \
    
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
    
    && cd /home/LEDEWRT \
    && /root/download.sh

CMD ["zsh"]
WORKDIR /home/LEDEWRT
