# Encoding: utf-8

#
# Cookbook Name:: .
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#https://zaproxy.googlecode.com/files/ZAP_#{node[:zap][:version]}_Linux.tar.gz

include_recipe 'apt'
include_recipe 'java'

user node[:zap][:user]

download_tar_path = "#{Chef::Config['file_cache_path']}/zaproxy.tar.gz"

remote_file download_tar_path do
  source "https://github.com/zaproxy/zaproxy/releases/download/2.4.3/ZAP_2.4.3_Linux.tar.gz"
  checksum node[:zap][:checksum]
end

execute 'untar ZAP' do
  command "tar zxf #{download_tar_path} \
          --transform 's/^ZAP_#{node[:zap][:version]}/zap-#{node[:zap][:version]}/' \
          -C /opt"
end

directory "#{node[:zap][:working_dir]}-#{node[:zap][:version]}" do
  owner node[:zap][:user]
  group node[:zap][:group]
  mode 00755
  recursive true
end

link node[:zap][:working_dir] do
  to "#{node[:zap][:working_dir]}-#{node[:zap][:version]}"
end

directory node[:zap][:config_dir] do
  owner node[:zap][:user]
  group node[:zap][:group]
  recursive true
end

file "#{node[:zap][:config_dir]}/AcceptedLicense" do
  owner node[:zap][:user]
  group node[:zap][:group]
end

include_recipe 'bluepill'

working_dir = node[:zap][:working_dir]
directory working_dir do
  owner node[:zap][:user]
  group node[:zap][:group]
  recursive true
end

template "#{node[:bluepill][:conf_dir]}/zaproxy.pill" do
  variables(
    working_dir: working_dir
  )
  notifies :reload, 'bluepill_service[zaproxy]', :delayed
end

bluepill_service 'zaproxy' do
  action [:enable, :load, :start]
end
