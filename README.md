# Jenkins Experiments

Fully automate a Jenkins installation with:

* The [Configuration as Code](https://github.com/jenkinsci/configuration-as-code-plugin#readme) plugin
* The [Job DSL](https://github.com/jenkinsci/job-dsl-plugin/wiki) plugin
* Jenkins [Pipelines](https://jenkins.io/doc/book/pipeline/)

## Requirements

* [Docker](https://www.docker.com/) (tested with 18.09.2)
* [Docker Compose](https://docs.docker.com/compose/) (tested with 1.23.2)

## Usage

```
docker-compose up --build -d
```

Visit http://localhost:7000 in your browser
