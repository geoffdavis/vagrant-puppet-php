include 'php'
include 'apache'
include 'php::apache'
include 'php::devel'

class { 'antelope::php':
  version => '5.2-64',
}
