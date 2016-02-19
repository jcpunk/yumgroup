class yumgroup::dial-up {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::dial-up::mandatory
  include yumgroup::dial-up::default
  include yumgroup::dial-up::optional

}
