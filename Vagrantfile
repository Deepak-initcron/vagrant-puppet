Vagrant.configure("2") do |config|
        config.vm.define "app1.uslax.prd.exactnote.com" do |app1.uslax.prd.exactnote.com|
	        app1.uslax.prd.exactnote.com.vm.network "private_network", ip: "10.0.0.3"
	 	app1.uslax.prd.exactnote.com.vm.box = "debian/jessie64"
	        app1.uslax.prd.exactnote.com.vm.hostname = "app1.uslax.prd.exactnote.com"
#	        app1.uslax.prd.exactnote.com.vm.provider "virtualbox" do |vb|
#		        vb.customize [
#		          "--cpuexecutioncap", "100",
#		          "--memory", "1024",
#			]
#		end
		app1.uslax.prd.exactnote.com.vm.provision "shell", path: "./puppet_agent_provision.sh"
                app1.uslax.prd.exactnote.com.vm.provision "shell", path: "./provision.sh"
        end
        config.vm.define "sql1.uslax.prd.exactnote.com" do |sql1.uslax.prd.exactnote.com|
                sql1.uslax.prd.exactnote.com.vm.network "private_network", ip: "10.0.0.4"
                sql1.uslax.prd.exactnote.com.vm.box = "debian/jessie64"
                sql1.uslax.prd.exactnote.com.vm.hostname = "sql1.uslax.prd.exactnote.com"
#               sql1.uslax.prd.exactnote.com.vm.provider "virtualbox" do |vb|
#                        vb.customize [
#                         "--cpuexecutioncap", "100",
#                          "--memory", "1024",
#                        ]
#                end
                sql1.uslax.prd.exactnote.com.vm.provision "shell", path: "./puppet_agent_provision.sh"
                sql1.uslax.prd.exactnote.com.vm.provision "shell", path: "./provision.sh"
        end
        config.vm.define "red1.uslax.prd.exactnote.com" do |red1.uslax.prd.exactnote.com|
                red1.uslax.prd.exactnote.com.vm.network "private_network", ip: "10.0.0.5"
                red1.uslax.prd.exactnote.com.vm.box = "debian/jessie64"
                red1.uslax.prd.exactnote.com.vm.hostname = "red1.uslax.prd.exactnote.com"
#               red1.uslax.prd.exactnote.com.vm.provider "virtualbox" do |vb|
#                        vb.customize [
#                         "--cpuexecutioncap", "100",
#                          "--memory", "1024",
#                        ]
#                end
                red1.uslax.prd.exactnote.com.vm.provision "shell", path: "./puppet_master_provision.sh"
                red1.uslax.prd.exactnote.com.vm.provision "shell", path: "./provision.sh"
        end
        config.vm.define "prx1.uslax.prd.exactnote.com" do |prx1.uslax.prd.exactnote.com|
                prx1.uslax.prd.exactnote.com.vm.network "private_network", ip: "10.0.0.2"
                prx1.uslax.prd.exactnote.com.vm.box = "kaorimatz/openbsd-5.8-amd64"
                prx1.uslax.prd.exactnote.com.vm.hostname = "prx1.uslax.prd.exactnote.com"
#               prx1.uslax.prd.exactnote.com.vm.provider "virtualbox" do |vb|
#                        vb.customize [
#                          "modifyvm", :id,
#                         "--cpuexecutioncap", "100",
#                          "--memory", "1024",
#                        ]
#                end
                prx1.uslax.prd.exactnote.com.vm.provision "shell", path: "./provision.sh"
        end
end
