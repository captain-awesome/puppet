class base {
  $dnsutils = $osfamily ? {
    'RedHat'  => 'bind-utils'.
    'Debian'  => 'dnsutils',
  }
  package {['tree', $dnsutils]:
    ensure => present,
  }
}
