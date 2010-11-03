# /etc/puppet/manifest/classes/tspadmin.pp
# 100813, added exec to hide user
# this class does the following:
# 1. adds a pre-configured user.plist to the directory stash
# 2. adds the password hash to the hash dir
# 3. restarts directoryservice, if needed
# 4. runs an exec to hide the new user from the loginwindow, etc.

$server = "ellipse.adullmoment.com"

class tspadmin {

  include loginwindow, directoryservice

  $services_to_restart = $macosx_consoleuid ? {
    "0" => [
      Service["com.apple.DirectoryServices"],
      Service["com.apple.loginwindow"]
    ],
    default => [ Service["com.apple.DirectoryServices"] ]
  }

  file {
    "/var/db/dslocal/nodes/Default/users/tsp.plist":
      source => "puppet://$server/puppet/tsp.plist",
      mode   => 400,
      notify => $services_to_restart;
    # The text file containing the account password hash.
    "128EF9CE-564C-4BA8-B190-07AD22E6AF33":
      path   => "/var/db/shadow/hash/128EF9CE-564C-4BA8-B190-07AD22E6AF33",
      source => "puppet://$server/puppet/128EF9CE-564C-4BA8-B190-07AD22E6AF33",
      mode   => 400;
  }
	exec { "hide_admin":
		command => "defaults write /Library/Preferences/com.apple.loginwindow Hide500Users -bool true; defaults write /Library/Preferences/com.apple.loginwindow HiddenUsersList -array tsp",
		path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin",
		#refreshonly => true,
	}
  
}
