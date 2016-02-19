class yumgroup::nepali-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::nepali-support::mandatory
  include yumgroup::nepali-support::default
  include yumgroup::nepali-support::optional

}
