class yumgroup::hardware-monitoring {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::hardware-monitoring::mandatory
  include yumgroup::hardware-monitoring::default
  include yumgroup::hardware-monitoring::optional

}
