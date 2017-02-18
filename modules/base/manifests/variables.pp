class base::variables {
  #file {'/root/var_test.txt':
  #  content  => $topscope,
  #  owner     => 'root',
  #  group     => 'root',
  #  mode      => '0644',
  #}

  $localvar = 'local var'
  $topscope = 'new topscope'
  $nodescope = 'new nodescope'

  #notify {"${topscope} is your topscope variable":}
  notify {"${::topscope} - within the variables class":}
  notify {"${nodescope} - within the variables class":}
  notify {"${localvar} - within the variables class":}
  notify {"${::operatingsystem} is your operating system":}
}
