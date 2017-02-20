class ntp::service {

  service {'ntp_service':
    ensure    => running,
    name      => $ntp::params::service_name,
    enable    => true,
    subscribe => File['/etc/ntp.conf'],
  }
}
