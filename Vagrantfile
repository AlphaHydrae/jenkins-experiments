# -*- mode: ruby -*-
# vi: set ft=ruby :

# https://docs.vagrantup.com.
Vagrant.configure('2') do |config|

  # Jenkins master
  config.vm.define 'master' do |master_config|

    master_config.vm.box = 'ubuntu/bionic64'
    master_config.vm.hostname = 'jenkins-master'

    master_config.vm.network 'private_network', ip: '192.168.50.30'
    master_config.vm.network 'forwarded_port', guest: 7000, host: 7000

    master_config.vm.provider 'virtualbox' do |vb|
      vb.cpus = 2
      vb.memory = 2048
    end

    config.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'master/playbook.yml'
      ansible.compatibility_mode = '2.0'
      ansible.verbose = '-vv'
    end
  end

  # Jenkins agent
  config.vm.define 'agent' do |agent_config|

    agent_config.vm.box = 'ubuntu/bionic64'
    agent_config.vm.hostname = 'jenkins-agent'

    agent_config.vm.network 'private_network', ip: '192.168.50.31'

    agent_config.vm.provider 'virtualbox' do |vb|
      vb.cpus = 2
      vb.memory = 1024
    end

    config.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'agent/playbook.yml'
      ansible.compatibility_mode = '2.0'
      ansible.verbose = '-vv'
    end
  end
end
