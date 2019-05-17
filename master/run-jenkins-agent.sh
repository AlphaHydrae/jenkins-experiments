#!/bin/bash
set -e
exec ssh -i /etc/jenkins/id_rsa jenkins@192.168.50.31 /usr/bin/sudo /home/jenkins/bin/run-jenkins-agent.sh
