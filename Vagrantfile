Vagrant::Config.run do |config|
  config.vm.box = "centos62"
  config.vm.box_url = "http://packages.vstone.eu/vagrant-boxes/centos-6.2-64bit-latest.box"

  config.vm.customize do |vm|
    vm.memory_size =768
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.manifest_file = "centos62.pp"
    puppet.options = [
      "--verbose",
#      "--noop", # uncomment to test without applying config
    ]
  end

end
# vim:ft=ruby
