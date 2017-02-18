class base::variables {
  #file {'/root/var_test.txt':
  #  content  => $topscope,
  #  owner     => 'root',
  #  group     => 'root',
  #  mode      => '0644',
  #}
  $localvar = 'local var'
  $topscope = 'this is you new topscope variable within the variables class'

  notify {"${topscope} is your topscope variable":}
  notify {"${nodescope} is your nodescope variable":}
  notify {"${localvar} is your local var variable":}
  notify {"${::operatingsystem} is your operating system":}
}
