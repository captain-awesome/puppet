define apache::vhost ($port, $document_root, $servername, $vhost_name = '*', $vhost_dir) {

  File {
    mode  => '0677'
  }

  file {'index':
    ensure  => file,
    path    =>  "${document_root}/index.html",
    content => template('index.html.erb')
  }

  file  {'config/file':
    path  => "${vhost_dir}/${servername}.conf",
    content => template('vhost.conf.erb'),
    require => Package['apache'],
    notify  => Service['apache'],
  }
}
