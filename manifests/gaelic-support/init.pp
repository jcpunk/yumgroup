class yumgroup::gaelic-support {

  if $::osfamily == 'RedHat' and $::operatingsystem == 'Fedora' {
    fail('This module has not been verified under Fedora.')
  } elsif $::osfamily != 'RedHat' {
    fail('This module has not been verified under an osfamily other than RedHat')
  }

  include yumgroup::gaelic-support::mandatory
  include yumgroup::gaelic-support::default
  include yumgroup::gaelic-support::optional

}
