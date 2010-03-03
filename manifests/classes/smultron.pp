# Set Package resource defaults for OS X clients

class apps {

	package {"smultron.dmg":
		source => "http://nate.adullmoment.com/puppet/smultron.dmg",
		provider => pkgdmg,
		ensure => present,
	}

	package {"cyberduck.dmg":
                source => "http://nate.adullmoment.com/puppet/cyberduck.dmg",
                provider => pkgdmg,
                ensure => present,
	}

	package {"git-1.7.0-intel-leopard.dmg":
                source => "http://nate.adullmoment.com/puppet/git-1.7.0-intel-leopard.dmg",
                provider => pkgdmg,
                ensure => present,
	}
    	package {"Firefox3.5.7.dmg":
                source => "http://nate.adullmoment.com/puppet/Firefox3.5.7.dmg",
                provider => pkgdmg,
                ensure => present,

	}

	package {"Dropbox0.7.97.dmg":
                source => "http://nate.adullmoment.com/puppet/Dropbox0.7.97.dmg",
                provider => pkgdmg,
                ensure => present,
	}

}
