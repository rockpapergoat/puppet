#!/usr/bin/ruby
# 101107, set swupd_catalog based on OS major version
# added swupdserver fact
# should use a hash and block to assign values here based on mapping

require 'rubygems'
require 'facter'
require 'puppet'

$vers = Facter.value(:macosx_productversion_major)

Facter.add("mac_swupd_catalog") do
	if $vers == "10.6"
		setcode do
			$swupd_catalog = "index-leopard-snowleopard.merged-1.sucatalog"
		end
	elsif $vers == "10.5"
		setcode do
			$swupd_catalog = "index-leopard.merged-1.sucatalog"
		end
	elsif $vers == "10.4"
		setcode do
			$swupd_catalog = "index.sucatalog"
		end
end

Facter.add("mac_swupdserver") do
  if $domain == "adullmoment.com"
      setcode do
        $swupdserver = "http://swupd.adullmoment.com:8088"
      end
    end
  end
end

Facter.list.each { |fact| p "#{fact}" => Facter.value(fact)}