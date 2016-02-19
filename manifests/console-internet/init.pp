class yumgroup::console-internet {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::console-internet::mandatory
  include yumgroup::console-internet::default
  include yumgroup::console-internet::optional

}
