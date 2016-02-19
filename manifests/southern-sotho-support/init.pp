class yumgroup::southern-sotho-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::southern-sotho-support::mandatory
  include yumgroup::southern-sotho-support::default
  include yumgroup::southern-sotho-support::optional

}
