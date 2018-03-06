name             'chef-compliance'
maintainer       'Sous Chefs'
maintainer_email 'help@sous-chefs.io'
license          'Apache-2.0'
description      'Installs/Configures chef-compliance'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/sous-chefs/chef-compliance' if respond_to?(:source_url)
issues_url       'https://github.com/sous-chefs/chef-compliance/issues' if respond_to?(:issues_url)

version '0.1.6'

depends 'chef-ingredient', '>= 0.18.4'
