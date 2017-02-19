class panda {

  # realize File['/tmp/2']
  File  <| tag == 'files' |>

  File {
    ensure  => file,
    content => 'value',
    mode    => '0644'
  }

  file { '/tmp/1':
    tag => 'files',
  }

  @file { '/tmp/2':
  }

  @file { '/tmp/3':
  }

  @file { '/tmp/4':
    tag => 'files',
  }

  @file { '/tmp/5':
  }

  @file { '/tmp/6':
    tag => 'files',
  }
}
