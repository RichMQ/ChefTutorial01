package 'vim-enhanced'

package 'emacs'

package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

service 'ntpd' do
  action [:enable, :start]
end

file '/etc/motd' do
  content 'This computer is the property of Richard...'
  action :create
  mode  '0655'
  owner 'root'
  group 'root'
end


