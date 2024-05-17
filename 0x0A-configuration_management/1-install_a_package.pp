<<<<<<< HEAD
#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
=======
# install puppet-lint -v 2.5.0

exec { 'puppet-lint':
  command => '/usr/bin/apt-get -y install puppet-lint -v 2.5.0',
>>>>>>> 00b3190022d7b32cf1f57d15757ffea66ba0cd1a
}
