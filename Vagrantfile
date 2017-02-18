Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.gui = false
  end
  config.vm.box = "fedora24"
  config.vm.hostname = "myprecise.box"
  config.vm.network "forwarded_port", guest: 22, host: 21797
  config.vm.provision "shell" do |s|
    s.path = "provisioner.sh"
    s.args = ENV["DOCKER_IMAGE"]
  end
end
