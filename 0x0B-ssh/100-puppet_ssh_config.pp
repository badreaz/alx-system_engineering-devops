# create ssh config file
file_line { 'Declare identify file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '	IdentifyFile ~/.ssh/school',
}

file_line { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '	PasseordAuthentification no',
}
