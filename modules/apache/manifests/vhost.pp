define apache::vhost ($port, $document_root, $servername, $vhost_name = '*', $vhost_dir) {

  File {
    mode  => '0677'
  }

  file {'index':
    ensure  => file,
    path    => "${document_root}/index.html",
    content => template('apache/index.html.erb')
  }

  file  {'config_file':
    path    => "${vhost_dir}/${servername}.conf",
    content => template('apache/vhost.conf.erb'),
    require => Package['apache'],
    notify  => Service['apache'],
  }
}
