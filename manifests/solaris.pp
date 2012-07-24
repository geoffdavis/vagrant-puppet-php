import 'osfamily.pp'

package { pkgutil:
  ensure   => latest,
  provider => 'pkgutil',
}

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

include 'logrotate'
include 'php'
include 'apache'
include 'php::apache'
include 'php::devel'
include 'perl::apache'

Class['logrotate'] -> Class['apache']
class { 'antelope::php':
  version => '5.2-64',
}
