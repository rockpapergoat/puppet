class srcfolder {
    file { "/src/":
         ensure => directory,
         owner => "admin",
         group => "staff",
         mode => 644,
    }
}
