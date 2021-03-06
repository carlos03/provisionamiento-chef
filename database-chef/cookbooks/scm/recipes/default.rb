#
# Cookbook:: scm
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

template ' /var/lib/pgsql/pg_hba.conf' do
  source "pg_hba.conf.erb"
  owner 'postgres'
  group 'postgres'
  mode '0755'
  variables({
  :IP_DATABASE => node['scm']['IP_DATABASE']
  })
end

template ' /var/lib/pgsql/postgresql.conf' do
  source "postgresql.conf.erb"
  owner 'postgres'
  group 'postgres'
  mode '0755'
  variables({
  :IP_LISTEN => node['scm']['IP_LISTEN']
  })
end