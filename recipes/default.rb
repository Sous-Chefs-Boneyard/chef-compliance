#
# Copyright:: Copyright (c) 2016 Brian Menges
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ruby_block 'ensure node can resolve API FQDN' do
  extend ChefComplianceCookbook::Helpers
  block { repair_api_fqdn }
  only_if { api_fqdn_available? }
  not_if { api_fqdn_resolves? }
end

chef_ingredient 'compliance' do
  channel node['chef-compliance']['channel'].to_sym
  version node['chef-compliance']['version'] unless node['chef-compliance']['version'].nil?
  package_source node['chef-compliance']['package_source']
  accept_license node['chef-compliance']['accept_license']
  action :upgrade
end

directory '/etc/chef-compliance' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

# create the initial chef-compliance config file
template '/etc/chef-compliance/chef-compliance.rb' do
  source 'chef-compliance.rb.erb'
  owner 'root'
  group 'root'
  action :create
  notifies :reconfigure, 'chef_ingredient[compliance]', :immediately
end

ingredient_config 'compliance' do
  notifies :reconfigure, 'chef_ingredient[compliance]', :immediately
end
