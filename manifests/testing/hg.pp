# Convenience component for installing pkg.dmg packages.
define pkg_deploy($sourcedir = false)
{
  $sourcedir_real = $sourcedir ? {
    false => "http://nate.adullmoment.com/pkgs",
    default => $sourcedir
  }
  package { $name:
    ensure => installed,
    provider => pkgdmg,
    source => "$sourcedir_real/$name"
  }
}


class hg {
  case $operatingsystem {
    Darwin: {
      pkg_deploy { "mercurial163.dmg":
        sourcedir => "http://nate.adullmoment.com/pkgs/mercurial163.dmg",
      }   
    }
  }
}