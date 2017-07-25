# Encoding: utf-8

#
# Cookbook Name:: .
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'apt'
include_recipe 'java'

user node[:zap][:user]

download_tar_path = "#{Chef::Config['file_cache_path']}/zaproxy.tar.gz"

remote_file download_tar_path do
  source "https://github.com/zaproxy/zaproxy/releases/download/2.4.3/ZAP_2.4.3_Linux.tar.gz"
end

execute 'untar ZAP' do
  command "tar zxf #{download_tar_path} \
          --transform 's/^ZAP_#{node[:zap][:version]}/zap-#{node[:zap][:version]}/' \
          -C /opt"
end
