import 'osfamily.pp'

file { '/usr/local':
  ensure => directory,
  owner  => 'root',
  group  => 'bin',
  mode   => '0755',
}

file { ['/usr/local/bin','/usr/local/sbin'] :
  ensure  => directory,
  owner   => 'root',
  group   => 'bin',
  mode    => '0755',
  require => File['/usr/local'],
  before  => Class['apache'],
}

include 'php'
include 'apache'
include 'php::apache'
include 'php::devel'

class { 'antelope::php':
  version => '5.2-64',
}
