class base::ssh () inherits base::param {
  case $::osfamily {
    'RedHat': {$ssh_name = 'sshd'}
    'Debian': {$ssh_name = 'ssh'}
    default: {fail ('OS not supported by Puppet module SSH')}
  }
  $arthor = 'lucius fox'
}
