chef-compliance Cookbook
=======================

[![Build Status](https://travis-ci.org/sous-chefs/chef-compliance.svg?branch=master)](https://travis-ci.org/sous-chefs/chef-compliance)
[![Cookbook Version](https://img.shields.io/cookbook/v/chef-compliance.svg)](https://supermarket.chef.io/cookbooks/chef-compliance)

This cookbook configures a system to be a standalone Chef Compliance Server. It
will install the appropriate platform-specific compliance Omnibus
package from Package Cloud and perform the initial configuration.

Chef Supermarket: https://supermarket.chef.io/cookbooks/chef-compliance

Deprecated
----------

This cookbook is now deprecated since Chef no longer supports stand-alone installations of Chef Compliance. The product has now been integrated into [Chef Automate](https://www.chef.io/automate/)

Requirements
------------
This cookbook is tested with  Chef (client) 12. It may work with or
without modification on earlier versions of Chef, but Chef 12 is
recommended.

This cookbook will install Chef Compliance, but requires you to setup
the server by going to https://<host>/ and accepting the EULA.

## Cookbooks

* chef-ingredient cookbook

## Platform

This cookbook is tested on the following platforms using the
[Test Kitchen](http://kitchen.ci) `.kitchen.yml` in the repository.

- Ubuntu 12.04 64-bit

Attributes
----------

#### chef-compliance::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-compliance']['version']</tt></td>
    <td>String</td>
    <td>What version of compliance to install</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-compliance']['package_source']</tt></td>
    <td>String</td>
    <td>Anything other than package cloud</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-compliance ']['api_fqdn']</tt></td>
    <td>String</td>
    <td>FQDN of host</td>
    <td><tt>node['fqdn']</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-compliance']['configuration']</tt></td>
    <td>Hash</td>
    <td>Arbitrary config to add to chef-compliance.rb</td>
    <td><tt>{}</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-compliance']['accept_license']</tt></td>
    <td>Boolean</td>
    <td>Indication that you accept the Chef MLSA</td>
    <td><tt>false</tt></td>
  </tr>
</table>

Usage
-----
#### chef-compliance::default

Add chef-compliance to your run list and accept the license agreement by setting `node['chef-compliance']['accept_license'] = true`


# License and Authors

* Author: Brian Menges <mengesb@users.noreply.github.com>
* Maintainer: Sous Chefs
* Copyright 2016, Apache v2

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
