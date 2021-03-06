#
# Cookbook:: scm
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
template ' /etc/gcs-app/aplicacion.conf' do
  source "aplicacion.conf.erb"
  variables({
  :SLICK_DRIVER => node['scm']['SLICK_DRIVER'],
  :DRIVER => node['scm']['DRIVER'],
  :URL => node['scm']['URL'],
  :USER => node['scm']['USER'],
  :PASSWORD => node['scm']['PASSWORD']
  })
end

template ' /etc/nginx/nginx.conf' do
  source "nginx.conf.erb"
  variables({
  :IP_SERVER => node['scm']['IP_SERVER']
  })
end