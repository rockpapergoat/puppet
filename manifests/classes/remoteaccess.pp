# enable remote desktop, ssh
# added exec to set access for specific user, depends on user

class remoteaccess {
# ard
    file { "/etc/RemoteManagement.launchd":
		ensure => present,
        owner => root,
        group => wheel,
        mode => 644,
		content => "enabled",
		alias => "ardpref",
    }
	exec { subscribe-ardpref:
	  require => User["remote"],
	  command => "/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -clientopts -setreqperm -reqperm yes -setmenuextra -menuextra yes -configure -access -on -users remote -privs -all -restart -agent -menu",
	  logoutput => true,
	  subscribe => File["/etc/RemoteManagement.launchd"]
	}


# ssh
    file { "/System/Library/LaunchDaemons/ssh.plist":
        owner => root,
        group => wheel,
        mode => 644,
    }
    service { "com.openssh.sshd":
        #provider => launchd,
        enable => true,
        ensure => running,
        require => File["/System/Library/LaunchDaemons/ssh.plist"],
        }
}