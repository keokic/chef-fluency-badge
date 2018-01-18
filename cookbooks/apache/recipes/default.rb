#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Install apache package
package 'apache2' do
	package_name 'httpd'
	action :install
end

# Enable and start service
service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

