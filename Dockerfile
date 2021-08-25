FROM beevelop/android-nodejs

RUN apt-get update && \
  apt-get install -y git awscli && \
  npm install -g cordova@10.0.0 && \
  rm -rf ~/.npm && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean && \
  apt-get update -y && \
  apt-get install -y openjdk-8-jdk && \
  java -version && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  apt-get purge -y --auto-remove $buildDeps && \
  apt-get autoremove -y && apt-get clean && \
  apt-get clean && \
  apt-get update -y && \
  apt install -y wget && \
  wget https://services.gradle.org/distributions/gradle-6.5.1-bin.zip -P /tmp && \
  apt-get install -y unzip && \
  unzip -d /opt/gradle /tmp/gradle-6.5.1-bin.zip && \
  ln -s /opt/gradle/gradle-6.5.1 /opt/gradle/latest

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $PATH:/opt/gradle/latest/bin

