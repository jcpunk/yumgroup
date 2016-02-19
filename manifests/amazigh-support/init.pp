class yumgroup::amazigh-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::amazigh-support::mandatory
  include yumgroup::amazigh-support::default
  include yumgroup::amazigh-support::optional

}
