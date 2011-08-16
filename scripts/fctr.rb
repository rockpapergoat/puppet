#!/usr/bin/env ruby
# cf. http://www.devco.net/archives/2010/01/14/better_way_to_query_facts.php
# cf. http://groups.google.com/group/puppet-users/browse_thread/thread/7ad523ae15884c35?fwc=1

require 'rubygems'
require 'facter'
require 'puppet'
 
Puppet.parse_config
unless $LOAD_PATH.include?(Puppet[:libdir])
    $LOAD_PATH << Puppet[:libdir]
end
 
facts = Facter.to_hash
 
if ARGV.size > 0
    ARGV.each do |f|
        puts "#{f} => #{facts[f]}" if facts.include?(f)
    end
else
    facts.each_pair do |k,v|
        puts("#{k} => #{v}")
    end
end