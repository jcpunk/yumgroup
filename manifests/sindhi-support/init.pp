class yumgroup::sindhi-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::sindhi-support::mandatory
  include yumgroup::sindhi-support::default
  include yumgroup::sindhi-support::optional

}
