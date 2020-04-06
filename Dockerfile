FROM ruby:2.6.6-alpine3.11

RUN apk update && apk upgrade && apk add --no-cache \
      bash=5.0.11-r1                                \
      build-base=0.5-r1                             \
      postgresql-dev=12.2-r0                        \
    && rm -rf /var/cache/apk/*

RUN gem install rails -v 6.0.2.2
