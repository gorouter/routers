FROM wisbyme/router-ledewrt

LABEL maintainer="ljjun <wisbyme@gmail.com>"

ENV FORCE_UNSAFE_CONFIGURE 1

COPY update_b70.sh    /root/update_b70.sh
COPY commit_b70.sh    /root/commit_b70.sh
COPY config_all_b70   /root/config_all_b70

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends telnet \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
   #&& rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   #&& /sbin/install_clean
   
    && mkdir -p /home/LEDEWRT/tmp /root/B70 \
    && mv /root/update_b70.sh /root/B70 \
    && mv /root/commit_b70.sh /root/B70 \
    && mv /root/config_all_b70 /root/B70 \
    
    && chmod +x /root/*.sh \
    && chmod +x /root/B70/*.sh \
    
    && cd /home/LEDEWRT/ledewrt \
    && /root/B70/update_b70.sh 

CMD ["zsh"]
WORKDIR /home/LEDEWRT/ledewrt
