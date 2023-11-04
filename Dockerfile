FROM ruby:3.0

ENV APP /app
RUN mkdir -p $APP

COPY . $APP/

WORKDIR $APP

RUN bundle install

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn