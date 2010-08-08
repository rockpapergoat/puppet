user { 'morty2':
    ensure => 'absent',
    home => '/Users/morty2',
    uid => '1200',
    gid => '20',
    shell => '/bin/bash',
    password => 'morty222'
}
