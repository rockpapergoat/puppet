# Class: versioncontrol
# installs current git and mercurial
# 101103
class versioncontrol {
	package { "mercurial":
		ensure => installed,
		source => "http://nate.adullmoment.com/puppet/mercurial-1.7.dmg",
	}
	package { "git":
		ensure => installed,
		source => "http://git-osx-installer.googlecode.com/files/git-1.7.3.1-intel-leopard.dmg",
	}
}

# testing, uncomment below
#include versioncontrol