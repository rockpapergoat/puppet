class folders {
    file { "/etc/config":
         ensure => directory,
         owner => "root",
         group => "wheel",
         mode => 644;
}
	file { "/tmp/puppet	":
         ensure => directory,
         owner => "n8",
         group => "staff",
         mode => 755,
    }
}