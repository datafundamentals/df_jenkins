
# points to local binary for setup with Rhel
case node['platform_family']
when "rhel"
default['jenkins']['url'] = "/vagrant/binaries/jenkins-1.580.3-1.1.noarch.rpm"
when "debian"
	default['jenkins']['url'] = "/vagrant/binaries/jenkins_1.580.3_all.deb"
# For mirror list of other types
# look here http://mirrors.jenkins-ci.org/