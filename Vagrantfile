# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = ENV["HTTP_PROXY"]
    config.proxy.https    =  ENV["HTTPS_PROXY"] or ENV["HTTP_PROXY"]
  end
  config.vm.network :forwarded_port, host: 4567, guest: 80
  config.vm.box = "centos65-x86_64"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  config.vm.provision :shell, :path => "bootstrap.sh"
end
