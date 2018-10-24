FROM wisbyme/router-ledewrt:7.5.3

LABEL maintainer="ljjun <wisbyme@gmail.com>"

ENV FORCE_UNSAFE_CONFIGURE 1

COPY update_r7800.sh    /root/update_r7800.sh
COPY commit_r7800.sh    /root/commit_r7800.sh
COPY config_all_r7800   /root/config_all_r7800
COPY 4.4_qcom-ipq8065-r7800.dts /root/4.4_qcom-ipq8065-r7800.dts
COPY 4.9_qcom-ipq8065-r7800.dts /root/4.9_qcom-ipq8065-r7800.dts

RUN apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/cache/apt/* \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /home/LEDEWRT/tmp /root/R7800 \
    && mv /root/update_r7800.sh /root/R7800 \
    && mv /root/commit_r7800.sh /root/R7800 \
    && mv /root/4.4_qcom-ipq8065-r7800.dts /root/R7800 \
    && mv /root/4.9_qcom-ipq8065-r7800.dts /root/R7800 \
    && mv /root/config_all_r7800 /root/R7800 \
    && chmod +x /root/*.sh \
    && chmod +x /root/R7800/*.sh \
    && cd /home/LEDEWRT/ledewrt \
    && /root/R7800/update_r7800.sh 

CMD ["zsh"]
WORKDIR /home/LEDEWRT/ledewrt
