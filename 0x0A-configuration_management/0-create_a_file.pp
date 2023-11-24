file { '/tmp/school':
  content => 'I love Puppet',
  group   => 'www-data',
  mode    => '0774',
  owner   => 'www-data',
}
