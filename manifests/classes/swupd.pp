# manage and/or schedule software updates

class swupd {
	exec { swupd:
	onlyif => "/usr/sbin/softwareupdate -l | grep 'No updates'",
	command => "/usr/sbin/softwareupdate -i -a && reboot",
	logoutput => true,
	}
}