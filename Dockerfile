FROM mhart/alpine-node

MAINTAINER Ilya Ovdin, ilya@pimmr.com

RUN apk update && apk upgrade

WORKDIR /usr/lib

RUN npm install es6-promise \
      express \
      jayson \
      react \
      react-dom \
      react-helmet \
      react-redux \
      react-router@^2.0.0-rc5 \
      react-router-redux \
      react-transform-hmr \
      redux \
      speakingurl \
      valid-url \
      whatwg-fetch \
      winston \
      babel \
      babel-runtime \
      babel-cli \
      babel-core \
      babel-eslint \
      babel-loader \
      babel-plugin-react-display-name \
      babel-plugin-react-transform \
      babel-plugin-transform-runtime \
      babel-preset-es2015 \
      babel-preset-react \
      babel-preset-react-hmre \
      babel-preset-stage-2 \
      babel-register \
      chokidar \
      cross-env \
      css-loader \
      css-modules-require-hook \
      eslint \
      eslint-plugin-react \
      exports-loader \
      extract-text-webpack-plugin \
      file-loader \
      imports-loader \
      postcss \
      postcss-modules-extract-imports \
      postcss-modules-local-by-default \
      postcss-modules-scope \
      rimraf \
      style-loader \
      url-loader \
      webpack \
      webpack-dev-middleware \
      webpack-hot-middleware \
      check-types

RUN apk add python make g++

RUN npm install node-sass sass-loader

