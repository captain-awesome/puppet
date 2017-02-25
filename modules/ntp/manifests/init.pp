class ntp ($package = $ntp::params::package_name) inherits ntp::params {
  #could also be set as class ntp ($package = $ntp::params::package_name)
  #but the params class was defined in the node def in site.pp

  package {'ntp':
    ensure => present,
    name   => $package,
  }
  #include ntp::params (no longer necessary due to inheritance of params class)

  #include ntp::file (no longer necesary due to class below)
  class {'ntp::file': template => 'hello',}
  include ntp::service
}
