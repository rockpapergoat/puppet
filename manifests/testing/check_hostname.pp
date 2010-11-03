# 100812, hostname enforcement testing

class check_hostname {
	exec { "scutil --set LocalHostName $hostname; scutil --set HostName $hostname; scutil --set ComputerName $hostname":
	path => ["/bin", "/usr/bin", "/usr/sbin"],
	onlyif =>  "test `/usr/sbin/scutil --get LocalHostName` != 'derwin'",
	}
}