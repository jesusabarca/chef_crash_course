package 'tree' do
  action :install
end

file '/etc/motd' do
  content 'Sup!'
end
