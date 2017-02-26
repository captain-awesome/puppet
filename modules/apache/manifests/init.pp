# == Class: apache
#
class apache {
  package {'http':
    ensure => present,
  }
}
