#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


file "/myfile" do
  content 'Hello world'
  action :create
end


