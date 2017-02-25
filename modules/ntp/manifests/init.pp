class ntp ($package) inherits ntp::params {

  package {'ntp':
    ensure => present,
    name   => $package,
  }
  #include ntp::params (no longer necessary due to inheritance of params class)
  include ntp::file
  include ntp::service
}
