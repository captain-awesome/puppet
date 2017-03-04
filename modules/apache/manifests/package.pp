# == Class: apache::package
#
class apache::package ($package_name = $apache::params::package_name) {
  package {'apache':
    ensure  => present,
    name    => $package_name,
  }
}
