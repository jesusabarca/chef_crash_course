package 'httpd'

file '/var/www/html/index.html' do
  content "<h1>Hello, world!</h1><br/><h2>#{node['ipaddress']}</h2><br/><h2>#{node['hostname']}</h2>"
end

service 'httpd' do
  action [:start, :enable]
end
