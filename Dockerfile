FROM ruby:2.6.5-alpine3.11

RUN apk update && apk upgrade && apk add --no-cache \
      bash \
      build-base \
      git \
      nodejs \
      npm \
      postgresql-dev \
      yarn \
    && rm -rf /var/cache/apk/*

RUN gem install bundler -v 2.1.4 && \
    gem install rails -v 6.0.2.2
