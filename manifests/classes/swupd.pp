# manage and/or schedule software updates

class swupd {
	exec { swupd:
	command => "/usr/sbin/softwareupdate -i -a && reboot",
	logoutput => true,
	}
}