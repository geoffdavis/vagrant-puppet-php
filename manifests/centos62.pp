if $::osfamily == 'RedHat' {
  package { 'redhat-lsb' : ensure => installed }
}

if $::kernel == 'Linux' and $::lsbmajdistrelease {
  include 'php'
  include 'apache'
  include 'php::apache'
  include 'php::devel'
} else {
  notice('The lsbmajdistrelease fact is not available. Not provisioning php or apache on this run')
}
