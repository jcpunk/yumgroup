class yumgroup::tetum-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::tetum-support::mandatory
  include yumgroup::tetum-support::default
  include yumgroup::tetum-support::optional

}
