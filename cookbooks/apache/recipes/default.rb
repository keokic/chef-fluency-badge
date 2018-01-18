#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
	package = "httpd"
elseif node['platform_family'] == "devian"
	package = "apahe2"
end

package 'apache2' do
	package_name package
	action :install
end

# Enable and start service
service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

