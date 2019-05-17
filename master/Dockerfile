FROM jenkins/jenkins:lts-alpine

USER root

RUN mkdir -p /etc/jenkins && \
    chown root:jenkins /etc/jenkins && \
    chmod 750 /etc/jenkins

COPY id_rsa /etc/jenkins/

RUN chown root:jenkins /etc/jenkins/id_rsa && \
    chmod 640 /etc/jenkins/id_rsa

USER jenkins:jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY --chown=jenkins:jenkins .gitconfig /var/jenkins_home/
RUN chmod 644 /var/jenkins_home/.gitconfig
