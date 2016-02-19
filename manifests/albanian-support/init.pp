class yumgroup::albanian-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::albanian-support::mandatory
  include yumgroup::albanian-support::default
  include yumgroup::albanian-support::optional

}
