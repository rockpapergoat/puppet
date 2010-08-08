# /etc/puppet/manifests/site.pp

import "classes/*"
#import "modules/*"

node default {
	#include sudo
	include motd
	#include mcx
	#include apps
	#include tspadmin
	#include srcfolder
	#include folders
	#include remoteaccess
	#include remoteadmin
	#include swupd
	#include dumb
	#include ssh
	#include notification
	#include ident
}

node 'derwin.adullmoment.com' {
	#include motd
	include notification
	include ssh
	#include elvis
}