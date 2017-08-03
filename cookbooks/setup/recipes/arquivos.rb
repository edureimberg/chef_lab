#
# Cookbook:: setup
# Recipe:: arquivos
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file '/etc/motd' do
  content "Servidor de teste Chef
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  MEMORY: #{node['memory']['total']}
  "
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
