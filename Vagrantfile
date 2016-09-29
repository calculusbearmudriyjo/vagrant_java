Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "c:\\vagrant", "/home/vagrant", type: "nfs", :mount_options => ["dmode=755","fmode=755"]
  
  config.vm.boot_timeout = 30
  
  config.vm.network :forwarded_port, guest: 8099, host: 80, auto_correct: false # spring boot
  config.vm.network :forwarded_port, guest: 5444, host: 5444, auto_correct: false # postgres NEED CONFIGURE
  config.vm.network :forwarded_port, guest: 61616, host: 61616, auto_correct: false # activeMQ
  
  config.vm.provision :shell, :path => "provision/provision.sh"
  config.vm.network "private_network", ip: "192.168.50.4"
  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = 8192
	vb.cpus = 4
  end
end
