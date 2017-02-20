class ntp::file {

  $template = $ntp::params::template
  $template = $ntp::params::default_servers

  file {'/etc/ntp.conf':
    ensure  => file,
    require => Package['ntp'],
    content => template ("ntp/${template}.erb"),
  }
}
