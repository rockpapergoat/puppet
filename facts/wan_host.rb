require 'open-uri'

Facter.add("wan_host") do
  setcode do
    $wan_host = open('http://ifconfig.me/host').string.chomp 
    end
  end
