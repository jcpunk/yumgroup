class yumgroup::manx-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::manx-support::mandatory
  include yumgroup::manx-support::default
  include yumgroup::manx-support::optional

}
