# 101107, manage the swupd server URL for each release
# moved some of these details to custom facts

class swupd_server {
	#$swupdserver = "http://swupd.adullmoment.com:8088"
	$defaults = "/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL "
	
	exec { '$defaults $swupdserver/$swupd_catalog':
		command => "$defaults $swupdserver/$swupd_catalog",
	}
}	
	
	
#	exec { swupd:
#	path => ["/bin", "/usr/bin", "/usr/sbin"],
#	onlyif => "test `softwareupdate -l` != 'No new software available.'",
#	command => "say 'you have updates'", #"/usr/sbin/softwareupdate -i -a && reboot",
#	logoutput => true,
#	}

#include swupd_server