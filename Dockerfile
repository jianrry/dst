FROM ubuntu:latest

MAINTAINER Jianrry <jianrry@gmail.com>

RUN set -x \
        && dpkg --add-architecture i386 \
        && apt update \
        && apt-get install -y --no-install-recommends --no-install-suggests lib32gcc1 lib32stdc++6 libcurl4-gnutls-dev:i386 wget ca-certificates unzip \
        && mkdir -p /root/steamcmd \
        && cd /root/steamcmd \
        && wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
        && tar zxvf steamcmd_linux.tar.gz \
        && mkdir -p /root/.klei/DoNotStarveTogether \
        && cd /root/.klei/DoNotStarveTogether \
        && wget https://github.com/jianrry/dst/raw/master/MyDediServer.zip \
        && unzip MyDediServer.zip \
        && mkdir -p /root/dst/mods \
        && echo "ServerModSetup(\"1938752683\")" > /root/dst/mods/dedicated_server_mods_setup.lua
        && cd /root \
        && wget https://raw.githubusercontent.com/jianrry/dst/master/run.sh \
        && chmod +x run.sh 

CMD ["sh", "/root/run.sh"]

EXPOSE 10999/udp




