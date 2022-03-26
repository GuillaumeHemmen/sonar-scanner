FROM debian:stretch

LABEL maintainer="guillaume@van-hemmen.com"

RUN apt-get update && \
    apt-get -y install wget unzip && \
    cd /root/ && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.7.0.2747-linux.zip && \
    unzip sonar-scanner-cli-4.7.0.2747-linux.zip && \
    ln -sf /root/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner /usr/local/bin/sonar-scanner
