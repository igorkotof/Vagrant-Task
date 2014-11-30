Vagrant.configure("2") do |config| 

config.vm.box = "base"

config.vm.network :forwarded_port, guest: 8080, host: 8080 

config.vm.provider :virtualbox do |vb| 
vb.customize ["modifyvm", :id, "--memory", "1024"] 
end 
 
config.vm.provision "shell", path: "init.sh" 
end 
