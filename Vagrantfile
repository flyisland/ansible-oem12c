# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "ah" , primary: true do |ah| # ansible host
    # https://googledrive.com/host/0B4tZlTbOXHYWVGpHRWZuTThGVUE/centos65_virtualbox_50G.box
    ah.vm.box = "centos65_virtualbox_50G"
    ah.vm.hostname = "ansible.example.com"
    ah.vm.synced_folder "D:/DevProjects", "/DevProjects"
    ah.vm.synced_folder "R:/", "/ramdisk"

    ah.vm.network :private_network, ip: "10.10.10.9"
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

  config.vm.define "wls1" , primary: true do |wls1|
    wls1.vm.box = "oel65-64"
    wls1.vm.hostname = "wls1.example.com"
    wls1.vm.synced_folder "E:/OFM", "/software"
    wls1.vm.synced_folder "R:/", "/ramdisk"

    wls1.vm.network :private_network, ip: "10.10.10.30"

    wls1.vm.provider :virtualbox do |vb|
      vb.memory = 2 * 1024
      vb.cpus = 2
      vb.name = "wls1"
    end
  end

  config.vm.define "wls2" , primary: true do |wls2|
    wls2.vm.box = "oel65-64"
    wls2.vm.hostname = "wls2.example.com"
    wls2.vm.synced_folder "E:/OFM", "/software"
    wls2.vm.synced_folder "R:/", "/ramdisk"

    wls2.vm.network :private_network, ip: "10.10.10.40"

    wls2.vm.provider :virtualbox do |vb|
      vb.memory = 2 * 1024
      vb.cpus = 2
      vb.name = "wls2"
    end
  end

  config.vm.define "bpm11g" , primary: true do |bpm11g|
    bpm11g.vm.box = "oel65-64"
    bpm11g.vm.hostname = "bpm11g.example.com"
    bpm11g.vm.synced_folder "E:/OFM", "/software"
    bpm11g.vm.synced_folder "R:/", "/ramdisk"

    bpm11g.vm.network :private_network, ip: "10.10.10.50"

    bpm11g.vm.provider :virtualbox do |vb|
      vb.memory = 4 * 1024
      vb.cpus = 2
      vb.name = "bpm11g"
      file_to_disk = "E:/VBoxVMs/disk/bpm11g100g.vdi"
      unless File.exist?(file_to_disk)
        vb.customize ['createhd', '--filename', file_to_disk, '--size', 100 * 1024]
      end
      vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
    end
  end

  config.vm.define "soa11g" , primary: true do |soa11g|
    soa11g.vm.box = "oel65-64"
    soa11g.vm.hostname = "soa11g.example.com"
    soa11g.vm.synced_folder "E:/OFM", "/software"
    soa11g.vm.synced_folder "R:/", "/ramdisk"

    soa11g.vm.network :private_network, ip: "10.10.10.60"

    soa11g.vm.provider :virtualbox do |vb|
      vb.memory = 2 * 1024
      vb.cpus = 2
      vb.name = "soa11g"
      file_to_disk = "E:/VBoxVMs/disk/soa11g100g.vdi"
      unless File.exist?(file_to_disk)
        vb.customize ['createhd', '--filename', file_to_disk, '--size', 100 * 1024]
      end
      vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
    end
  end

end
