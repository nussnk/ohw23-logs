Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "2004.01"
  
  config.vm.provider :virtualbox do |v|
    v.memory = 512
    v.cpus = 1
  end
  
  boxes = [
    { :name => "log",
      :ip => "192.168.50.15",
      :prov_file => "prov-log",
    },
    { :name => "web",
      :ip => "192.168.50.10",
      :prov_file => "prov-web.sh",
    }
  ]
 
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name]
      config.vm.network "private_network", ip: opts[:ip]
      config.vm.provision "shell", path: opts[:prov_file]
    end
  end
end
