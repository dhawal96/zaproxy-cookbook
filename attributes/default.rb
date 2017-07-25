# Encoding: utf-8

default[:zap][:config_dir]  = '/home/zaproxy/.ZAP/'
default[:zap][:working_dir] = '/opt/zap'
default[:zap][:user]        = 'zaproxy'
default[:zap][:group]       = 'zaproxy'
default[:zap][:version]     = '2.4.3'
default[:zap][:checksum]    = '12d101d2a9b35edd2574f8e7e140da5bfc0a726d'
default[:zap][:port]        = 9090

override[:java][:jdk_version] = '7'
