# Set Package resource defaults for OS X clients

class apps {

	package {"fraise3.7.3.dmg":
		source => "http://nate.adullmoment.com/puppet/fraise3.7.3.dmg",
		provider => pkgdmg,
		ensure => present,
	}

	package {"cyberduck3.5.dmg":
                source => "http://nate.adullmoment.com/puppet/cyberduck3.5.dmg",
                provider => pkgdmg,
                ensure => present,
	}

	package {"mercurial-1.5.4_20100601-py2.6-macosx10.6.dmg":
                source => "http://nate.adullmoment.com/puppet/mercurial-1.5.4_20100601-py2.6-macosx10.6.dmg",
                provider => pkgdmg,
                ensure => present,
	}
}
