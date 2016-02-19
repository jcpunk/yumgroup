class yumgroup::oriya-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::oriya-support::mandatory
  include yumgroup::oriya-support::default
  include yumgroup::oriya-support::optional

}
