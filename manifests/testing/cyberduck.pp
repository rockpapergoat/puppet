# set defaults
Package{ensure => installed, provider => pkgdmg}

package { "cyberduck":
	source => 'http://nate.adullmoment.com/pkg/cyberduck361-20100908.dmg',
}