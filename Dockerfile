FROM beevelop/android-nodejs

RUN apt-get update && \
  apt-get install -y git awscli && \
  npm install -g cordova@9.0.0 && \
  rm -rf ~/.npm && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean
