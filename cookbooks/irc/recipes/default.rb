#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
#
#

user 'tdi' do
  action :create
  comment "Test Driven Infrastructure"
  home "/Users/tdi"
end

package 'imagemagick' do
  action :install
  provider Chef::Provider::Package::Homebrew
end

directory '/Users/tdi/.irssi' do
  action :create
  owner 'tdi'
  recursive true
end

cookbook_file '/Users/tdi/.irssi/config' do
  source 'irssi-config'
  owner 'tdi'
end
