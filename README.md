# Jenkins Experiments

Fully automate a Jenkins installation with:

* The [Configuration as Code](https://github.com/jenkinsci/configuration-as-code-plugin#readme) plugin
* The [Job DSL](https://github.com/jenkinsci/job-dsl-plugin/wiki) plugin
* Jenkins [Pipelines](https://jenkins.io/doc/book/pipeline/)

## Requirements

* [Vagrant](https://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org) (or another Vagrant VM provider)
* [Ansible](https://www.ansible.com/)

## Usage

```
vagrant up
```

Visit http://localhost:7000 in your browser.

## Documentation

* [Configuration as Code Plugin Examples](https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos)
* [Job DSL Plugin API](https://jenkinsci.github.io/job-dsl-plugin/)
