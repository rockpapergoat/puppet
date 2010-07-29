# 100728
class ident {
	file {'/tmp/ident':
		content => $sp_serial_number,
		ensure => present,
		}

}