class ntp::file {

  case  $::operatingsystem {
    'ubuntu': {$template = 'ntp_unbuntu.conf'}
    'centos': {$template = 'ntp_centos.conf'}
    default:  {fail('OS $::operatingsystem is not currently supported')}
  }

  file {'/etc/ntp.conf':
    ensure  => file,
    require => Package['ntp'],
    content => template ("ntp/${template}.erb"),
  }
}
