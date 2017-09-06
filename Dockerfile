FROM beevelop/android-nodejs:v6.11.3

MAINTAINER Manuel Naranjo <naranjo.manuel@gmail.com>

RUN apt-get update && \
  apt-get install -y git awscli && \
  npm install -g cordova@7.0.1 && \
  npm install -g ionic@3.9.2 && \
  rm -rf ~/.npm && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean
