class ntp ($package = $ntp::params::package) inherits ntp::params {

  package {$package:
    ensure => present,
  }
  #include ntp::params (no longer necessary due to inheritance of params class)
  include ntp::file
  include ntp::service
}
