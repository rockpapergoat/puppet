# /etc/puppet/manifests/site.pp

import "classes/*"

node default {
    include sudo
    include motd
    include johnny6
    include johnny5
    include apps
    #include tspadmin
    #include srcfolder
}
