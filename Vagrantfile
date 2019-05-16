# -*- mode: ruby -*-
# vi: set ft=ruby :

# https://docs.vagrantup.com.
Vagrant.configure('2') do |config|

  # Jenkins master
  config.vm.define 'master' do |master_config|

    master_config.vm.box = 'ubuntu/bionic64'
    master_config.vm.hostname = 'jenkins-master'

    master_config.vm.network 'private_network', ip: '192.168.50.30'

    master_config.vm.provider 'virtualbox' do |vb|
      vb.cpus = 2
      vb.memory = 2048
    end
  end
end
