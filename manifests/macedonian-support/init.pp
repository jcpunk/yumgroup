class yumgroup::macedonian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::macedonian-support::mandatory
  include yumgroup::macedonian-support::default
  include yumgroup::macedonian-support::optional

}
