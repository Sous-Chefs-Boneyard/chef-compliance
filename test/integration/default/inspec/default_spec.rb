# encoding: utf-8

# Inspec test for recipe chef-compliance::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe file('/proc/sys/kernel/hostname') do
  its(:content) { should match(/^compliance.localdomain.local$/) }
end

describe package('chef-compliance') do
  it { should be_installed }
end

describe file('/etc/chef-compliance/chef-compliance.rb') do
  it { should exist }
  it { should be_file }
  its(:content) { should match(/^topology "standalone"$/) }
  its(:content) { should match(/^compliance_fqdn "compliance.localdomain.local"$/) }
end

describe command('chef-compliance-ctl status') do
  its(:exit_status) { should eq 0 }
end

describe runit_service('core', '/opt/chef-compliance/embedded/bin/sv') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

describe runit_service('dex-overlord', '/opt/chef-compliance/embedded/bin/sv') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

describe runit_service('dex-worker', '/opt/chef-compliance/embedded/bin/sv') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

describe runit_service('nginx', '/opt/chef-compliance/embedded/bin/sv') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

describe runit_service('postgresql', '/opt/chef-compliance/embedded/bin/sv') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end
