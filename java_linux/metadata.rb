name             'java_linux'
maintainer       'Kyle Kelley'
maintainer_email 'kyle.kelley@rackspace.com'
license          'Apache 2.0'
description      'Installs/Configures java on a linux box'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apt", "~> 2.0.0"
depends "java", "~> 1.15.4"
depends "maven", "~> 1.0.1"
