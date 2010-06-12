class ssh {
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