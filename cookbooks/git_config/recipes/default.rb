#
# Cookbook Name:: git_config
# Recipe:: default
#
# Copyright 2014, Virtual Forge GmbH
#
# All rights reserved - Do Not Redistribute
#
script "git config" do
  interpreter "bash"
  user "tdi"
  cwd "/home/tdi"
  code <<-EOH
    git config --global color.ui "auto"
    git config --global user.email "erich.prosche@virtualforge.com"
    git config --global user.name "Erich Prosche"
  EOH
end