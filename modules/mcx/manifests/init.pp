# cf. http://flybyunix.carlcaum.com/2010/04/managing-mcx-with-puppet-on-snow.html
class mcx {
   exec {"System in Local Directory":
     command => "dscl localhost -create /Local/Default/Computers/$fqdn ENetAddress $macaddress_en0 RealName $fqdn RecordName $fqdn",
     unless => "dscl localhost -list /Local/Default/Computers | grep $fqdn";
   }

   mcx {"/Computers/$fqdn":
     content => template('mcx/mcx.erb'),
     ensure => present,
     require => Exec["System in Local Directory"];
  }
}