class yumgroup::burmese-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::burmese-support::mandatory
  include yumgroup::burmese-support::default
  include yumgroup::burmese-support::optional

}
