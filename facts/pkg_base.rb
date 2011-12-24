#!/usr/bin/ruby
require 'facter'
require 'puppet'

$ip = Facter.value(:ipaddress).split('.')[2]

facter.add("pkg_base") do
		setcode do
			$pkg_base = "http://nate.adullmoment.com/puppet"
		end
end

Facter.list.each { |fact| p "#{fact}" => Facter.value(fact)}