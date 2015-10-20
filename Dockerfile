FROM    debian:jessie

MAINTAINER Tom Hastjarjanto, tom@pimmr.com

RUN     apt-get update
RUN     apt-get install -y curl
RUN     apt-get install -y git
RUN     apt-get install -y build-essential
RUN     apt-get install -y wget
RUN     apt-get install -y python
RUN     DEBIAN_FRONTEND=noninteractive apt-get autoremove -y && \
        apt-get clean && \
        rm -rf /var/cache/apt/* /var/lib/apt/lists/*

ENV NPM_CONFIG_LOGLEVEL info
ENV NODEJS_VERSION 4.2.1
RUN curl -SLO "https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz" \
  && tar -xzf "node-v${NODEJS_VERSION}-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
  && rm "node-v${NODEJS_VERSION}-linux-x64.tar.gz"
RUN     npm install -g gulp@"~3.9"
RUN     npm install -g typescript@"~1.6"
RUN     npm install -g tsd@"~0.6"
RUN     npm install -g buffertools
RUN     npm install -g lru-cache
