# Set Package resource defaults for OS X clients

class apps {
	$sourcedir="http://nate.adullmoment.com/puppet/pkg"
	
	Package{ ensure => installed, provider => pkgdmg,}

	package {"fraise3.7.3.dmg":
		source => "$sourcedir/fraise3.7.3.dmg",
	}

	package { "cyberduck":
		source => '$sourcedir/cyberduck361-20100908.dmg',
	}
}
