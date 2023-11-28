# setup nginx and redirect '/redirect_me'

package { 'nginx':
	ensure => installed,
}

file { '/var/www/html/index.html':
	content => "Hello World!",
}

nginx::resource::location { '/redirect_me':
	location => '/redirect_me',
	ensure   => present,
	return   => '301 https://www.youtube.com/watch?v=QH2-TGUlwu4',
	server   => 'default',
}

nginx::resource::server {'default':
	listen => '80',
}

service { 'nginx':
	ensure  => running,
}
