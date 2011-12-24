#!/usr/bin/ruby
# 110906, set fact returning contents of ard fields

require 'facter'
require 'puppet'


Facter.add("mac_ard1") do
		setcode do
			$mac_ard1 = %x(/usr/bin/defaults read /Library/Preferences/com.apple.RemoteDesktop Text1).chomp
		end
end

#p Facter.value("mac_ard1")
#Facter.list.each { |fact| p "#{fact}" => Facter.value(fact)}
p Facter.to_hash