#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'root'
  mode '0755'
  action :create
end

service 'apache2' do
  action [ :enable, :start]
end
