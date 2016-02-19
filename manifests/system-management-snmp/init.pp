class yumgroup::system-management-snmp {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::system-management-snmp::mandatory
  include yumgroup::system-management-snmp::default
  include yumgroup::system-management-snmp::optional

}
