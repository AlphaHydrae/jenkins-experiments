FROM jenkins/jenkins:lts

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY --chown=jenkins:jenkins .gitconfig id_rsa run-jenkins-agent.sh /var/jenkins_home/
RUN chmod 644 /var/jenkins_home/.gitconfig && \
    chmod 400 /var/jenkins_home/id_rsa && \
    chmod 755 /var/jenkins_home/run-jenkins-agent.ssh
