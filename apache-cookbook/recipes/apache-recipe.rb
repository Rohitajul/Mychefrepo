#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


package 'httpd' do
  action :install
end


file '/var/www/html/index.html' do
  content '<h1> In 2020 BEFORE NOVEMBER I WILL BE AN OFFICIAL DEVOPS ENGINEER AND WILL RULE THE WORLD </h1>'
  action :create
end 


service 'httpd' do
  action [:enable, :start]
end


