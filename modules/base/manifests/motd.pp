class base::motd {

  $arthur = 'lucius'

  file {'/etc/motd':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    content => temaplate('base/motd.erb'),
    mode    => '0644',
    }
  }
}
