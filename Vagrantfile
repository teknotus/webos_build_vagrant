# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :webos do |webos_config|
    webos_config.vm.host_name = "webos"
    webos_config.vm.network :hostonly, "192.168.2.10"
    webos_config.vm.box = "precise32"
    webos_config.vm.share_folder("v-root", "/vagrant", "./webos", :extra => 'dmode=770,fmode=770')
    webos_config.vm.share_folder("webos-source", "/vagrant/webos/source", "./source/webos")

    webos_config.vm.forward_port 3000, 3000


    webos_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path    = "puppet/modules"
      puppet.manifest_file  = "site.pp"
    end
  end
end
