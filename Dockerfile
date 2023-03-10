FROM ubuntu:focal
WORKDIR /app
RUN apt update && apt -y install git curl build-essential libssl-dev zlib1g-dev
RUN git clone https://github.com/TelegramMessenger/MTProxy
RUN cd MTProxy && make && cp objs/bin/mtproto-proxy /app
RUN curl -s https://core.telegram.org/getProxySecret -o proxy-secret
RUN curl -s https://core.telegram.org/getProxyConfig -o proxy-multi.conf
CMD echo $PROXY_SECRET && /app/mtproto-proxy -p $PORT_EST -H $PORT -S $PROXY_SECRET --aes-pwd proxy-secret proxy-multi.conf -M 1 -u nobody