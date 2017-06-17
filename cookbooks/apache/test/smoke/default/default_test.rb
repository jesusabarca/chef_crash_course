# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe port(80) do
  it { should be_listening }
end

describe service('httpd') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

describe file('/var/www/html/index.html') do
  it { should exist }
  its('content') { should match '<h1>Hello, world!</h1>' }
  its('content') { should match %r[IP\saddress:\s\d{3}\.\d{3}\.\d{3}\.\d{3}] }
  its('content') { should match %r[Hostname:\s(\d|\w)] }
end
