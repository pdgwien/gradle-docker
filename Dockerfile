FROM frekele/gradle:latest
RUN curl -O https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz && tar -xf docker-latest.tgz && mv docker-latest/docker /usr/bin && rm -rf docker-latest*
