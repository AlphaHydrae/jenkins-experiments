#!/bin/bash
set -e
exec docker run -i --rm --name jenkins-agent --init jenkins-experiments/agent java -jar /usr/share/jenkins/slave.jar
