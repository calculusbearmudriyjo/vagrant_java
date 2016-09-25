Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "c:\\vagrant", "/home/vagrant", type: "nfs", :mount_options => ["dmode=755","fmode=755"]

  config.vm.network :forwarded_port, guest: 8099, host: 8099 # spring boot
  config.vm.network :forwarded_port, guest: 5444, host: 5444 # postgres NEED CONFIGURE
  config.vm.network :forwarded_port, guest: 61616, host: 61616 # activeMQ
  
  config.vm.provision :shell, :path => "provision/provision.sh"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "8192"
  end
end
