#
# Cookbook Name:: df_jenkins
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# first the java program needs to be installed before anything

# next we need to install the software properly for ubuntu type systems.
case node['platform_family']
when "rhel"
package "jenkins" do 
	source node['jenkins']['url']
	action :install 
end

service "jenkins" do 
	action [:enable, :start]
end
when "debian"
	execute "update" do 
		command "sudo apt-get update"
	end
	package "jenkins" do 
		source node['jenkins']['url']
		action :install
	end
	service "jenkins" do 
		action [:enable, :start]
	end
end
