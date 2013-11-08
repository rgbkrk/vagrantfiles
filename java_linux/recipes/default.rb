#
# Cookbook Name:: java_linux
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# Note, this is fast and loose get jclouds up with the examples on a vagrant box (abusing defaults)

package "git" do
  action :install
end

# https://github.com/jclouds/jclouds-examples/tree/master/rackspace

git "/home/vagrant/jclouds-examples" do
  repository 'https://github.com/jclouds/jclouds-examples.git'
  reference 'master'
  action :sync
end

bash "Get dependencies for jclouds examples" do
  user "vagrant"
  cwd "/home/vagrant/jclouds-examples/rackspace"
  code <<-EOH
  mvn dependency:copy-dependencies "-DoutputDirectory=./lib" "-Dclassifier=sources"
  EOH
end
