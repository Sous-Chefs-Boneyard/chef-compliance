chef-analytics Cookbook
=======================

[![Build Status](https://travis-ci.org/chef-cookbooks/chef-analytics.svg?branch=master)](https://travis-ci.org/chef-cookbooks/chef-analytics)
[![Cookbook Version](https://img.shields.io/cookbook/v/chef-analytics.svg)](https://supermarket.chef.io/cookbooks/chef-analytics)

This cookbook configures a system to be a standalone Chef Analytics Server. It
will install the appropriate platform-specific opscode-analytics Omnibus
package from Package Cloud and perform the initial configuration.


Requirements
------------
This cookbook is tested with  Chef (client) 12. It may work with or
without modification on earlier versions of Chef, but Chef 12 is
recommended.

This cookbook will also not properly install analytics unless you have copied
actions-source.json into /etc/opscode-analytics from your chef-server.

## Cookbooks

* chef-ingredient cookbook

## Platform

This cookbook is tested on the following platforms using the
[Test Kitchen](http://kitchen.ci) `.kitchen.yml` in the repository.

- Ubuntu 12.04 64-bit

Attributes
----------

#### chef-analytics::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-analytics']['version']</tt></td>
    <td>String</td>
    <td>What version of analytics to install</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-analytics']['package_source']</tt></td>
    <td>String</td>
    <td>Anything other than package cloud</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-analytics']['api_fqdn']</tt></td>
    <td>String</td>
    <td>FQDN of host</td>
    <td><tt>node['fqdn']</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-analytics']['configuration']</tt></td>
    <td>Hash</td>
    <td>Arbitrary config to add to opscode-analytics.rb</td>
    <td><tt>{}</tt></td>
  </tr>
</table>

Usage
-----
#### chef-analytics::default

Add chef-analytics to your run list.


# License and Authors

* Author: Elliott Davis <edavis@chef.io>
* Copyright 2012-2015, Chef Software, Inc

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
