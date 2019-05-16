#!/bin/bash
set -e
exec docker run -i --rm --name jenkins-agent --init jenkins/slave:3.29-1-alpine java -jar /usr/share/jenkins/slave.jar
