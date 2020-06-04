#
# Cookbook:: apache-cookbook
# Recipe:: configuration
#
# Copyright:: 2020, The Authors, All Rights Reserved.


file 'myconfig' do
  content "kindly show these parameters 
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end

execute "run a script" do
  command <<-EOH
  mkdir /ajul
  touch /ajul22
  EOH
end


user 'rohit' do
  action :create
end

group 'DevOps' do
  action :create
  members 'rohit'
  append true
end



