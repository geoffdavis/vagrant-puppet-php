Vagrant::Config.run do |config|

  # Define solaris vagrant vm
  config.vm.define :solaris do |solaris_config|
    solaris_config.vm.box = 'solaris-10u10'
    solaris_config.vm.guest = :solaris
#  config.vm.box_url = 'http://puppetlabs.s3.amazonaws.com/pub/solaris10_64.box'

    solaris_config.vm.customize do |vm|
      vm.memory_size = 768
    end

    solaris_config.vm.forward_port 80, 18080

    solaris_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.module_path = "modules"
      puppet.manifest_file  = "solaris.pp"
      puppet.options = [
        "--verbose",
        # Uncomment the following line to turn on puppet debugging
        #"--noop",
      ]
    end

  end # solaris_config

  # Define linux vagrant vm
  config.vm.define :linux do |linux_config|
    linux_config.vm.box = 'centos62'
    linux_config.vm.box_url = "http://packages.vstone.eu/vagrant-boxes/centos-6.2-64bit-latest.box"

    linux_config.vm.customize do |vm|
      vm.memory_size = 768
    end

    linux_config.vm.forward_port 80, 19080

    linux_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.module_path = "modules"
      puppet.manifest_file  = "centos62.pp"
      puppet.options = [
        "--verbose",
        # Uncomment the following line to turn on puppet debugging
        #"--noop",
      ]
    end

  end # linux_config


end
# vim:ft=ruby
