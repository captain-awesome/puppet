class base::ssh {

  package {'openssh-package':
    ensure  => present,
    name    => 'openssh-server',
    #before  => File['/etc/ssh/sshd_config'],
  }

  file {'/etc/ssh/sshd_config':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    source  => 'puppet:///modules/base/sshd_config',
    require => Package['openssh-package'],
    notify  => Service['ssh-service'],
  }

  service {'ssh-service':
    ensure  => running,
    name    => $base::params::ssh_name,
    enable  => true,
    #subscribe => File['/etc/ssh/sshd_config'],
  }
}
