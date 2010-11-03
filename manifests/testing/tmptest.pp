file { "/tmp/test":
	ensure => file,
	mode => 755,
}

exec { "opener":
	command => "/usr/bin/open /tmp/; say 'it is open'",
}
notice("it is open")