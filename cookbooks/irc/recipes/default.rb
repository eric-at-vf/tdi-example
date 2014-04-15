#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, Virtual Forge GmbH
#
# All rights reserved - Do Not Redistribute

user "tdi" do
  action  :create
  comment "Test Driven Infrastructure"
  home  "/home/tdi"
  manage_home  true
  password  "$1$v9pK7Ple$pJq2JpW22fqJ62hsJ0e3c1"
  shell "/bin/bash"
 end

package "irssi" do
  action  :install
end

directory "/home/tdi/.irssi" do
  owner "tdi"
  group "tdi"
end

cookbook_file "/home/tdi/.irssi/config" do
  source  "irssi-config"
  owner "tdi"
  group "tdi"
end

file "/home/tdi/.bashrc" do
  action :create
  content "# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias l='ls -lat --color=auto'"
end