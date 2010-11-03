# this class does the following:
# 1. sets ownership and mode on launchd file used to start sshd
# 2 ensures sshd_config file is present; if not or changed, replaces with copy stashed under /etc/puppet/files
# 3. enables and starts sshd, refreshing any time the sshd_config file changes 

class sshd_osx {
    file { "/System/Library/LaunchDaemons/ssh.plist":
        owner => root,
        group => wheel,
        mode => 644,
    }
	file { "/etc/sshd_config":
		ensure => present,
		source => "/etc/puppet/files/sshd_config",
		owner => root,
		group => wheel,
		mode => 644,
	}
    service { "com.openssh.sshd":
        #provider => launchd,
        enable => true,
        ensure => running,
        require => File["/System/Library/LaunchDaemons/ssh.plist"],
		subscribe => File["/etc/sshd_config"],
		
        }
		notice("started sshd")
    }