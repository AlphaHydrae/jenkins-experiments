FROM jenkins/jenkins:lts-alpine

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

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root

RUN apk add --no-cache bash sudo

COPY run-jenkins-agent.sh /usr/local/bin/
COPY sudoers /etc/sudoers.d/jenkins
RUN chmod 750 /usr/local/bin/run-jenkins-agent.sh

RUN mkdir -p /etc/jenkins/casc_configs && \
    chown -R root:jenkins /etc/jenkins && \
    chmod -R 750 /etc/jenkins

COPY casc_configs/ /etc/jenkins/casc_configs/
COPY id_rsa /etc/jenkins/

RUN chown root:jenkins /etc/jenkins/casc_configs/jenkins.yml && \
    chmod 640 /etc/jenkins/casc_configs/jenkins.yml && \
    chown root:jenkins /etc/jenkins/id_rsa && \
    chmod 640 /etc/jenkins/id_rsa

USER jenkins:jenkins

COPY --chown=jenkins:jenkins .gitconfig /var/jenkins_home/
RUN chmod 644 /var/jenkins_home/.gitconfig
