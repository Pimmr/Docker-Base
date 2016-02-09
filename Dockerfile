FROM mhart/alpine-node:5.5

MAINTAINER Ilya Ovdin, ilya@pimmr.com

WORKDIR /usr/lib

RUN apk update && \
    apk upgrade && \
    apk add python make g++ && \
    npm install -g node-gyp typescript && \
    npm install async \
      aws-sdk \
      base62 \
      bcrypt \
      body-parser \
      compression \
      connect \
      cors \
      crc \
      db-migrate \
      email-validator \
      faker \
      fb \
      gulp \
      gulp-jasmine \
      gulp-jest \
      gulp-shell \
      gulp-tsc \
      gulp-tslint \
      gulp-watch \
      harmonize \
      heapdump \
      image-size \
      jasmine-reporters \
      jayson \
      jest \
      jest-cli \
      js-yaml \
      knex \
      lodash \
      mkdirp \
      moment \
      performance-now \
      pg \
      request \
      run-sequence \
      s3 \
      shortid \
      soap \
      source-map-support \
      split \
      sync \
      tslint \
      valid-url \
      winston \
      xml2js && \
    apk del make gcc g++ python && \
    rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp

ENV NODE_PATH=/usr/lib/node_modules
