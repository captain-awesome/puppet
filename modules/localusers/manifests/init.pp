class localusers {
  user {'admin':
    ensure      => present,
    shell       => '/bin/bash',
    home        => '/home/admin',
    gid         => 'wheel',
    managehome  => true,
    password    => '$6$mZF8RayN$JX4C17AosL0HA1ikjx4Pt3SKiZqIoCdeq.IkD.Vax4.l/.LL7gLTe/FuNfflUft5kMHlyI6J7SRHakBgfdtkp1',
  }

  user {'jeff':
    ensure      => present,
    shell       => '/bin/bash',
    home        => '/home/jeff',
    groups      => ['wheel', 'finance'],
    managehome  => true,
  }
}
