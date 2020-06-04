#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


package 'tree' do
  action :install
end


file 'myfile2' do
  content 'My arjit is growing'
  action :create
  owner 'root'
  group 'root'
end



%w(httpd git tree mariadb-server vim) .each do |p|
  package p do
  action :install
  end
end


%w(rekha) .each do |a|
  user a
end

