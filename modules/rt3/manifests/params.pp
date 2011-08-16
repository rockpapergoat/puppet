# 110615, parameters used to configure and install request tracker

# Class: rt3::params
#
#
class rt3::params {
	case $operatingsystem {
		/(Ubuntu|Debian)/: {
			$rt3_pkg_name = 'request-tracker3.8'
		}
		/(RedHat|CentOS|Fedora)/: {
			$rt3_pkg_name = 'rt3'
		}
	}
}