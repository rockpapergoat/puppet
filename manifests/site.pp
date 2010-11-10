# /etc/puppet/manifests/site.pp

import "classes/*"
#import "modules/*"

node default {
	include base
	include apps
	include ident
	include motd
	include remoteaccess
	include swupd_server
	include versioncontrol
}

node 'derwin.adullmoment.com' {
	#include motd
	#include notification
	#include sshd
	#include check_hostname
	include swupd
	include host_names
	#include elvis
}