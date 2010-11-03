#100916, vcsrepo testing

vcsrepo { "/tmp/repo":
  ensure => present,
  provider => git
}