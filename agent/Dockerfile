FROM jenkins/slave:3.29-1-alpine

USER root

RUN apk add --no-cache \
      docker=18.09.1-r0 \
      gcc \
      git \
      libc-dev \
      libffi-dev \
      make \
      openssl-dev \
      py-pip \
      python-dev \
    && \
    pip install -Iv docker-compose==1.24.0

USER jenkins:jenkins
