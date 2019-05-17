#!/bin/bash
set -e
exec docker run -i --rm --name jenkins-agent --init -v /var/run/docker.sock:/var/run/docker.sock jenkins-experiments/agent java -jar /usr/share/jenkins/slave.jar
