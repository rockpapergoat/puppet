# /etc/puppet/manifest/classes/tspadmin.pp

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
      source => "http://nate.adullmoment.com/puppet/tsp.plist",
      mode   => 400,
      notify => $services_to_restart;
    # The text file containing the account password hash.
    "128EF9CE-564C-4BA8-B190-07AD22E6AF33":
      path   => "/var/db/shadow/hash/128EF9CE-564C-4BA8-B190-07AD22E6AF33",
      source => "http://nate.adullmoment.com/puppet/128EF9CE-564C-4BA8-B190-07AD22E6AF33",
      mode   => 400;
  }
  
}
