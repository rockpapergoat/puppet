# Adding to classes/motd.pp

class motd {
  file { "/etc/motd":
    content => "let's get in here...\n",
  }
}

