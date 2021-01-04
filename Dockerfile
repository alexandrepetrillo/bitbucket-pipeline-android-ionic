FROM beevelop/android-nodejs

RUN apt-get update && \
  apt-get install -y git awscli && \
  npm install -g cordova@9.0.0 && \
  rm -rf ~/.npm && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean && \
  apt-get update -y && \
  apt-get install -y openjdk-8-jdk && \
  java -version && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  apt-get purge -y --auto-remove $buildDeps && \
  apt-get autoremove -y && apt-get clean

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
