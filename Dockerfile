FROM java:8-jdk

ARG GRADLE_VERSION=3.2.1

WORKDIR /usr/bin
RUN curl -sLO https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip && \
  unzip gradle-${GRADLE_VERSION}-all.zip && \
  ln -s gradle-${GRADLE_VERSION} gradle && \
  rm gradle-${GRADLE_VERSION}-all.zip
RUN curl -sLO https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz && tar -xf docker-latest.tgz && mv docker/docker /usr/bin && rm -rf docker-latest.tgz docker

ENV GRADLE_HOME /usr/bin/gradle
ENV PATH $PATH:$GRADLE_HOME/bin

RUN mkdir /app
WORKDIR /app
