class yumgroup::conflicts-workstation {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::conflicts-workstation::mandatory
  include yumgroup::conflicts-workstation::default
  include yumgroup::conflicts-workstation::optional

}
