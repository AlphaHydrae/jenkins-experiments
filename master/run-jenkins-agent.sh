#!/bin/bash
set -e
exec ssh -i /var/jenkins_home/id_rsa jenkins@192.168.50.31 /usr/bin/sudo /home/jenkins/bin/run-jenkins-agent.sh
