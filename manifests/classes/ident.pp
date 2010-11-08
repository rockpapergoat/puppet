# 100728
# 101103, moved to /etc
class ident {
	file {'/etc/ident':
		content => $sp_serial_number,
		ensure => present,
		}
}