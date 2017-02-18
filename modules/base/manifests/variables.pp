class base::variables {
  #file {'/root/var_test.txt':
  #  content  => $topscope,
  #  owner     => 'root',
  #  group     => 'root',
  #  mode      => '0644',
  #}

  $localvar = 'local var'
  $topscope = 'this is your new top scope variable within the variables class'
  $nodescope = 'this is your new node scope variable with the variables class'

  #notify {"${topscope} is your topscope variable":}
  notify {"${::topscope} is your top scope variable":}
  notify {"${nodescope} is your node scope variable":}
  notify {"${localvar} is your local var variable":}
  notify {"${::operatingsystem} is your operating system":}
}
