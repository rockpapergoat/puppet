# /etc/puppet/manifests/site.pp

import "classes/*"
#import "modules/*"

node default {
    #include sudo
    #include motd
	#include mcx
    #include apps
    #include tspadmin
    #include srcfolder
	include folders
	#include ssh
	include remoteaccess
	include remoteadmin
}
