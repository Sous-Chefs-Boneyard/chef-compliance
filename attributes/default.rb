#
# Cookbook Name:: chef-compliance
# Attributes:: default
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
#
default['chef-compliance']['version'] = nil
default['chef-compliance']['package_source'] = nil
default['chef-compliance']['channel'] = :stable

# The Chef Compliance Server must have an API FQDN set.
# https://docs.chef.io/install_compliance.html
default['chef-compliance']['api_fqdn'] = node['fqdn']

#
# Chef Server Tunables
#
# For a complete list see:
# https://docs.chef.io/install_compliance.html
# Example:
#
# In a recipe:
#
#   node.override['chef-compliance']['configuration']['nginx']['ssl_port'] = 4433
#
# In a role:
#
#   default_attributes(
#     'chef-compliance' => {
#       'configuration' => {
#         'ssl' => {
#           'certificate' => '/path/to/certificate.crt',
#           'certificate_key' => '/path/to/certificate.key'
#         }
#       }
#     }
#   )
#
default['chef-compliance']['configuration'] = {}
