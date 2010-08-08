# Adding to classes/motd.pp
$tpath = '/Users/n8/tsp/_presentations/puppet/puppet_git/templates'
class motd {
  file { "/etc/motd":
    content => template("$tpath/motd.erb"),
  }
}

