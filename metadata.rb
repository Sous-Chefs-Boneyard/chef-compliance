name 'chef-compliance'
maintainer 'Brian Menges'
maintainer_email 'mengesb@users.noreply.github.com'
license 'Apache 2.0'
description 'Installs/Configures chef-compliance'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.4'

depends 'chef-ingredient', '>= 0.18.4'

source_url 'https://github.com/mengesb/chef-compliance' if respond_to?(:source_url)
issues_url 'https://github.com/mengesb/chef-compliance/issues' if respond_to?(:issues_url)
