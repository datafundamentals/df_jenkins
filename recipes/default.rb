#
# Cookbook Name:: df_jenkins
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# first the java program needs to be installed before anything

include_recipe "df_java::default"


# next we need to install the software properly for ubuntu type systems.

package "jenkins" do 
	source node['jenkins']['url']
	action :install 
end

service "jenkins" do 
	action [:enable, :start]
end
