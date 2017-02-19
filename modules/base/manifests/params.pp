class base::params {
  case $::osfamily {
    'RedHat': {$ssh_name = 'sshd'}
    'Debian': {$ssh_name = 'ssh'}
    default: {fail ('OS not supported by Puppet module SSH')}
  }
  $arthur = 'lucius fox'
}
