class yumgroup::punjabi-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::punjabi-support::mandatory
  include yumgroup::punjabi-support::default
  include yumgroup::punjabi-support::optional

}
