FROM ruby:latest

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    apt-get update && apt-get install -y \
    nodejs \
&& rm -rf /var/lib/apt/lists/*

RUN gem install rails
