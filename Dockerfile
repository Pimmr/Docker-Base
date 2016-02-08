FROM mhart/alpine-node

MAINTAINER Ilya Ovdin, ilya@pimmr.com

RUN apk update && apk upgrade

RUN apk add python make g++

WORKDIR /usr/lib

RUN npm install -g node-gyp typescript

RUN npm install async \
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
      xml2js 

ENV NODE_PATH=/usr/lib/node_modules
