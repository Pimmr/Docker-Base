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

RUN gpg --keyserver pool.sks-keyservers.net --recv-keys 9554F04D7259F04124DE6B476D5A82AC7E37093B DD8F2338BAE7501E3DD5AC78C273792F7D83545D DBE9B9C5

ENV NPM_CONFIG_LOGLEVEL info
ENV IOJS_VERSION 2.5.0
RUN curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz" \
  && curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/SHASUMS256.txt.asc" \
  && gpg --verify SHASUMS256.txt.asc \
  && grep " iojs-v$IOJS_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c - \
  && tar -xzf "iojs-v$IOJS_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
  && rm "iojs-v$IOJS_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc
RUN     npm install -g gulp
RUN     npm install -g typescript
RUN     npm install -g tsd 
RUN     npm install -g bower

# Packages installed many times recursively
#RUN     npm install -g \
#        inherits \
#        minimist \
#        readable-stream \
#        string_decoder \
#        isarray \
#        core-util-is \
#        lodash \
#        get-stdin \
#        ansi-regex \
#        minimatch \
#        once \
#        wrappy \
#        through2 \
#        object-assign \
#        xtend \
#        supports-color \
#        chalk \
#        glob \
#        strip-ansi \
#        has-ansi \
#        graceful-fs \
#        escape-string-regexp \
#        ansi-styles \
#        vinyl \
#        replace-ext \
#        clone \
#        mkdirp \
#        clone-stats \
#        meow \
#        async \
#        sigmund \
#        lru-cache \
#        hoek \
#        inflight \
#        repeating \
#        multipipe \
#        map-obj \
#        is-finite \
#        indent-string \
#        duplexer2 \
#        dateformat \
#        camelcase-keys \
#        camelcase \
#        beeper \
#        array-uniq \
#        array-differ

