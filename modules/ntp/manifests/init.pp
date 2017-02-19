class ntp {

  package {'ntp':,
    ensure => present
  }

  include ntp::file
}
