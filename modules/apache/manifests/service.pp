# == Class: apache::service
#
class apache::service ($service_name = $apache::params::service_name) {
  service {'apache':
    ensure  => running,
    name    => $service_name,
    enable  => running,
    require => Package['apache'],
  }
}
