#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

file '/var/www/html/index.html' do
  content '<h1>Página de teste</h1>'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

service 'apache2' do
  action [ :enable, :start]
end
