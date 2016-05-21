Vagrant.configure("2") do |config|
        config.vm.define "app1" do |app1|
	        app1.vm.network "private_network", ip: "10.0.0.3"
	 	app1.vm.box = "debian/jessie64"
	        app1.vm.hostname = "app1"
#	        app1.vm.provider "virtualbox" do |vb|
#		        vb.customize [
#		          "--cpuexecutioncap", "100",
#		          "--memory", "1024",
#			]
#		end
		app1.vm.provision "shell", path: "./puppet_agent_provision.sh"
                app1.vm.provision "shell", path: "./provision.sh"
        end
        config.vm.define "sql1" do |sql1|
                sql1.vm.network "private_network", ip: "10.0.0.4"
                sql1.vm.box = "debian/jessie64"
                sql1.vm.hostname = "sql1"
#               sql1.vm.provider "virtualbox" do |vb|
#                        vb.customize [
#                         "--cpuexecutioncap", "100",
#                          "--memory", "1024",
#                        ]
#                end
                sql1.vm.provision "shell", path: "./puppet_agent_provision.sh"
                sql1.vm.provision "shell", path: "./provision.sh"
        end
        config.vm.define "red1" do |red1|
                red1.vm.network "private_network", ip: "10.0.0.5"
                red1.vm.box = "debian/jessie64"
                red1.vm.hostname = "red1"
#               red1.vm.provider "virtualbox" do |vb|
#                        vb.customize [
#                         "--cpuexecutioncap", "100",
#                          "--memory", "1024",
#                        ]
#                end
                red1.vm.provision "shell", path: "./puppet_master_provision.sh"
                red1.vm.provision "shell", path: "./provision.sh"
        end
        config.vm.define "prx1" do |prx1|
                prx1.vm.network "private_network", ip: "10.0.0.2"
                prx1.vm.box = "kaorimatz/openbsd-5.8-amd64"
                prx1.vm.hostname = "prx1"
#               prx1.vm.provider "virtualbox" do |vb|
#                        vb.customize [
#                          "modifyvm", :id,
#                         "--cpuexecutioncap", "100",
#                          "--memory", "1024",
#                        ]
#                end
                prx1.vm.provision "shell", path: "./provision.sh"
        end
end
