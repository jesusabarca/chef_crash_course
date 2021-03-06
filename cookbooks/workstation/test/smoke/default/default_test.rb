# # encoding: utf-8

# Inspec test for recipe workstation::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

#unless os.windows?
  # This is an example test, replace with your own test.
  #describe user('root'), :skip do
    #it { should exist }
  #end
#end

# This is an example test, replace it with your own test.
#describe port(80), :skip do
  #it { should_not be_listening }
#end

describe package('tree') do
  it { should be_installed }
end

describe file('/etc/motd') do
  it { should exist }
  its('content') { should match 'Property of ...' }
  its('content') { should match %r[IPADDRESS:\s\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}] }
  its('content') { should match %r[HOSTNAME\s*:\s(\d|\w)+] }
  its('content') { should match %r[MEMORY\s*:\s\d+kB] }
  its('content') { should match %r[CPU\s*:\s\d+\.\d+] }
end
