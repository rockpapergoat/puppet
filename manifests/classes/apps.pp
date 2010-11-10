# Set Package resource defaults for OS X clients

class apps {
	$sourcedir="http://nate.adullmoment.com/puppet/pkg"
	$firefox="http://ftp.halifax.rwth-aachen.de/mozilla/firefox/releases/3.6.12/mac/en-US/Firefox%203.6.12.dmg"
	$dropbox="http://cdn.dropbox.com/Dropbox%200.7.110.dmg"
	$selfcontrol="http://github.com/downloads/slambert/selfcontrol/SelfControl-1.3.zip"
	
	Package{ ensure => installed, provider => pkgdmg,}

	package {"fraise3.7.3.dmg":
		source => "$sourcedir/fraise3.7.3.dmg",
	}
	package { "cyberduck":
		source => '$sourcedir/cyberduck361-20100908.dmg',
	}
	package { "firefox":
		source => $firefox,
	}
	package { "dropbox":
		source => $dropbox,
	}
	package { "selfcontrol":
		source => $selfcontrol,
	}
}
