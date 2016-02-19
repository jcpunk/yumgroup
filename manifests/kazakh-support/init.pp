class yumgroup::kazakh-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::kazakh-support::mandatory
  include yumgroup::kazakh-support::default
  include yumgroup::kazakh-support::optional

}
