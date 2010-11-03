# 100816
# hostname testing

host { "derwin":
    ip => $ipaddress,
    ensure => 'present',
}
