# manage and/or schedule software updates
class swupd {
	exec { swupd:
	path => ["/bin", "/usr/bin", "/usr/sbin"],
	onlyif => "test `softwareupdate -l` != 'No new software available.'",
	command => "say 'you have updates'", #"/usr/sbin/softwareupdate -i -a && reboot",
	logoutput => true,
	}
}
include swupd