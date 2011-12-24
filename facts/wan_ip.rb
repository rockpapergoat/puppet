require 'open-uri'
#require 'facter'

Facter.add("wan_ip") do
  setcode do
    $wan_ip = open('http://ifconfig.me/ip').string.chomp 
    end
  end


#p Facter.to_hash["wan_ip"]