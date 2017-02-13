class filedemo {
  file {'/root/motd':
    ensure    => present,
    source    => 'puppet:///modules/filedemo/motd',
    #content  => 'this is my motdfile managed by content attribute',
    owner     => 'root',
    group     => 'root',
    mode      => '0644',
  }
  file {'/etc/motd':
    ensure  => link,
    target  => '/root/motd',
  }
}
