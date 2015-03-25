# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "ah" , primary: true do |ah| # ansible host
    ah.vm.box = "centos65_50G_ansible"
    ah.vm.hostname = "ansible.example.com"
    ah.vm.synced_folder "E:/OFM", "/software"
    ah.vm.synced_folder "R:/", "/ramdisk"

    ah.vm.network :private_network, ip: "10.10.10.10"

    ah.vm.provision "ansible" do |ansible|
      ansible.playbook="ping.yml"
    end
  end

  config.vm.define "em12c" , primary: true do |em12c|
    em12c.vm.box = "oel65-64"
    em12c.vm.hostname = "em12c.example.com"
    em12c.vm.synced_folder "E:/OFM", "/software"
    em12c.vm.synced_folder "R:/", "/ramdisk"

    em12c.vm.network :private_network, ip: "10.10.10.20"

    em12c.vm.provider :virtualbox do |vb|
      vb.memory = 8 * 1024
      vb.cpus = 2
      vb.name = "em12c"
      file_to_disk = "S:/VirtualBoxVMs/disk/100g.vdi"
      unless File.exist?(file_to_disk)
        vb.customize ['createhd', '--filename', file_to_disk, '--size', 100 * 1024]
      end
      vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
    end
  end

end
