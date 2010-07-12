#!/bin/bash
# use git to update /etc/puppet
git=/usr/local/git/bin/git
# git pull git@github.com:tspgit/puppet.git master
$git clone http://github.com/tspgit/puppet.git /etc/pconfig/
