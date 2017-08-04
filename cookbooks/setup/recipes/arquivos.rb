#
# Cookbook:: setup
# Recipe:: arquivos
#
# Copyright:: 2017, The Authors, All Rights Reserved.

template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  mode '0755'
  variables(
    :name => 'Eduardo'
  )
  action :create
end
