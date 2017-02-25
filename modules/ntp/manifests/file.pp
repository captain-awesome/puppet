class ntp::file ($template = $ntp::params::template, $servers = $ntp::params::default_servers) inherits ntp{

  notify {"this is a template variable is now ${template}":}
  # $template = $ntp::params::template (if enabled, will error and produce cannot reassign error)
  # $servers = $ntp::params::default_servers (if enabled, will error and produce cannot reassign error)

  file {'/etc/ntp.conf':
    ensure  => file,
    require => Package['ntp'],
    #content => template ("ntp/${template}.erb"),
  }
}
