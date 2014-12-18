# Install Virtualbox
# Install Vagrant: apt-get install vagrant
# Initialize new Vagrant project: vagrant init
# Update configuration to use specific vagrant box
# Configure  VM in  Vagrantfile:

Vagrant.configure("2") do |config| 

config.vm.box = "task"
# user have access to Jenkins via web console:
config.vm.network :forwarded_port, guest: 8080, host: 8080 
# VM should have 1GB RAM:
config.vm.provider :virtualbox do |vb| 
vb.customize ["modifyvm", :id, "--memory", "1024"] 
end 
# Configure provisioning with shell:
config.vm.provision "shell", path: "init.sh" 
end 
