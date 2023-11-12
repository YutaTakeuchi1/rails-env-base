FROM ruby:3.0

# APPという環境変数に/appのパスを設定
ENV APP /app

# /appというディレクトリを作成
RUN mkdir -p $APP

# ホストのカレントディレクトリを/app/にコピー
COPY . $APP/

# 以降のコマンドを/app/で実行
WORKDIR $APP

# Rubyの依存関係をインストール
RUN bundle install

# Node.jsとYarnのバージョンを指定してインストール
ARG NODE_VERSION=20
ARG YARN_VERSION=1.22

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn@${YARN_VERSION}