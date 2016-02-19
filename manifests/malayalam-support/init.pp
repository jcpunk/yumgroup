class yumgroup::malayalam-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::malayalam-support::mandatory
  include yumgroup::malayalam-support::default
  include yumgroup::malayalam-support::optional

}
